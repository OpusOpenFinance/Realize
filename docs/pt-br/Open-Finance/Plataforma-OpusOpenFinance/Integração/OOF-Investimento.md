---
layout: default
title: "Investimentos"
parent: "Compartilhamento de Dados"
nav_order: 5
has_children: true
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Integração/OOF-Investimento/"
---

# Investimentos

Todas as modalidades de investimento são passíveis de compartilhamento de dados no escopo do *Open Finance Brasil*.

O consentimento para compartilhamento de dados efetuado pelo cliente é realizado por agrupamento de produtos. Isso significa que, se o cliente conceder um consentimento de compartilhamento de dados para "*Investimentos*", todas as modalidades estarão incluídas.

As diferentes modalidades de investimento são:

- Renda fixa bancária
- Renda fixa crédito
- Renda variável
- Fundos de investimento
- Títulos do tesouro direto

Dado que cada uma dessas modalidades possui suas próprias características, a *camada de integração* deve implementar cinco APIs distintas, considerando seus diferentes tipos de dados.

Na documentação oficial do *Open Finance Brasil* há uma tabela que resume os investimentos associadas a cada modalidade, bem como a API que deve se responsabilizar por ela, e que pode ser visualizada [aqui][Tabela-Investimento-OFB].

Todas as APIs compartilham algumas características importantes definidas pelo regulatório:

**Tempestividade dos dados para APIs de investimento:**

- Até uma hora para as APIs Renda Fixa Bancária, Renda Fixa Crédito, Títulos do Tesouro Direto e Fundos de Investimento
- Para a API Renda Variável, devido a frequente alteração dos preços e a dinâmica de funcionamento do produto (ordens de compra e venda), serão expostas a posição e movimentações do fechamento do dia anterior (d-1).

**Recursos que devem ser incluídos no compartilhamento:**

- Investimentos ativos em um período de até 12 meses anterior ao inicio da vigência do consentimento
- Investimentos que venceram, foram resgatados ou tiveram sua titularidade ou custódia transferida em um período de até 12 meses anterior ao inicio da vigência do consentimento
- Investimentos contratados durante o período de vigência do consentimento
- Investimentos que venceram, foram resgatados ou tiveram sua titularidade ou custódia transferida durante o período de vigência do consentimento

**Recursos que não devem ser incluídos no compartilhamento:**

- Investimentos que venceram ou foram resgatados em um período maior que 12 meses anterior ao inicio da vigência do consentimento
- Investimentos que pertencem a clientes que estão sob algum tipo de bloqueio conforme políticas internas das instituições
- Investimentos com aplicação e resgate automático

Abaixo você encontra o link para cada uma das APIs de Investimento:

|API                        |Link                     |
|---------------------------|:-----------------------:|
|Renda fixa bancária        |[Link](./dados-investimentos/dados-renda-fixa-bancaria.html)|
|Renda fixa crédito         |[Link](./dados-investimentos/dados-renda-fixa-credito.html) |
|Renda variável             |[Link](./dados-investimentos/dados-renda-variavel.html)     |
|Títulos do tesouro direto  |[Link](./dados-investimentos/dados-tesouro.html)            |
|Fundos de investimento     |[Link](./dados-investimentos/dados-fundos.html)             |

[Tabela-Investimento-OFB]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/102957060/Orienta+es+-+DC+Investimentos
