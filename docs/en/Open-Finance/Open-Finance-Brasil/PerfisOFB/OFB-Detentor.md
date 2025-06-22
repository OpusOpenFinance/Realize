---
layout: default
title: "Account Holder"
parent: "Participation Profiles"
nav_order: 3
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Open-Finance-Brasil/PerfisOFB/OFB-Detentor/"
---

# Account Holder

The participation profile as an **Account Holder** in *Open Finance Brasil* represents the institution that receives payment requests from a **Payment Initiation Service Provider (PISP)**. This profile in the **Opus Open Finance Platform** is responsible for meeting all the regulatory requirements set by the Central Bank.

---

## Open Finance Ecosystem - Account Holder

Account Holders are institutions where customers have checking accounts, savings accounts, and prepaid payment accounts, which can be accessed in the context of *Open Finance Brasil* to process payment initiations. The entities sending the payment requests are institutions certified as *Payment Initiation Service Providers*.

---

## Payment Methods in Open Finance

Currently, the payment methods foreseen in Open Finance include:

- **Pix**
- **Boleto***
- **Debit in Account***
- **TED/TEF***
- **Credit Card***

*The items marked with an asterisk are not yet available in Open Finance and have no scheduled release date.*

---

## Consent Journey

The authorization process to make payments is done by the customer through a **complete consent journey**. More details can be found [here](../JornadaConsentimento/OFB-JornadaConsentimento.html).

---

## Regulatory Roadmap

### Available Features

- **Instant Pix payment**
- **Scheduled Pix payment**
- **Recurring scheduled payments**
- **Automatic transfers between accounts of the same account holder** (also known as *sweeping accounts* or *smart transfers*)

### Planned Features

- **Batch payments (1:n)**
- **Payments without redirection** (no redirection to the Account Holder from the user's perspective)
- **Recurring payments** (Variable Recurring Payment - VRP - implemented through *Automatic Pix*)
- **Pix via proximity**

The [developer portal](https://openfinancebrasil.atlassian.net/wiki/spaces/DraftOF/calendars) offers a calendar with upcoming deliveries.

---

## Regulatory APIs

### Active APIs

|**Description**                  | **Link to Developer Portal**                                      |
|----------------------------------|:------------------------------------------------------------------:|
|**Payment Initiation**            |[Access here](https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17375943/SV+API+-+Pagamentos) |
|**Automatic Payment Initiation**  |[Access here](https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/198410569/SV+API+-+Pagamentos+Autom+ticos) |
|**Payment Initiation (No Redirection)** |[Access here](https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/141557761/SV+API+-+Pagamentos+sem+Redirecionamento) |

## Opus Open Finance Platform

To use the **Opus Open Finance Platform** to meet the regulatory requirements of the Account Holder participation profile, the following steps need to be completed:

1. Complete the [deployment process](../../Plataforma-OpusOpenFinance/Implantação/OOF-Implantação.html).
2. Build the user experience for the app and Internet Banking (if applicable). [The user experience guide](https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17378535/Guia+de+Experi+ncia+do+Usu+rio) presents the details of the interaction flow with the end user that the digital service channels must implement to comply with regulatory standards.
3. Build the integration layer with the backend payment systems.
