---
layout: default
title: "Treasury Bonds API"
parent: "Investments"
nav_order: 5
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/Integração/dados-investimentos/dados-tesouro/"
---

# Treasury Bonds API

Integration layer API that returns data on *treasury bonds* held by the client at the Data Transmitting Institution.

{: .note}
We are talking here about *Tesouro Direto*. A brief explanation about this kind of treasury bonds can be found [here][OOF-Investimentos].

In general, there are *endpoints* for:

- Retrieving records of operations of the treasury bonds held by the client;
- Retrieving the identification records of the treasury bonds;
- Retrieving the position records in the treasury bonds;
- Retrieving transaction history records for the last 12 months;
- Retrieving history records for the last seven days.

## *Open API Specification* of the API

The documentation for the treasury bonds API to be built in the integration layer can be found [**here**][API-Treasury-Bonds]

To download the YAML/OAS file containing the API specification, click [**here**](../../apis/dados-investimento/oas-treasury-bonds.yml){:download="oas-treasury-bonds.yml"}.

{: .highlight}
Some internet browsers, such as *Chrome*, may occasionally flag the download operation of YAML files as *not secure*, requiring manual unlocking by the user. However, these files are text-based and do not pose any risk.

[API-Treasury-Bonds]: ../../../../../swagger-ui/index.html?api=en-data-treasury-bonds
[OOF-Investimentos]: ../OOF-Investimento.html
