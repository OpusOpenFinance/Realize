---
layout: default
title: "Pagamentos"
parent: "Integração da Plataforma"
nav_order: 3
has_children: true
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Integração/CamadaIntegraçãoPagamentos/"
---

# Integração com Pagamentos

A integração da **Plataforma Opus Open Finance** com o pilar de pagamentos do _Open Finance Brasil_ é necessária para o perfil de _Detentor de Conta_. Essa integração permite que a plataforma direcione requisições de pagamento para os sistemas de retaguarda necessários para o fluxo do pagamento.

Os pagamentos via _Open Finance Brasil_ são realizados a partir de instituições financeiras atuando com o perfil de **iniciador de transação de pagamento (ITP)**. Em um cenário típico, esse pagamento é realizado em duas etapas. Na primeira, o _ITP_ envia ao _Detentor de Conta_ um pedido para _criação de consentimento de pagamento_. É nessa etapa que o cliente da instituição financeira autoriza a realização do pagamento e o _consentimento de pagamento_ é criado pelo _Detentor de Conta_ e sua identificação única é retornada para o _ITP_. Na segunda etapa, de _liquidação do pagamento_, o _ITP_ envia o pedido de realização de pagamento fazendo referência à identificação única daquele _consentimento de pagamento_ criado, e o pagamento é efetivado.

Tanto para a etapa de _criação de consentimento de pagamento_ quanto para a de _liquidação do pagamento_ são necessárias integrações da **Plataforma Opus Open Finance** com os sistemas de retaguarda da instituição financeira onde o produto está sendo implantado. Tais integrações são realizadas através da construção da _camada de integração de pagamentos_. Essa camada deve implementar uma _API REST_, descrita mais adiante neste documento, para que a plataforma possa acioná-la quando realiza o tratamento de uma requisição de pagamento.

Embora a regulação do _Open Finance Brasil_ preveja diversos meios de pagamento no futuro, atualmente apenas o **Pix** é suportado.

{:.importante}
A _criação de consentimento de pagamento_ normalmente envolve a interação com dois tipos de sistemas da instituição financeira: sistemas de retaguarda, como conta corrente e o módulo de pagamentos _Pix_, e sistemas de canais digitais de atendimento, como _mobile banking_ e _internet banking_. A _camada de integração de pagamentos_ lida exclusivamente com os sistemas de retaguarda. Os aspectos referentes à integração com canais digitais de atendimento, tipicamente para obter a autorização do cliente através de autenticação, está descrita na seção de integração [_App e Web_][App-e-Web] desta documentação.

## Camada de Integração de Pagamentos

A imagem abaixo esquematiza a interação da **Plataforma Opus Open Finance** com a _camada de integração de pagamentos_ através da _API REST_.

![Camada-Integração][Imagem-Camada-Integração]

---

## Camada de integração de Pagamento

A _camada de integração de pagamento_ deve implementar uma _API REST_ que disponibiliza cinco diferentes operações, duas que serão chamadas durante a etapa de _criação do consentimento de pagamento_ e três que serão chamadas durante a etapa de _liquidação do pagamento_:

_Etapa de criação do consentimento de pagamento:_

1. _Discovery de conta_: Responsável por encontrar as contas associadas ao correntista que está requisitando uma iniciação de pagamento.
2. _Validação de consentimento_: Durante a criação do consentimento, o regulatório do _Open Finance Brasil_ exige que certas validações sejam realizadas sobre os dados do pagamento, conforme detalhado mais adiante neste documento. Essa validação é necessária para evitar erros de pagamento após a aprovação do consentimento.

_Etapa de liquidação do pagamento:_

1. _Criar uma iniciação de pagamento_: Requisição para disparar o pagamento vinculado ao consentimento previamente criado. Tipicamente, é nesse momento que a chamada ao _Pix_ é realizada.
2. _Retornar o status de um pagamento_: Operação para retornar o status de pagamento, de acordo com a [máquina de estados](https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/347078805/M+quina+de+Estados+-+v4.0.0+-+SV+Pagamentos) do _Open Finance Brasil_.
3. _Cancelar um pagamento_: Para o caso de pagamentos agendados, essa é a operação que permite cancelar o agendamento via Open Finance.

