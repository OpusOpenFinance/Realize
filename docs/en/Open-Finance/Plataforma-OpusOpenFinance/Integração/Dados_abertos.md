---
layout: default
title: "Open Data"
parent: "Platform Integration"
nav_order: 1
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/Integração/Dados_abertos/"
---

# Open Data

The open data profile corresponds to the public data that participating institutions in Open Finance must disclose to the ecosystem. To learn more about the open data profile, [see here][Perfis-Open-Finance-Brasil].
The open data profile is required for all participants in the ecosystem, and the data must be accessible through APIs. The Opus Open Finance Platform implements all of these APIs.

## Integration

The integration of the open data profile does not require connection to the client's back-end systems, as financial institutions rarely maintain this information structured and stored in a central repository. Furthermore, the information regarding open data - service channels and financial products offered by the institution - usually does not change very frequently.

In this way, although the platform has been built maintaining an architectural standard that allows integration with back-end systems that may eventually maintain this information, the most practical and simple way to publish this data in Open Finance is by providing static files already in JSON format. Thus, to respond to requests received via API, the platform will simply copy the JSON file directly to the response message to be sent to the requester.

Therefore, in a standard deployment, it will only be necessary to create a JSON file for each type of request. Naturally, JSON files will only be needed for those financial products offered by the institution.

{: .important}
>If your institution has a structured registration system for its service channels and financial products offered to the market, there are two integration possibilities:
>
>1. Modify the system in question to generate JSON files in the format required by the regulator (or develop a specific program that extracts this information and generates this file). This is the simplest and therefore recommended option;
>2. Directly integrate the Opus Open Finance Platform with the back-end system by developing specialized connectors. In this case, specific documentation for the construction of these connectors will be provided during the deployment process.

## Open Data APIs

### Service channels

The service channels API provides information about the institution's service channels. The service channels provided for in the regulation are:

1. Physical branches
2. Electronic service channels
3. Telephone service channels
4. Banking agents
5. Self-service terminals (ATMs)

### Products

The product APIs refer to the products that the institution offers. Possible types:

1. Accounts
2. Loans
3. Financings
4. Account overdraft
5. Invoice financings
6. Credit card
7. Investment
8. Insurance
9. Acquiring
10. Capitalization bonds
11. Pension
12. Exchange

## JSON File for Integration

Below are the regulatory APIs related to Open Data and examples of JSON files to fulfill the calls to these APIs.

{: .important}
>The APIs are presented here only to illustrate the complete scenario of fulfilling the regulatory requirements related to Open Data. Furthermore, in the description of each API, the possible valid values for all keys of the response JSON are presented.
>
>The Opus Open Finance Platform **already implements** these APIs and therefore it is not necessary to build them.
>
>To integrate our solution, it will only be necessary to build JSON response files for each API, and the examples presented are great starting points for this construction.
>
>We reiterate that it is necessary to provide JSON files only for the financial products actually offered by the institution.

|API                               |Open API Link          |JSON Example Link           |
|------------------------|:---------------------:|:--------------------------:|
|Service channels        |[Link][Channels]       |[JSON][Channels-JSON]       |
|Accounts                |[Link][Accounts]       |[JSON][Accounts-JSON]       |
|Loans                   |[Link][Loans]          |[JSON][Loans-JSON]          |
|Financings              |[Link][Financings]     |[JSON][Financings-JSON]     |
|Account Overdraft       |[Link][Unarranged]     |[JSON][Unarranged-JSON]     |
|Invoice financings      |[Link][Inv-financings] |[JSON][Inv-financings-JSON] |
|Credit card             |[Link][CreditCard]     |[JSON][CreditCard-JSON]     |
|Investments             |[Link][Investments]    |[JSON][Investments-JSON]    |
|Insurance               |[Link][Insurance]      |[JSON][Insurance-JSON]      |
|Acquiring               |[Link][Acquiring]      |[JSON][Acquiring-JSON]      |
|Capitalization bonds    |[Link][Capitalization] |[JSON][Capitalization-JSON] |
|Pension                 |[Link][Pension]        |[JSON][Pension-JSON]        |
|Exchange                |[Link][Exchange]       |[JSON][Exchange-JSON]       |

[Acquiring]: ../../../../swagger-ui/index.html?api=en-open-data-acquiring
[Accounts]: ../../../../swagger-ui/index.html?api=en-open-data-accounts
[Capitalization]: ../../../../swagger-ui/index.html?api=en-open-data-capitalization
[Channels]: ../../../../swagger-ui/index.html?api=en-open-data-channels
[CreditCard]: ../../../../swagger-ui/index.html?api=en-open-data-credit-cards
[Exchange]: ../../../../swagger-ui/index.html?api=en-open-data-exchange
[Financings]: ../../../../swagger-ui/index.html?api=en-open-data-financings
[Insurance]: ../../../../swagger-ui/index.html?api=en-open-data-insurance
[Investments]: ../../../../swagger-ui/index.html?api=en-open-data-investments
[Inv-financings]: ../../../../swagger-ui/index.html?api=en-open-data-invoice-financings
[Loans]: ../../../../swagger-ui/index.html?api=en-open-data-loans
[Pension]: ../../../../swagger-ui/index.html?api=en-open-data-pension
[Unarranged]: ../../../../swagger-ui/index.html?api=en-open-data-unarranged

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
