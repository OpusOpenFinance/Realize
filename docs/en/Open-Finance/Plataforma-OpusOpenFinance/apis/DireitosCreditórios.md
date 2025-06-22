---
layout: default
title: "Invoice Financing API"
parent: "Credit Operations"
nav_order: 4
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/apis/DireitosCreditórios/"
---

# Invoice Financing

This *integration layer* API returns information on credit operations of the *invoice financing* type or, more generally, *receivables discounting*, carried out by transmitting institutions for its clients. The returned information includes data such as denomination, modality, contract number, fees, term, installments, payments (at least for the last 12 months), amortizations, guarantees, charges, and interest rates.

This API does not separate between individuals and legal entities.

Before any *endpoint* of the *integration layer* is triggered, the platform has already verified the authenticity of the request's origin and the validity, expiration date, permissions, and scope of the consent sent by the receiver, ensuring that the request is authorized.

There are *endpoints* for:

- Retrieving the list of receivables discounting contracts consented by the client;
- Retrieving the details of a receivables discounting contract;
- Retrieving the installment schedule of a receivables discounting contract;
- Retrieving the list of guarantees linked to a receivables discounting contract;
- Retrieving the payment details of a receivables discounting contract.

## *Open API Specification* of the API

The documentation for the Invoice Financing API to be built in the *integration layer* can be found [**here**][API-Direitos-Creditórios].

To download the YAML/OAS file containing the API specification, click [**here**](en-invoice-financings-2-3-0.yml){:download="en-invoice-financings-2-3-0.yml"}.

{: .highlight}
Some internet browsers, such as *Chrome*, may occasionally flag the download operation of YAML files as *not secure*, requiring manual unlocking by the user. However, these files are text-based and do not pose any risk.

[API-Direitos-Creditórios]: ../../../../swagger-ui/index.html?api=en-Direitos-Creditórios