## API de integração

A descrição da API que deve ser implementada pela _camada de integração de pagamento_, que é a API _Payment Initiation_, pode ser encontrada [**aqui**.][API-pagamento].

Para fazer o download do arquivo YAML/OAS que contém a especificação da API clique [**aqui**](../apis/payment-integration-0-1-0.yml){:download="../apis/payment-integration-0-1-0.yml"}.

## Cenários de Pagamentos a Serem Cobertos pela Integração

Na implementação da integração de pagamentos, é necessário cobrir a criação e a consulta de pagamentos em cada um dos cenários descritos a seguir.

Para pagamentos retidos para análise (status "PDNG" do _Open Finance Brasil_) ou agendados, também é necessário contemplar a possibilidade de revogação do pagamento.

### Cenários por Tipo de Cliente Pagador

- **Pessoa Física (PF)**
- **Pessoa Jurídica (PJ)** _(quando suportado pela retaguarda da instituição financeira)_

### Cenários por Data de Efetivação do Pagamento

- **Instantâneo**: Pagamentos a serem efetivados no mesmo dia da solicitação.
- **Agendado**: Pagamentos a serem efetivados em data futura.

### Cenários por Forma de Iniciação do Pagamento

- **MANU**: Iniciado por inserção manual dos dados bancários.
- **INIC**: Iniciado pelo recebedor (_creditor_).
- **DICT**: Iniciado por uso de chave _Pix_.
- **QRES**: Iniciado por QR Code Estático.
- **QRDN**: Iniciado por QR Code Dinâmico.

### Cenários por Tipo de Tentativa de Pagamento

O Arranjo _Pix_ possibilita retentativas para pagamentos específicos, como o _Pix Automático_.  
Ao realizar um _Pix_ pelo Open Finance, a integração deve tratar adequadamente as seguintes tentativas de pagamento:

- **Solicitação Original:** A primeira tentativa de execução do pagamento, que acontece para todos os pagamentos.
- **Retentativa Extra-dia:** Apenas suportada para pagamentos específicos (ex.: _Pix Automático_). É uma nova tentativa realizada em um dia diferente da tentativa original.

{:.importante}
⚠️ A retentativa intra-dia (realizada no mesmo dia), quando aplicável, deve ser identificada e tratada pelo sistema de retaguarda da instituição financeira.

---

## Como Identificar os Cenários

A seguir, é apresentada uma visão mais técnica das regras de identificação os cenários de pagamentos descritos anteriormente.

A análise de campos abaixo é feita para o payload da requisição de criação de pagamentos.

### Como Identificar o Tipo de Usuário Cliente Pagador

| Campo `consent.businessDocumentType.document.identification` | Interpretação |
| :----------------------------------------------------------- | ------------- |
| Ausente                                                      | Usuário PF    |
| Preenchido                                                   | Usuário PJ    |

{:.nota}
ℹ️ Independentemente do tipo de usuário, seu CPF estará disponível no campo `consent.loggedUser.document.identification`.

### Como Identificar a Data de Efetivação do Pagamento

O campo que define a data do pagamento varia conforme o tipo de pagamento (campo `paymentType`):

#### Caso `paymentType` seja `PAYMENT_CONSENT`

| Campo `consent.payment.schedule`          | Cenário     | Data de Pagamento                      |
| :---------------------------------------- | :---------- | :------------------------------------- |
| **Ausente**                               | Instantâneo | Data atual                             |
| Possui subcampo `single`                  | Agendado    | `consent.payment.schedule.single.date` |
| Possui subcampo **diferente** de `single` | Agendado    | `requestBody.data.date`                |

#### Caso `paymentType` seja `PAYMENT_RECURRING_CONSENT`

