---
layout: default
title: "Mobile App and Web"
parent: "Platform Integration"
nav_order: 4
has_children: true
lang: "en"
alternate_lang: "/docs/pt-br/Open-Finance/Plataforma-OpusOpenFinance/Integração/App-e-Web/"
---

## Digital service channels integration

When a consent creation request from another financial institution is received by the platform—whether for data sharing consent or for making a payment—the platform indirectly triggers the end customer’s mobile app or Internet Banking Web, and these artifacts must be prepared to handle this trigger.

To ensure that the digital service channels are prepared, it is necessary to:

1. Build the user experience journey screens according to the existing authentication channels in the institutions, typically Mobile App and/or Internet Banking. The implemented journeys must adhere to the [User Experience Guide][GuiaUX] of *Open Finance Brasil*.
2. Integrate the screens with Opus Open Finance.

# Digital Service Channels

The following digital service channels are provided for by *Open Finance Brasil*:

- Mobile App
- Internet Banking
- *Handoff* Screen

> When the financial institution does not offer a web channel for its customer (and the consent creation request was initiated via the web), a *Handoff* screen must be displayed. This screen should contain a *QR Code* that will be scanned by the customer using a *smartphone* to redirect the consent creation request to the financial institution's mobile application. The **Opus Open Finance Platform** includes a standard *Handoff* screen that can be used by the financial institution, if applicable.

# UX Requirements

The user experience journey must comply with a series of regulatory requirements, similar to how Pix works today. There are two aspects that need to be built for the UX journey.

## Consent Journey

The [consent journey][JornadaConsentimento] represents the stage where the end customer authorizes the consent. The journey is very similar for both data sharing and payments, but there are specificities that need to be implemented. Again, the details can be found in the [User Experience Guide][GuiaUX].

## Consent Management

Consent management refers to the functionality that allows the end customer to access their data sharing or payment consents. This management allows the full consent history to be viewed and gives the power to revoke/extend a consent.

# Integration with Opus Open Finance Platform

In parallel to building the mobile app and/or Internet Banking screens, it is also necessary to integrate these artifacts with the platform. The next pages of this documentation detail this integration, as well as the operation of the *Handoff* screen, in case the financial institution does not offer a self-service Web channel.

[GuiaUX]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17378535/Guia+de+Experi+ncia+do+Usu+ri
[JornadaConsentimento]: ../../../Open-Finance-Brasil/JornadaConsentimento/OFB-JornadaConsentimento.html
