---
layout: default
title: "Investment Funds API"
parent: "Investments"
nav_order: 4
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/Integração/dados-investimentos/dados-fundos/"
---

# Investment Funds API

Integration layer API that returns data on investment funds held by the client at the Data Transmitting Institution.

In general, there are *endpoints* for:

- Retrieving records of operations of the investment funds held by the client;
- Retrieving the identification records of the investment funds;
- Retrieving the position records in the investment funds;
- Retrieving transaction history records for the last 12 months;
- Retrieving history records for the last seven days.

## *Open API Specification* of the API

The documentation for the investment funds API to be built in the integration layer can be found [**here**][API-Investment-Funds]

To download the YAML/OAS file containing the API specification, click [**here**](../../apis/dados-investimento/oas-funds.yml){:download="oas-funds.yml"}.

{: .highlight}
Some internet browsers, such as *Chrome*, may occasionally flag the download operation of YAML files as *not secure*, requiring manual unlocking by the user. However, these files are text-based and do not pose any risk.

[API-Investment-Funds]: ../../../../../swagger-ui/index.html?api=en-data-funds