| Campo `requestBody.data.date` | Cenário     | Data de Pagamento       |
| :---------------------------- | :---------- | :---------------------- |
| É data **atual**              | Instantâneo | Data atual              |
| É data **futura**             | Agendado    | `requestBody.data.date` |

### Como Identificar a Forma de Iniciação e o Recebedor (creditor)

A **forma de iniciação** do pagamento é determinada pelo valor do campo `requestBody.data.localInstrument`.  
A forma de identificação do **recebedor (creditor)** varia conforme o tipo de iniciação informado.

A tabela abaixo resume os campos para a identificação cada cenário:

| Forma de Iniciação | Campos utilizados para identificar o recebedor                     |
| :----------------- | :----------------------------------------------------------------- |
|        MANU        | `creditorAccount` (objeto com informações bancárias)               |
|        INIC        | `proxy` (Chave _Pix_)                                                |
|        DICT        | `proxy` + `creditorAccount`                                        |
|        QRES        | `proxy` + `creditorAccount` + `qrCode` (String com o QR Code lido) |
|        QRDN        | `proxy` + `creditorAccount` + `qrCode`                             |

{:.importante}
⚠️ Quando houver mais de uma forma de identificação, deve-se validar a consistência entre elas.
Exemplo: a chave _Pix_ deve se referir à mesma conta indicada no campo creditorAccount.

{:.nota}
ℹ️ Todos os campos mencionados na tabela acima estão localizados dentro de `requestBody.data`.

### Como Identificar a Tentativa de Pagamento

| Campo `requestBody.data.originalRecurringPaymentId` | Interpretação         |
| :-------------------------------------------------- | :-------------------  |
| Ausente                                             | Tentativa Original    |
| Preenchido com o ID do pagamento original           | Retentativa Extra-dia |

## Validações Obrigatórias para Pagamentos

As validações a seguir devem ser implementadas na rota específica para a validação de dados do pagamento.

Para cada validação, o erro listado na resposta da integração deve apresentar no campo `code` o código correspondente, conforme indicado.

### Validação do Valor Máximo do Pagamento

**ℹ️ Observações:**

- Validação realizada para pagamentos do tipo `PAYMENT_CONSENT` (valor do campo `requestBody.paymentType`).
- Todos os demais campos abaixo estão localizados dentro de `requestBody.data.payment`.

#### Regra

O valor da transação (campo `amount`) deve estar abaixo:

- Do limite estabelecido pela Instituição Detentora (caso exista).
- Do valor máximo absoluto, em reais, de `999999999.99` (isto é, até 9 dígitos antes do ponto decimal e 2 após).
- O valor **não** pode ser igual ao limite máximo.

**Código de erro:** `VALOR_ACIMA_LIMITE`

## Validações de QR Code

**ℹ️ Observações:**

- Validações realizadas para pagamentos do tipo `PAYMENT_CONSENT` (valor do campo `requestBody.paymentType`).
- Todos os demais campos abaixo estão localizados dentro de `requestBody.data.payment`.

### Regras Gerais

1. O tipo do QR Code deve ser coerente com a forma de iniciação do pagamento (campo `details.localInstrument`):
    - Se a forma de iniciação for **QRES**, o QR Code deve ser **Estático**.
    - Se a forma de iniciação for **QRDN**, o QR Code deve ser **Dinâmico**.
    - **Código de erro:** `QRCODE_INVALIDO`

#### Caso o QR Code seja **Estático**

1. O valor presente no QR Code Estático deve ser o mesmo informado no payload do pagamento (campo `amount`).
    - **Código de erro:** `VALOR_INVALIDO`

2. A chave _Pix_ presente no QR Code Estático deve ser idêntica à chave _Pix_ informada no payload do pagamento (campo `details.proxy`).
    - **Código de erro:** `QRCODE_INVALIDO`

#### Caso o QR Code seja **Dinâmico**

