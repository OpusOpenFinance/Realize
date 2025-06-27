---
layout: default
title: "Dados Abertos"
parent: "Integração da Plataforma"
nav_order: 1
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Integração/Dados_abertos/"
---

# Dados Abertos

O perfil de dados abertos corresponde aos dados públicos que as instituições participantes do Open Finance devem divulgar ao ecossistema. Para saber mais informações sobre o perfil de dados abertos, [veja aqui][Perfis-Open-Finance-Brasil].
O perfil de dados abertos é exigido para todos os participantes do ecossistema, e os dados devem ser acessíveis através de APIs. A Plataforma Opus Open Finance implementa a totalidade dessas APIs.

## Integração

A integração do perfil de dados abertos não exige conexão com os sistemas de retaguarda do cliente, uma vez que raramente as instituições financeiras mantém essas informações estruturadas e armazenadas em um repositório central. Além disso, as informações referentes aos dados abertos - canais de atendimento e produtos financeiros ofertados pela instituição - normalmente não mudam com muita frequência.

Dessa forma, embora a plataforma tenha sido construída mantendo um padrão de arquitetura que permite a integração com sistemas de retaguarda que eventualmente mantém essas informações, a forma mais prática e simples de publicar esses dados no Open FInance é disponibilizando arquivos estáticos já no formato JSON. Assim, para responder às requisições recebidas via API, a plataforma simplesmente copiará o arquivo JSON diretamente para a mensagem de resposta a ser enviada para o requisitante.

Portanto, em uma implantação padrão será necessária apenas a criação de uma arquivo JSON para cada tipo de requisição. Naturalmente, serão necessários arquivos JSON  apenas para aqueles produtos financeiros oferecidos pela instituição.

A Plataforma Opus Open Finance possui um parâmetro de configuração para indicar a localização desses arquivos estáticos, e esse parâmetro será configurado durante o processo de implantação da solução.

{: .importante}
>Caso sua instituição possua um sistema de cadastro estruturado de seus canais de atendimento e produtos financeiros oferecidos ao mercado, há duas possibilidades de integração:
>
>1. Alterar o sistema em questão para gerar arquivos JSON no formato exigido pelo regulatório (ou desenvolver um programa específico que extraia essas informações e gere esse arquivo). Essa é a opção mais simples e, portanto, a recomendada;
>2. Integrar diretamente a Plataforma Opus Open Finance ao sistema de retaguarda desenvolvendo conectores especializados. Nesse caso, durante o processo de implantação será fornecida documentação específica para a construção desses conectores.

## APIs de dados abertos

### Canais de atendimento

A API de canais de atendimento disponibiliza informações sobre os canais de atendimento da instituição. Os canais de atendimento previstos na regulação são:

1. Agências físicas
2. Canais de atendimento eletrônico
3. Canais de atendimento telefônico
4. Correspondentes bancários da IF
5. Terminais de autoatendimento

### Produtos

As APIs de produtos são referentes aos produtos que a instituição oferece. Tipos possíveis:

1. Contas
2. Empréstimos
3. Financiamentos
4. Direitos creditórios descontados (antecipação de recebíveis)
5. Adiantamento a depositantes (cheque especial)
6. Cartão de crédito
7. Investimento
8. Seguros
9. Adquirência/Credenciamento
10. Títulos de capitalização
11. Previdência
12. Câmbio

## Arquivo JSON para integração

São apresentadas abaixo as APIs regulatórias referentes a Dados Abertos e exemplos de arquivos JSON para o atendimento às chamadas dessas APIs.

{: .importante}
>As APIs são apresentadas aqui apenas para ilustrar o cenário completo do atendimento às exigências regulatórias referentes a Dados Abertos. Além disso, na descrição de cada API são apresentados os possíveis valores válidos para todas as chaves do JSON de resposta.
>
>A Plataforma Opus Open Finance **já implementa** essas APIs e, portanto, não é necessário construí-las.
>
>Para integrar nossa solução será necessário apenas construir arquivos JSON de resposta a cada API, e os exemplos apresentados são ótimos pontos de partida para essa construção.
>
>Voltamos a ressaltar que é necessário disponibilizar arquivos JSON apenas para os produtos financeiros efetivamente oferecidos pela instituição.

