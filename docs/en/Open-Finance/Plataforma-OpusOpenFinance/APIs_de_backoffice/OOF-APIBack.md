---
layout: default
title: "Consent Management APIs"
parent: "Opus Open Finance Brazil"
nav_order: 2
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/APIs_de_backoffice/OOF-APIBack/"
---

# Consent Management APIs

Consent (both data sharing and payment) plays a central role in the entire operational model of *Open Finance Brasil*, ensuring that all transactions and operations within the ecosystem are carried out with the explicit permission of the end customer.

The **Opus Open Finance Platform** fully manages the consents and stores them securely in its internal database, ensuring that any sensitive personal data associated with these consents is always encrypted while at rest.

Consents can only be created (and revoked) through direct action from the end customer, whether when they authorize a payment or provide consent for data sharing with a duly authorized participant of *Open Finance Brasil*.

At the same time, the creation or revocation of a consent is the result of secure interaction between ecosystem participants and regulated by strict security protocols. Any request received by the platform can only be processed if there is an active consent with the appropriate permissions for performing the operation.

Thus, the entire creation, lifecycle management, and revocation of consents is the exclusive responsibility of the platform.

The Consent Management API allows financial institution applications to extract information about the consents (whether active or not) related to payments made and data shared by their customers.

## *Open API Specification*

The definitions of the API in Open API Specification format can be found [**here**][API-backoffice].

To download the YAML/OAS file containing the API specification, click [**here**](../apis/en-oas-oof-dados.yml){:download="en-oas-oof-dados.yml"}.

{: .highlight}
Some internet browsers, such as *Chrome*, may occasionally flag the download operation of YAML files as *not secure*, requiring manual unlocking by the user. However, these files are text-based and do not pose any risk.

[API-backoffice]: ../../../../swagger-ui/index.html?api=en-OAS-back-dados
