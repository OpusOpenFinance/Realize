---
layout: default
title: "Onboarding ITP"
parent: "ITP"
nav_order: 1
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Open-Finance-Brasil/PerfisOFB/OnboardingITP/"
---

# Onboarding de um ITP

Para se tornar uma instituição apta a realizar **Iniciações de Transação de Pagamento (ITP)**, é necessário cumprir uma série de pré-requisitos e requisitos organizados em 3 macro-etapas:

1. **Autorização e regulação com o Banco Central**
2. **Etapa pré-homologatória do Open Finance**
3. **Etapa homologatória do Open Finance**

Ao concluir essas etapas, a instituição estará apta a realizar pagamentos em produção.

---

## Visão Geral para se Tornar um ITP

| **Etapa**                     | **Descrição**                                                                                     | **Sistemas Envolvidos**            | **Observações**                                                                                                                                                                |
|-------------------------------|---------------------------------------------------------------------------------------------------|-------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **1 - Autorização e Regulação** | Compliance e jurídico                                                                            | Banco Central                      | Instituição deve estar autorizada a funcionar pelo Banco Central como Instituição de Pagamento.                                                                              |
| **2 - Pré-homologatória**      | Cumprir pré-requisitos relacionados ao Pix e ao Open Finance.                                    | Pix e Open Finance                 | Inclui certificações, publicações no Portal do Cidadão e no PDF de participantes Pix.                                                                                       |
| **3 - Homologatória**          | Processo de onboarding no Open Finance para validação final.                                     | Open Finance                       | Realização de testes em produção e aprovação mínima exigida para operação no ecossistema.                                                                                   |

![Etapas para se tornar ITP](./images/etapas.png)

---

## Detalhamento das Etapas

### **Etapa 1 - Autorização e Regulação**

O propósito dessa documentação não é entrar no detalhe de como obter uma autorização do Banco Central, a qual contém uma complexidade extremamente alta. Dessa forma, focaremos em regras de negócio para essa etapa. Caso você ou sua instituição tenha interesse em se tornar uma autorizada, podemos indicar parceiros especialistas mais voltados para a realidade jurídica para atingir esse objetivo.

Atualmente, o Banco Central incluiu como Instituição de Pagamento mais uma modalidade, o Iniciador de Transação de Pagamento (ITP). Como o próprio nome já induz, é uma modalidade 100% vinculada ao Open Finance. Nessa perspectiva, pode-se entender que dentro desse ecossistema existem dois tipos diferentes de ITPs, os que são autorizados pelo Banco Central e os ITPs que já possuem autorização da governança de Open Finance para iniciar sua atividades de iniciação de pagamento.

> Um ITP autorizado para funcionar pelo Banco Central ainda não pode iniciar chamadas de iniciação de pagamento, é necessário ainda ter êxito nas etapas 2 e 3 na sequência.

Em geral, a autorização do ITP é focada para instituições que procuram uma regulação mais simplificada, contudo outros tipos de instituições que já são autorizadas tem mais facilidade na hora de se tornar um ITP.

> Para o processo de autorização, é fundamental que sua área de compliance seja envolvida.

### **Etapa 2 - Pré-homologatória**

#### Pré-requisitos

Assim que a instituição já está autorizada para funcionar como ITP, é necessário estar de acordo com os pré-requisitos que antecedem a etapa homologatória do ITP no Open Finance. Os pré-requisitos são divididos em 4:

