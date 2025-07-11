---
layout: default
title: "Platform Integration"
parent: "Opus Open Finance Brazil"
nav_order: 4
has_children: true
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/Integração/OOF-Integração/"
---

# Platform Integration with the Financial Institution

The **Opus Open Finance Platform** acts as the *interface* between financial institutions and the *Open Finance Brasil* ecosystem, handling all activities inherent to this *interface*, such as implementing regulatory APIs, creating and managing consents, and validating each call received from other financial institutions. The platform functions as a layer that abstracts the specific aspects of the Open Finance ecosystem, interacting with the financial institution's systems to meet regulatory requirements.

For operations implemented within the scope of *Open Finance Brasil*, the platform interacts with the financial institution's software components at two distinct moments:

- When creating a consent;
- When handling requests coming from other financial institutions.

## Integration for Consent Creation

The creation of a consent requires interaction with the end customer of the financial institution. In fact, the same applies to the removal of consents. Therefore, it is necessary to integrate the systems that implement the institution’s main digital service channels—typically the mobile app and Internet Banking Web—with the platform. The integration of service channels with the platform is detailed [here][Integração app-web].

## Integration with Back-End Systems for Handling Requests

Requests are made through calls to the regulatory API by the institution requesting services, which may be requests for customer data— in the case of data sharing—or requests for payment execution. To handle these, the platform performs all necessary validations to ensure they are valid requests and comply with the associated consents. After validating each call, the platform triggers the financial institution's back-end systems to fulfill the request. This trigger is performed through an *integration layer*.

The approach of concentrating the integration between the platform and the financial institution’s back-end systems in a separate layer provides functional isolation between components, ensuring that the solution maintains the same implementation base for all clients using it. The specific characteristics of each financial institution's back-end systems are contained within this layer. Naturally, there is an economic incentive for this: the cost of the platform’s evolutionary maintenance is shared among all clients using the platform.

In general, *Open Finance Brasil* requests are divided into two distinct categories:

- Customer data queries
- Payment execution

Given the specific characteristics of each category of requests, the platform uses different integration models for each. In both cases, **software artifacts must be built** to facilitate the interaction between the platform and the financial institution’s back-end systems.

In the case of data integration, required for the [*data transmitter* profile][Transmissor], the detailed integration model can be found [**in this link**][Camada de integração].

In the case of payments, required for the [*account holder* profile][Detentor], the detailed integration model can be found [**in this link**][Conectores de Pagamento].

[Camada de Integração]: ./CamadaIntegração.html
[Conectores de Pagamento]: ./Conectores-Pagto.html
[Integração app-web]: ./App-e-Web.html
[Transmissor]: ../../Open-Finance-Brasil/PerfisOFB/OFB-Transmissor.html
[Detentor]: ../../Open-Finance-Brasil/PerfisOFB/OFB-Detentor.html
