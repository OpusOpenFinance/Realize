---
layout: default
title: "Payment Initiation Service Provider"
parent: "Participation Profiles"
nav_order: 5
has_children: true
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Open-Finance-Brasil/PerfisOFB/OFB-ITP/"
---

# Payment Initiation Service Provider

The Payment Initiation Service Provider (*PISP*) is the *Open Finance Brasil* profile authorized to perform payment initiations within the ecosystem. The Payment Initiation Service Provider will initiate consent journeys (for making payments) in participating *Open Finance Brasil* institutions that are Account Holders. This profile enables a range of new use cases, as the Payment Initiation Service Provider does not need to be the custodian of the money at any point during the transaction and also does not need to be the owner of the bank account that will settle the payment.

## Payment Methods in *Open Finance Brasil*

Currently, the payment methods foreseen in *Open Finance Brasil* include:

- **Pix**
- **Boleto***
- **Debit in Account***
- **TED/TEF***
- **Credit Card***

{: .note}
The items marked with an asterisk are not yet available in *Open Finance Brasil* and have no scheduled release date.

## Consent Journey

The authorization process to make payments is done through a **complete consent journey**. More details can be found [here][Consent-Journey].

> Additionally, the [sequence diagram][Sequence-Diagram] illustrates the consent flow according to each [API offered by the product][API-pagamentos];

## Regulatory Roadmap

### Available Features

- **Instant Pix payment**
- **Scheduled Pix payment**
- **Recurring scheduled payments**
- **Automatic transfers between accounts of the same account holder** (known as *sweeping accounts*)

### Planned Features

- **Batch payments (1:n)**
- **Payments without redirection** (no redirection to the Account Holder from the user's perspective)
- **Recurring payments** (Variable Recurring Payment - VRP)
- **Pix via proximity**

The [developer portal][Dev-Portal] offers a calendar with upcoming deliveries.

## Opus Open Finance Platform

To start using the software, there are some prerequisites:

1. Complete the [setup (deployment)][Setup];

2. Complete the entire certification of the Account Holder profile. (We recommend evaluating this criterion with your institution’s compliance department);

3. Create the user experience so that the consent journey is possible for customers. The [Open Finance Brazil User Experience Guide][GuiaUX] provides detailed description of this journey.

4. Complete the entire [Payment Initiation Service Provider onboarding process][OnboardingITP]

{: .highlight}
The Payment Initiation module of **Opus Open Finance Platform** is self-contained and *does not* demand to build an integration layer. It runs autonomously, providing APIs that isolate the specific details of *Open Finance Brasil* authentication and security protocols and facilitate the construction of applications. The description of these APIs can be found [here (payments)][API-pagamentos] e [here (automatic payments)][API-pagamentos-automáticos].  

[GuiaUX]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17378535/Guia+de+Experi+ncia+do+Usu+ri
[API-pagamentos]: ../../../../swagger-ui/index.html?en-api=en-OAS-ITP-pagamentos
[API-pagamentos-automáticos]: ../../../../swagger-ui/index.html?en-api=en-OAS-ITP-pagamentos-automaticos
[OnboardingITP]: ../PerfisOFB/OnboardingITP.html
[Setup]: ../../Plataforma-OpusOpenFinance/Implantação/OOF-Implantação.html
[Dev-Portal]: https://openfinancebrasil.atlassian.net/wiki/spaces/DraftOF/calendars
[Sequence-Diagram]: ../../Plataforma-OpusOpenFinance/ITP/images/consent-sequence.png
[Consent-Journey]: ../JornadaConsentimento/OFB-JornadaConsentimento.html
