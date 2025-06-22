---
layout: default
title: "Loans API"
parent: "Credit Operations"
nav_order: 1
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/apis/Empréstimo/"
---

# Loans

The *integration layer* API that returns information on credit operations of the *loan* type, maintained by transmitting institutions for their clients, including data such as denomination, modality, contract number, fees, term, installments, payments (at least for the last 12 months), amortizations, guarantees, charges, and interest rates.

This API does not separate between individuals and legal entities.

Before any *endpoint* of the *integration layer* is triggered, the platform has already verified the authenticity of the request's origin and the validity, expiration date, permissions, and scope of the consent sent by the receiver, ensuring that the request is authorized.

There are *endpoints* for:

- Retrieving the set of loan contract information maintained by the client at the transmitting institution;
- Retrieving the details of a loan contract;
- Retrieving the installment schedule of a loan contract;
- Retrieving the list of guarantees linked to a loan contract;
- Retrieving the payment details of a loan contract.

## *Open API Specification* of the API

The documentation for the Loans API to be built in the *integration layer* can be found [**here**][API-Empréstimo].

To download the YAML/OAS file containing the API specification, click [**here**](en-loans-2-4-0.yml){:download="en-loans-2-4-0.yml"}.

{: .highlight}
Some internet browsers, such as *Chrome*, may occasionally flag the download operation of YAML files as *not secure*, requiring manual unlocking by the user. However, these files are text-based and do not pose any risk.

[API-Empréstimo]: ../../../../swagger-ui/index.html?api=en-Empréstimo
