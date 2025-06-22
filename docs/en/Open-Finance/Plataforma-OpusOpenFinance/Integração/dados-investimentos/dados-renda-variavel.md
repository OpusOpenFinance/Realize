---
layout: default
title: "Variable Income API"
parent: "Investments"
nav_order: 3
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/Integração/dados-investimentos/dados-renda-variavel/"
---

# Variable Income API

Integration layer API that returns data on variable income held by the client at the Data Transmitting Institution.

In general, there are *endpoints* for:

- Retrieving records of operations of the variable income securities held by the client;
- Retrieving the identification records of the variable income securities;
- Retrieving the position records in the variable income securities;
- Retrieving transaction history records for the last 12 months;
- Retrieving history records for the last seven days.

## *Open API Specification* of the API

The documentation for the variable income API to be built in the integration layer can be found [**here**][API-Variable-Income]

To download the YAML/OAS file containing the API specification, click [**here**](../../apis/dados-investimento/oas-variable-incomes.yml){:download="oas-variable-incomes.yml"}.

{: .highlight}
Some internet browsers, such as *Chrome*, may occasionally flag the download operation of YAML files as *not secure*, requiring manual unlocking by the user. However, these files are text-based and do not pose any risk.

[API-Variable-Income]: ../../../../../swagger-ui/index.html?api=en-data-variable-incomes
