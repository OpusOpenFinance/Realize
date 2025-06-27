---
layout: default
title: "Compartilhamento de Dados"
parent: "Integração da Plataforma"
nav_order: 2
has_children: true
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Integração/CamadaIntegração/"
---

# Compartilhamento de dados

O perfil de participação de *transmissor de dados*, no pilar de compartilhamento de dados do *Open Finance Brasil*, exige que a instituição financeira seja capaz de atender a requisições de dados vindas de outras instituições participantes. Antes que uma outra instituição financeira possa realizar requisições de dados referentes aos clientes da transmissora, esse cliente deve ter previamente autorizado o compartilhamento de seus dados, o que é feito através de um **consentimento de compartilhamento de dados**.

Conforme já apresentado, a **Plataforma Opus Open Finance** realiza a gestão de consentimentos ativos, e também verifica a validade das requisições recebidas. Essa verificação inclui avaliar se o pedido de dados enviado pela instituição receptora - que sempre inclui um identificador de consentimento - é um consentimento ativo e também se ele autoriza o compartilhamento dos dados que estão sendo requisitados. Por exemplo, um cliente em tese poderia compartilhar seus dados cadastrais e de cartão de crédito, mas não seus dados de conta corrente ou de empréstimos.

Uma vez que a verificação foi realizada e o pedido foi validado, a plataforma realizará uma chamada à *camada de integração* para obter os dados que estão sendo requisitados. É justamente essa camada de integração, responsável pela interação com os sistemas de retaguarda da instituição transmissora, que precisa ser construída para que a plataforma possa entrar em operação.

Para realizar essa integração e manter uma clara divisão de responsabilidades, a plataforma define um conjunto de APIs REST que são ativadas por ela para atender requisições associadas a cada produto financeiro oferecido pela instituição. As APIs são divididas pelos diferentes produtos financeiros cobertos pelo escopo do *Open Finance Brasil*.

A figura abaixo apresenta o esquema geral do modelo.

---

![Imagem da Camada de Integração][Imagem da Camada de Integração]

---

Vale ressaltar que a instituição não necessariamente oferece todos os produtos previstos pelo escopo completo do *Open Finance Brasil* e, portanto, ela só precisará implementar o subconjunto de APIs associado aos produtos que ela oferece.

Algumas das características principais da camada de integração a ser construída são:

- Não precisa (e nem deve) entrar no mérito da validade das requisições, uma vez que a plataforma já realizou todas as validações necessárias;
- Deve ser capaz de atender a várias requisições simultaneamente (em  tese, não há limite para o número de requisições por segundo que deve ser atendido);
- Deve oferecer tempo de resposta compatível com o nível de serviço exigido pela regulação. Os tempos de resposta máximos exigidos pelo regulatório para cada tipo de requisição podem ser encontrados [**na documentação oficial do Open Finance Brasil**][Tempos de Resposta];

{: .importante}
Deve-se considerar que a Plataforma Opus Open Finance reservará até 40% do tempo de resposta para aa validações e atendimento de cada requisição.

Apresentamos a seguir os diferentes tipos de dados envolvidos no atendimento a requisições dos vários produtos financeiros cobertos pelo escopo completo do *Open Finance Brasil*, devidamente atualizado para sua última versão. Cada seção abaixo, por sua vez, referencia uma página de documentação específica que detalha esses dados e apresenta a API da *camada de integração* que deve ser construída para integrar a **Plataforma Opus Open Finance** aos sistemas de retaguarda da instituição financeira.

{: .nota}
>Na documentação do *Open Finance Brasil* são definidas APIs referentes a **consentimento** (*consents*) e **recursos** (*resources*). No que tange ao consentimento, a plataforma realiza toda a gestão, tornando transparente esse conceito para a camada de  integração. Já o conceito de *recurso*, no universo do *Open Finance Brasil*, diz respeito a cada instância de produto financeiro que o cliente possui junto a uma instituição financeira. Por exemplo, se um cliente possui 3 cartões de crédito com uma instituição financeiro, isso equivale a 3 recursos distintos.
>
>Dessa forma, uma das requisições mais comuns realizadas pelas instituições receptoras é a consulta de todos os produtos financeiros que o cliente final mantém com a instituição financeira transmissora (desde que o consentimento cedido pelo cliente seja abrangente o suficiente). Nesse caso, a plataforma já realiza o devido tratamento, ativando a camada de integração para cada produto específico de maneira a atender adequadamente esse tipo de requisição.

