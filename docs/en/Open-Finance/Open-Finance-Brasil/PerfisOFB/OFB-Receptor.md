---
layout: default
title: "Data Receiver"
parent: "Participation Profiles"
nav_order: 4
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Open-Finance-Brasil/PerfisOFB/OFB-Receptor/"
---

# Data Receiver

The Data Receiver is a profile in Open Finance that has the authority to request data from other institutions that are Data Transmitters. According to Open Finance regulations, there are several products listed by Transmitters that can be collected by the Receiver.

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
- Overdraft (advance to depositors)
- Discounted receivables (receivables anticipation)

### **Foreign Exchange**

- Foreign exchange operations

### **Investments**

- Bank-fixed income (CDB, LCI, LCA - protected by FGC)
- Credit-fixed income (CRI, CRA, Debenture)
- Variable income
- Treasury bonds
- Investment funds

> Transmitters only provide the products they offer to their clients

---

## Consent Journey

The authorization process for data sharing follows a **complete consent journey**. For more information, click [here](../JornadaConsentimento/OFB-JornadaConsentimento.html).

> Additionally, the [sequence diagram][SequenceDiagram] illustrates the consent flow according to each [API offered by the reception module][API-Receiver].

---

## Mandatory Certification

For an institution to become a Data Receiver, it is necessary to undergo the OpenID RP certification tests - *Relying parties*. More details about the certification can be found [here](../OFB-Certificações.html).

---

## Usage

To start using the software, there are some prerequisites:

1. Complete the [setup (deployment)](../../Plataforma-OpusOpenFinance/Implantação/OOF-Implantação.html).

2. Complete the certification for the Data Transmitter profile.

3. Create the user experience so that the consent journey is possible for customers. The user experience guide provides more details about this journey.

> - For Reception, there is no need to build the integration layer.  
> - The API of the data reception module can be [found here][API-Receiver].  
> - To evaluate the user experience guide, [click here][GuiaUX].

[SequenceDiagram]: ../../Plataforma-OpusOpenFinance/Receptor_de_Dados/images/consent-sequence.png
[GuiaUX]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17378535/Guia+de+Experi+ncia+do+Usu+ri
[API-Receiver]: ../../../../swagger-ui/index.html?en-api=en-OAS-Receptor