1. O status do QR Code Dinâmico deve ser válido para uso.
    - **Código de erro:** `QRCODE_INVALIDO`

## Integração - Dúvidas Frequentes - FAQ

### Sobre Descoberta de Recursos

Dúvidas referentes ao [discovery de recursos no Opus Open Finance](/pt-br/integração-plugin/consent/readme.md#Discovery-de-recursos-no-Opus-Open-Banking).

**O que é um "recurso"?**

No Open Finance, "recursos" são componentes de dados ou serviço que pode ser consumido por APIs, respeitando os critérios de segurança e consentimento.
Na prática, um "recurso" pode ser uma conta transacional, um cartão, um investimento, entre outros.

**O que devo retornar nos campos `key` de `resourceLegacyId` e `resourceName`?**

Os campos `resourceLegacyId` e `resourceName` funcionam como identificadores internos na retaguarda da instituição financeira e devem ser definidos para uso nessa camada. Ambos são estruturados como listas de pares _key-value_ para oferecer suporte a identificadores compostos.

Para o `resourceLegacyId`, caso o ID seja simples, é suficiente retornar algo como:

```json
"resourceLegacyId": [
    { "key": "id", "value": "<valor do id>" }
]
```

Já para o `resourceName`, é importante retornar valores que ajudem o usuário final a reconhecer o recurso. Por exemplo, no caso de uma conta bancária, pode-se retornar algo como:

```json
"resourceName": [
    { "key": "agencia", "value": "<número da agência>" },
    { "key": "conta", "value": "<número da conta>" }
]
```

**O usuário não possui contas a serem retornadas. Devo retornar erro ou lista vazia?**

Caso o usuário não possua contas, o retorno deve ser sucesso (HTTP 200) com uma lista vazia de recursos (`{ "data": { "resources": [] } }`).

**Na descoberta de contas do fluxo de pagamentos, qual conta deve vir como "selecionada por padrão"?**

Se o campo `debtorAccount` do consentimento estiver preenchido com uma conta válida para pagamentos, essa conta deve ser marcada como "selecionada por padrão" (`"defaultSelected": true`). Independentemente disso, todas as contas disponíveis para pagamento devem ser retornadas.

### Sobre Validação dos Dados de Pagamento

**O que deve ser validado na rota específica para a validação de dados do pagamento?**

Conferir as [validações obrigatórias para pagamentos](/pt-br/integração-plugin/recomendacoes/validacoes-pagamentos/readme.md).

### Sobre Solicitações de Criação de Pagamentos

**Como identificar a conta escolhida pelo portador para realizar o débito?**

Após a aprovação do consentimento de pagamento, a lista `consent.resources` enviada no payload da requisição de pagamento sempre conterá um único recurso, representando a conta selecionada.  
O campo `consent.debtorAccount` estará também sempre preenchido com as informações da conta escolhida.

**Onde encontrar a data do pagamento para cada cenário ou tipo de pagamento?**

Conferir [como identificar a data do pagamento](/pt-br/integração-plugin/recomendacoes/cenarios-pagamentos/readme.md#Como-Identificar-a-Data-de-Efetivação-do-Pagamento)

**A retaguarda da instituição financeira precisa suportar Agendamentos Recorrentes?**

Não. A **Plataforma Opus Open Finance** realizará uma requisição separada para cada data de recorrência.

Por exemplo, ao receber uma requisição de agendamento recorrente por 5 meses, um débito por mês, a plataforma solicitará para a retaguarda da instituição financeira 5 agendamento independentes.  
A data de cada agendamento deve ser determinada conforme descrito em [como identificar a data do pagamento](/pt-br/integração-plugin/recomendacoes/cenarios-pagamentos/readme.md#Como-Identificar-a-Data-de-Efetivação-do-Pagamento).

[App-e-Web]: ./App-e-Web.html
[Imagem-Camada-Integração]: ./images/Integração-Pagamento.png
[API-pagamento]: ../../../../swagger-ui/index.html?api=payment-integration
