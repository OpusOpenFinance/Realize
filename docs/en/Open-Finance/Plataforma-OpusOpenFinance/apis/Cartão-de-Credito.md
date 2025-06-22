---
layout: default
title: "Credit Cards API"
parent: "Data Sharing"
nav_order: 2
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/apis/Cartão-de-Credito/"
---

# Credit Cards API

The *integration layer* API that returns information about *postpaid payment accounts* held by transmitting institutions for their clients, including data such as denomination, product, brand, credit limits, payment transaction details, and invoices.

This API does not separate between individual and corporate clients.

Before any *endpoint* is triggered, the platform has already verified the authenticity of the request's origin, the validity, expiration date, permissions, and scope of the consent sent by the receiver, ensuring that the request is authorized.

There are endpoints for:

- Retrieving the list of postpaid accounts held by the client at the transmitting institution;
- Retrieving identification data of a credit card;
- Retrieving the list of invoices for a card;
- Retrieving the list of transactions for a card;
- Retrieving the credit limits for a card;
- Retrieving the list of recent transactions (last 7 days) for a card.

## *Open API Specification* of the API

The documentation for the Credit Card API to be built in the *integration layer* can be found [**here**][API-Cartão-de-crédito].

To download the YAML/OAS file containing the API specification, click [**here**](en-credit-cards-2-3-1.yml){:download="en-credit-cards-2-3-1.yml"}.

{: .highlight}
Some internet browsers, such as *Chrome*, may occasionally flag the download operation of YAML files as *not secure*, requiring manual unlocking by the user. However, these files are text-based and do not pose any risk.

[API-Cartão-de-crédito]: ../../../../swagger-ui/index.html?api=en-Cartão-de-crédito
