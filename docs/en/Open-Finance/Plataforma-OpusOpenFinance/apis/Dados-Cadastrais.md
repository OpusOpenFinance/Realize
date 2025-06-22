---
layout: default
title: "Customers"
parent: "Data Sharing"
nav_order: 1
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/apis/Dados-Cadastrais/"
---

# Personal Data API

The *integration layer* API that returns *customers data* for clients and their representatives, including identification data, financial qualification information, details about registered representatives, and the financial relationship between the client and the transmitting financial institution.

This API separates individual clients from legal entities, providing distinct *endpoints* for each type.

Before any *endpoint* is triggered, the platform has already verified the authenticity of the request's origin, the validity, expiration date, permissions, and scope of the consent sent by the receiver, ensuring that the request is authorized.

In general, there are *endpoints* for:

- Retrieving identification records for individuals;
- Retrieving qualification records for individuals;
- Retrieving relationship records with the financial institution and representatives of the individual;
- Retrieving identification records for legal entities;
- Retrieving qualification records for legal entities;
- Retrieving relationship records with the financial institution and representatives of the legal entity.

## *Open API Specification* of the API

The documentation for the Personal Data API to be built in the *integration layer* can be found [**here**][API-Dados-cadastrais].

To download the YAML/OAS file containing the API specification, click [**here**](en-accounts-2-4-1.yml){:download="en-accounts-2-4-1.yml"}.

{: .highlight}
Some internet browsers, such as *Chrome*, may occasionally flag the download operation of YAML files as *not secure*, requiring manual unlocking by the user. However, these files are text-based and do not pose any risk.

[API-Dados-cadastrais]: ../../../../swagger-ui/index.html?api=en-Dados-cadastrais
