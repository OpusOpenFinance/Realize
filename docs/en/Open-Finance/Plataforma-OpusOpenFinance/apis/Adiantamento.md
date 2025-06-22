---
layout: default
title: "Unarranged Accounts Overdraft API"
parent: "Credit Operations"
nav_order: 3
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/apis/Adiantamento"
---

# Unarranged Accounts Overdraft API

The *integration layer* API that returns information on credit operations of the *arranged overdraft* type, maintained by transmitting institutions for their clients, including data such as denomination, modality, contract number, fees, term, installments, payments (at least for the last 12 months), amortizations, guarantees, charges, and remunerative interest rates.

{: .note}
Although the API is named "***Unarranged*** *Accounts Overdraft*," it actually refers to a concept known in Brazil as "*cheque especial*" ("*special check/cheque*"), which is equivalent to the "***arranged overdraft***" available in many financial markets worldwide. In other words, the customer makes a withdrawal or payment through their checking account while having a negative balance, up to a pre-approved limit previously agreed upon with the financial institution.

This API does not separate between individual and corporate clients.

Before any *integration layer* endpoint is triggered, the platform has already verified the authenticity of the request's origin, the validity, expiration date, permissions, and scope of the consent sent by the receiver, ensuring that the request is authorized.

There are endpoints for:

- Obtaining the list of advance to depositors contracts consented by the client;
- Retrieving the data of an advance to depositors contract;
- Retrieving the installment schedule of an advance to depositors contract;
- Retrieving the list of guarantees linked to an advance to depositors contract;
- Retrieving the payment data of an advance to depositors contract.

## *Open API Specification* of the API

The documentation for the Unarranged Accounts Overdraft API to be built in the *integration layer* can be found [**here**][API-Adiantamento].

To download the YAML/OAS file containing the API specification, click [**here**](en-invoice-financings-2-3-0.yml){:download="en-invoice-financings-2-3-0.yml"}.

{: .highlight}
Some internet browsers, such as *Chrome*, may occasionally flag the download operation of YAML files as *not secure*, requiring manual unlocking by the user. However, these files are text-based and do not pose any risk.

[API-Adiantamento]: ../../../../swagger-ui/index.html?api=en-Adiantamento
