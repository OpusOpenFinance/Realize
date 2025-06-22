---
layout: default
title: "Data Transmitter"
parent: "Participation Profiles"
nav_order: 2
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Open-Finance-Brasil/PerfisOFB/OFB-Transmissor/"
---

# Data Transmitter Profile

The **Data Transmitter** profile represents the institution that receives data-sharing requests from a **Data Receiver**. The **Opus Open Finance Platform** meets all the regulatory requirements set by the Open Finance Brasil regulator for implementing this profile.

---

## Open Finance Brasil Ecosystem - Data Transmitter

The *Data Transmitter* profile refers to financial institutions that participate in data sharing in *Open Finance Brasil*. It is typically triggered when a customer of the institution grants data-sharing consent to other institutions, which, in this context, are called *data receiver institutions*.

Once the customer has agreed to share their data with other institutions, these institutions have the right to send periodic data requests, which may include account holder information, account and credit card transactions, credit operations, foreign exchange, and investments (more details below). The *Data Transmitter* profile is responsible for receiving, validating, and handling these requests.

> The regulatory standard establishes limits, called *operational limits*, which define the maximum quotas of requests a data receiver institution can send to a data transmitter institution. The current operational limits in *Open Finance Brasil* can be found [here][Operational-Limits].

---

## Shared Data

When sharing occurs, the ecosystem is prepared to provide the following information:

### **Account Holder Information**

- Account holder details

### **Checking Account**

- Statement
- Balance

### **Credit Card**

- Invoice
- Credit limits
- Transactions

### **Credit Operations**

- Loans
- Financing
- Unarranged account overdraft
- Invoice financings

### **Foreign Exchange**

- Foreign exchange operations

### **Investments**

- Bank-fixed income (CDB, LCI, LCA - protected by FGC)
- Credit-fixed income (CRI, CRA, Debenture)
- Variable income
- Treasury bonds
- Investment funds

**Note:** It is the responsibility of the **Data Transmitter** to provide all the information listed above that is offered by the institution.

---

## Consent Journey

The authorization process for data sharing follows a **complete consent journey**. For more information, click [here][ConsentJourney].

---

## Regulatory Roadmap

### Available Features

- Query of all the data listed above.

### Planned Features

- Notification System: There is a desire to increase the efficiency of data sharing. Currently, to check if a customer has made new transactions within a given time period, it is necessary to explicitly make a call to the data-transmitting financial institution periodically. The notification system should allow the data receiver to indicate to the transmitter which customers – for whom it already has valid data-sharing consent – it would like to monitor. In this way, periodically – likely once a day – the transmitter will send the receiver any new transactions or changes to account holder details made by the customer. This mechanism will undoubtedly save a large number of unnecessary calls, reducing the cost for all ecosystem participants.

The [developer portal][DeveloperPortal] also offers a calendar with upcoming deliveries.

## Opus Open Finance Platform

The **Opus Open Finance Platform** implements all the regulatory APIs for the data transmitter profile. To operationalize this profile using the platform, the following steps are required:

1. Complete the entire [deployment process][Deployment].
2. Build the user experience for the mobile app and Internet Banking (if applicable), regarding granting data-sharing consents, as defined by the Open Finance Brasil regulator. [The user experience guide][UserExperienceGuide] provides more details about the user interaction flow that should be implemented.
3. Build the [integration layer][Integration-Layer] with backend systems according to the financial products offered by the institution to its clients.

[Operational-Limits]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17924220/Limites+operacionais
[ConsentJourney]: ../JornadaConsentimento/OFB-JornadaConsentimento.html
[DeveloperPortal]: https://openfinancebrasil.atlassian.net/wiki/spaces/DraftOF/calendars
[Deployment]: ../../Plataforma-OpusOpenFinance/Implantação/OOF-Implantação.html
[UserExperienceGuide]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17378535/Guia+de+Experi+ncia+do+Usu+rio
[Integration-Layer]: ../../Plataforma-OpusOpenFinance/Integração/CamadaIntegração.html