1. [**Certificação OpenID RP**](../OFB-Certificações.html):
   - Deve estar publicada no [site oficial da OpenID](https://openid.net/certification/#FAPI_RPs).
   - A Opus pode ajudar a concluir o processo em poucas semanas.

2. **Publicação no Portal do Cidadão**:
   O Portal do Cidadão apresenta todas as instituições habilitadas na modalidade de participação do Open Finance. Para que seja possível iniciar o processo de homologação, é necessário estar listado dentro desse portal na modalidade instituição prestadora de serviço de iniciação de pagamento.
   Para a instituição ser publicada é necessário que toda a configuração no diretório de participantes (nos ambientes de homologação e de produção) seja feito. Assim, automaticamente, a instituição será listada nessa categoria.

   > Dentro da implantação do produto, a Opus conduz todo o processo de configuração do diretório, para você não se preocupar.

3. **Certificação e publicação de APIs Payment** (se a instituição também for Detentora de Conta):
    Para o caso de a instituição ser participantes do Open Finance como Detentora de Conta também, é necessário estar de acordo com toda a regulação desse perfil antes mesmo de poder começar a homologação como ITP. O perfil de Detentora de Conta exige a publicação da [certificação OpenID OP](../OFB-Certificações.html) e que suas APIs estejam devidamente publicadas.

4. **Publicação no PDF de participantes do Pix**:
    Pode-se dizer que esse pré-requisito é o caminho crítico, pois é o mais longo e está vinculado ao arranjo Pix. [O PDF do Pix](https://www.bcb.gov.br/estabilidadefinanceira/participantespix) (acesso a direita) é uma lista com todas as instituições participantes do Pix e, para ser homologado como ITP, é necessário que a sua instituição esteja presente nela listado na coluna Iniciação de Transação de Pagamento.
    Para fazê-lo, sua instituição precisa demonstrar interesse para o Banco Central, através de um formulário de adesão ao Pix. [O processo está descrito na página oficial do Banco Central](https://www.bcb.gov.br/estabilidadefinanceira/participantespix). A tabela sintetiza os principais formulários.
    O processo se divide em três etapas para cadastro dentro do arranjo Pix:

#### **Etapa 1 _PIX_- Cadastral**

Consiste no envio de documentos necessários para cadastrar a instituição no arranjo Pix:

| **Modalidade da Instituição**        | **Formulário 1** | **Formulário 2** | **Formulário 3** |
|--------------------------------------|------------------|------------------|------------------|
| **Iniciador sem acesso ao DICT**     | [#1](https://www.bcb.gov.br/content/estabilidadefinanceira/pix/Formulario_adesao-Iniciadores.docx)               | [#2](https://www.bcb.gov.br/content/estabilidadefinanceira/pix/Formulario_produtos_e_servicos-Iniciador.docx)              | [#3](https://www.bcb.gov.br/content/estabilidadefinanceira/pix/Adesao_Questionarios/Questionario_autoavaliacao_seguranca-Iniciador-Sem_acesso_DICT.docx)               |
| **Iniciador com acesso indireto ao DICT** | [#1](https://www.bcb.gov.br/content/estabilidadefinanceira/pix/Formulario_adesao-Iniciadores.docx)               | [#2](https://www.bcb.gov.br/content/estabilidadefinanceira/pix/Formulario_produtos_e_servicos-Iniciador.docx)               | [#3](https://www.bcb.gov.br/content/estabilidadefinanceira/pix/Adesao_Questionarios/Questionario_autoavaliacao_seguranca-Iniciador-Com_Acesso_indireto_DICT.docx)               |
| **Iniciador com acesso direto ao DICT**  | [#1](https://www.bcb.gov.br/content/estabilidadefinanceira/pix/Formulario_adesao-Iniciadores.docx)               | [#2](https://www.bcb.gov.br/content/estabilidadefinanceira/pix/Formulario_produtos_e_servicos-Iniciador.docx)               | [#3](https://www.bcb.gov.br/content/estabilidadefinanceira/pix/Adesao_Questionarios/Questionario_autoavaliacao_seguranca-Iniciador-Com_Acesso_direto_DICT.docx)               |

- **Envio:** Os formulários devem ser enviados para **<pix-operacional@bcb.gov.br>**.
- **Assinatura:** É necessário que os documentos sejam assinados por um estatutário da instituição.

---

#### **Etapa 2 _PIX_- Homologatória**

É a etapa referente aos testes que devem ser executados para ser incluído como participante Pix. Essa etapa possui vários testes, todavia é necessário fazer apenas aqueles que são direcionados para o Iniciador de Transação de Pagamentos, caso os demais sejam facultativos para a instituição.

![Testes Pix](./images/etapas_pix.png)

O teste obrigatório é apenas a Validação da prestação de serviço de iniciação de pagamento. Além dele, existem outros dois, caso sua instituição ofereça QR Code ou tenha acesso ao DICT, os testes são Validação de QR Codes e Testes DICT, respectivamente.

#### **Etapa 3 _PIX_- Etapa de operação restrita**

Para Iniciador, não há necessidade de operação restrita. Uma vez que a etapa cadastral e homologatória sejam concluídas, sua instituição já será listada na lista de participantes pix.

---

### **Etapa 3 - Onboarding ITP**

Por fim, chega-se na parte 100% relacionada ao ecossistema de Open Finance, conhecido por Onboarding ITP. Essa etapa está muito bem descrita dentro do portal do desenvolvedor com o [guia de onboarding ITP](https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17378706/Guia+de+Onboarding+ITP).

Em suma, a nova Iniciadora terá que realizar 6 pagamentos em produção e obter 4 sucessos dentro desses 6. Isso é o suficiente para a instituição estar apta para iniciar sua operação em produção. Dos 6 testes, sua instituição pode escolher quem serão as 6 Detentoras de Conta para fazer os pagamentos.

> A Opus pode recomendar as 6 Detentoras de Conta.

Ao final do processo, será divulgado em um [Informa](https://mailchi.mp/afc5cfe5cc93/open-banking-informa-10116651?e=447d7abb9f) que o processo foi concluído e que a sua instituição está apta para começar pagamentos em produção.

> Durante todo a etapa 3, a Opus estará ombro a ombro com a sua instituição para facilitar e dar celeridade ao processo homologatório.

A Opus estará ao lado da instituição durante toda a etapa homologatória, agilizando o processo e oferecendo suporte técnico.

---

## Acesso ao DICT

O acesso ao DICT não é obrigatório, mas limita os tipos de iniciação de pagamento permitidos. Sem o acesso, apenas o **Pix Manu** é viável, no qual a instituição já possui as informações de conta e agência do correntista.

### **Tipos de Iniciação de Pagamento Pix**

| **Tipo**       | **Descrição**                                                                 | **Necessário Acesso ao DICT?** |
|----------------|:-------------------------------------------------------------------------------:|:--------------------------------:|
| **Manu**       | Inserção manual de dados da conta transacional.                              | Não                            |
| **DICT**       | Inserção manual de chave Pix.                                                | Sim                            |
| **QRDN**       | QR Code dinâmico.                                                            | Sim                            |
| **QRES**       | QR Code estático.                                                            | Sim                            |
| **INIC**       | Beneficiário previamente conhecido pelo Iniciador.                           | Não                            |

Se sua instituição deseja ter acesso ao DICT, a Opus pode indicar fornecedores que oferecem o serviço **DICT-as-a-Service**.
