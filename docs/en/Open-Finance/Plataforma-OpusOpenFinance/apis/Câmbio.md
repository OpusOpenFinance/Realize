---
layout: default
title: "Foreign Exchange API"
parent: "Data Sharing"
nav_order: 6
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/apis/Câmbio/"
---

# Foreign Exchange API

The *integration layer* API that returns information on *Foreign Exchange* operations conducted by transmitting institutions for their clients, including data such as contracted operation details, operation value in both local and foreign currencies, operation classification, delivery method, VET, and, when applicable, value to be settled. Changes to the operation will also be shared, if any, with the modified information.

The scope of sharing includes operations negotiated in the primary market, spot (including species, prepaid cards, debit cards), and forward (including ACC, ACE, or foreign exchange hedge).

Operations contracted and made available in the institution's electronic channels should be shared, even in cases where the operation has not yet been registered with the Central Bank. If the contracting event is canceled in the Foreign Exchange System, meaning the operation was voided, the operation is no longer within the scope of exposure. Once the registration occurs, the operation must be complemented with the registered operation number and any events that took place.

Events related to the linking of operations are not within the scope of exposure.

The exposure will be provided for each foreign exchange operation contracted by the client.

This API does not separate between individual and corporate clients.

Before any *endpoint* is triggered, the platform has already verified the authenticity of the request's origin, the validity, expiration date, permissions, and scope of the consent sent by the receiver, ensuring that the request is authorized.

There are endpoints for:

- Retrieving the list of foreign exchange operations held by the client at the transmitting institution;
- Retrieving data of a foreign exchange operation;
- Retrieving data on events related to a foreign exchange operation.

## *Open API Specification* of the API

The documentation for the Foreign Exchange API to be built in the *integration layer* can be found [**here**][API-Câmbio].

To download the YAML/OAS file containing the API specification, click [**here**](en-exchange-1-0-0.yml){:download="en-exchange-1-0-0.yml"}.

{: .highlight}
Some internet browsers, such as *Chrome*, may occasionally flag the download operation of YAML files as *not secure*, requiring manual unlocking by the user. However, these files are text-based and do not pose any risk.

[API-Câmbio]: ../../../../swagger-ui/index.html?api=en-Câmbio