|API                               |Link Open API          |Link Exemplo JSON           |
|----------------------------------|:---------------------:|:--------------------------:|
|Canais de atendimento             |[Link][Channels]       |[JSON][Channels-JSON]       |
|Contas                            |[Link][Accounts]       |[JSON][Accounts-JSON]       |
|Empréstimos                       |[Link][Loans]          |[JSON][Loans-JSON]          |
|Financiamentos                    |[Link][Financings]     |[JSON][Financings-JSON]     |
|Adiantamento a depositantes       |[Link][Unarranged]     |[JSON][Unarranged-JSON]     |
|Direitos creditórios descontados  |[Link][Inv-financings] |[JSON][Inv-financings-JSON] |
|Cartão de crédito                 |[Link][CreditCard]     |[JSON][CreditCard-JSON]     |
|Investimentos                     |[Link][Investments]    |[JSON][Investments-JSON]    |
|Seguros                           |[Link][Insurance]      |[JSON][Insurance-JSON]      |
|Adquirência/Credenciamento        |[Link][Acquiring]      |[JSON][Acquiring-JSON]      |
|Títulos de capitalização          |[Link][Capitalization] |[JSON][Capitalization-JSON] |
|Previdência                       |[Link][Pension]        |[JSON][Pension-JSON]        |
|Câmbio                            |[Link][Exchange]       |[JSON][Exchange-JSON]       |

[Acquiring]: ../../../../swagger-ui/index.html?api=open-data-acquiring
[Accounts]: ../../../../swagger-ui/index.html?api=open-data-accounts
[Capitalization]: ../../../../swagger-ui/index.html?api=open-data-capitalization
[Channels]: ../../../../swagger-ui/index.html?api=open-data-channels
[CreditCard]: ../../../../swagger-ui/index.html?api=open-data-credit-cards
[Exchange]: ../../../../swagger-ui/index.html?api=open-data-exchange
[Financings]: ../../../../swagger-ui/index.html?api=open-data-financings
[Insurance]: ../../../../swagger-ui/index.html?api=open-data-insurance
[Investments]: ../../../../swagger-ui/index.html?api=open-data-investments
[Inv-financings]: ../../../../swagger-ui/index.html?api=open-data-invoice-financings
[Loans]: ../../../../swagger-ui/index.html?api=open-data-loans
[Pension]: ../../../../swagger-ui/index.html?api=open-data-pension
[Unarranged]: ../../../../swagger-ui/index.html?api=open-data-unarranged

[Channels-JSON]: ../apis-dados-abertos/DadosAbertos-Channels.html
[Accounts-JSON]: ../apis-dados-abertos/DadosAbertos-Accounts.html
[Loans-JSON]: ../apis-dados-abertos/DadosAbertos-Loans.html
[Financings-JSON]: ../apis-dados-abertos/DadosAbertos-Financings.html
[Unarranged-JSON]: ../apis-dados-abertos/DadosAbertos-Unarranged.html
[Inv-financings-JSON]: ../apis-dados-abertos/DadosAbertos-Invoice.html
[CreditCard-JSON]: ../apis-dados-abertos/DadosAbertos-CreditCard.html
[Investments-JSON]: ../apis-dados-abertos/DadosAbertos-Investments.html
[Insurance-JSON]: ../apis-dados-abertos/DadosAbertos-Insurance.html
[Acquiring-JSON]: ../apis-dados-abertos/DadosAbertos-Acquiring.html
[Capitalization-JSON]: ../apis-dados-abertos/DadosAbertos-Capitalization.html
[Pension-JSON]: ../apis-dados-abertos/DadosAbertos-Pension.html
[Exchange-JSON]: ../apis-dados-abertos/DadosAbertos-Exchange.html

[Perfis-Open-Finance-Brasil]: ../../Open-Finance-Brasil/PerfisOFB/Dados-abertos.html