## Dados Cadastrais

Dados cadastrais de clientes e de seus representantes, incluindo dados de identificação, de qualificação financeira, informações sobre representantes cadastrados e sobre o relacionamento financeiro do cliente com a instituição transmissora dos dados.
Possui separação entre pessoa natural e pessoa jurídica.

Informações detalhadas sobre os *endpoints* e dados necessários para atender esse tipo de requisição podem ser encontrados na [página específica para dados cadastrais][Dados-Cadastrais].

## Cartão de Crédito

Informações de contas de pagamento pós-paga mantidas nas instituições transmissoras por seus clientes, incluindo dados como denominação, produto, bandeira, limites de crédito, informações sobre transações de pagamento efetuadas e faturas. Não possui separação entre pessoa natural e pessoa jurídica.

Informações detalhadas sobre os *endpoints* e dados necessários para atender esse tipo de requisição podem ser encontrados na [página específica para cartão de crédito][Cartão-crédito].

## Contas

Informações de contas de depósito à vista, contas de poupança e contas de pagamento pré-pagas mantidas nas instituições transmissoras por seus clientes, incluindo dados de identificação da conta, saldos, limites e transações. Não possui segregação entre pessoa natural e pessoa jurídica.

Informações detalhadas sobre os *endpoints* e dados necessários para atender esse tipo de requisição podem ser encontrados na [página específica para contas][Contas]

## Operações de crédito

No caso de operações de crédito o cliente efetua o compartilhamento por agrupamento de produtos ou seja, todas as modalidades de operações de crédito são compartilhadas no escopo do *Open Finance Brasil*. Abaixo temos uma listagem das operações:

- [Empréstimos][Empréstimo]
- [Financiamentos][Financiamento]
- [Adiantamento a depositantes][Adiantamento]
- [Direitos creditórios descontados][Direitos-Creditórios]

Informações detalhadas sobre os dados necessários para cada uma dessas operações podem ser encontrados na [página específica para operações de crédito][Crédito].

## Investimentos

Os investimentos também são divididos em diferentes produtos. Abaixo tem-se uma lista dos produtos possíveis de investimento assim como o link leva ao documento detalhado sobre os dados do produto em questão:

- [Renda fixa bancária](./dados-investimentos/dados-renda-fixa-bancaria.html)
- [Renda fixa crédito](./dados-investimentos/dados-renda-fixa-credito.html)
- [Renda variável](./dados-investimentos/dados-renda-variavel.html)
- [Títulos do tesouro direto](./dados-investimentos/dados-tesouro.html)
- [Fundos de investimento](./dados-investimentos/dados-fundos.html)

Informações detalhadas sobre os dados necessários para este produto podem ser encontrados [página específica para investimentos](./OOF-Investimento.html).

## Câmbio

Informações de operações de Câmbio realizadas nas instituições transmissoras por seus clientes, incluindo dados como informações da operação contratada, valor da operação em moeda nacional e moeda estrangeira, classificação da operação, forma de entrega, VET e, quando aplicável, valor a liquidar. Também serão compartilhados os eventos de alteração da operação, caso existam, com as informações modificadas. Não separa pessoa natural e pessoa jurídica.

Informações detalhadas sobre os dados necessários para este produto podem ser encontrados na [página específica para câmbio][Câmbio].

<!-- **gambia**: [API-Commons](../../../../swagger-ui/index.html?api=Opus-Commons) -->

<!-- Definição de links utilizados nesta página -->

[Imagem da Camada de Integração]: ./images/CamadaIntegração.png
[Tempos de Resposta]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17957025/Refer+ncia
<!-- [Guia APIs]: https://openfinancebrasil.atlassian.net/wiki/pages/viewpageattachments.action?pageId=17378841&preview=%2F17378841%2F17378864%2F%5B23-06%5DGuia_GT_Implementa%C3%A7%C3%A3oAPIs.pdf -->
[Dados-Cadastrais]: ../apis/Dados-Cadastrais.html
[Cartão-crédito]: ../apis/Cartão-de-Credito.html
[Contas]: ../apis/Contas.html
[Crédito]: ./OOF-Crédito.html
[Câmbio]: ../apis/Câmbio.html
[Empréstimo]: ../apis/Empréstimo.html
[Financiamento]: ../apis/Financiamento.html
[Adiantamento]: ../apis/Adiantamento.html
[Direitos-Creditórios]: ../apis/DireitosCreditórios.html
