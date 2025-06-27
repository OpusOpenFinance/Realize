---
layout: default
title: "Data Sharing"
parent: "Platform Integration"
nav_order: 2
has_children: true
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/Integração/CamadaIntegração/"
---

# Data Sharing

The *data transmitter* participation profile in *Open Finance Brasil* requires the financial institution to be able to respond to data requests from other participating institutions. Before another financial institution can make data requests related to the transmitting institution’s customers, the customer must have previously authorized the sharing of their data through a **data sharing consent**.

As previously mentioned, the **Opus Open Finance Platform** manages active consents and also verifies the validity of received requests. This verification includes assessing whether the data request sent by the receiving institution—which always includes a consent identifier—is an active consent and whether it allows the sharing of the requested data. For example, a customer could share their personal data and credit card information, but not their checking account or loan data.

Once the verification is completed and the request is validated, the platform will call the *integration layer* to obtain the requested data. It is precisely this integration layer, responsible for interacting with the transmitting institution’s back-end systems, that needs to be built for the platform to operate.

To perform this integration and maintain a clear division of responsibilities, the platform defines a set of REST APIs that are activated to handle requests associated with each financial product offered by the institution. The APIs are divided by the different financial products covered by the scope of *Open Finance Brasil*.

The diagram below shows the general scheme of the model.

---

![Integration Layer Diagram][Imagem da Camada de Integração]

---

It is important to note that the institution does not necessarily offer all the products included in the full scope of *Open Finance Brasil*, so it will only need to implement the subset of APIs associated with the products it offers.

Some of the key characteristics of the integration layer to be built are:

- It does not need (and should not) address the validity of the requests, as the platform has already performed all necessary validations;
- It must be able to handle multiple requests simultaneously (theoretically, there is no limit to the number of requests per second that must be handled);
- It must offer response times compatible with the service level required by regulations. The maximum response times required by regulation for each type of request can be found [**in the official documentation of Open Finance Brazil**][Tempos de Resposta];

{: .important}
It should be considered that the Opus Open Finance Platform will reserve up to 40% of the response time for the validation and handling of each request.

We now present the different types of data involved in handling requests from the various financial products covered by the full scope of *Open Finance Brasil*, properly updated to its latest version. Each section below, in turn, references a specific documentation page that details this data and presents the *integration layer* API that must be built to integrate the **Opus Open Finance Platform** with the financial institution’s back-end systems.

{: .note}
>In the *Open Finance Brasil* documentation, APIs related to **consent** (*consents*) and **resources** (*resources*) are defined. Regarding consent, the platform handles all management, making this concept transparent to the integration layer. The concept of *resource*, in the context of *Open Finance Brasil*, refers to each instance of a financial product the customer holds with a financial institution. For example, if a customer has 3 credit cards with a financial institution, this corresponds to 3 distinct resources.
>
>Thus, one of the most common requests made by receiving institutions is to query all the financial products the end customer holds with the transmitting financial institution (provided the consent granted by the customer is broad enough). In this case, the platform already handles the necessary processing, activating the integration layer for each specific product to adequately handle such requests.

## Customer Data

Customer and representative identification data, financial qualification information, registered representative details, and the financial relationship between the customer and the data-transmitting institution.
There is a separation between individual and corporate entities.

Detailed information on the *endpoints* and data required to handle this type of request can be found on the [customer data page][Dados-Cadastrais].

## Credit Card

Information on post-paid payment accounts held at transmitting institutions by their customers, including data such as account name, product, brand, credit limits, payment transaction details, and invoices. There is no distinction between individual and corporate entities.

Detailed information on the *endpoints* and data required to handle this type of request can be found on the [credit card page][Cartão-crédito].

## Accounts

Information on checking accounts, savings accounts, and prepaid payment accounts held at transmitting institutions by their customers, including account identification data, balances, limits, and transactions. There is no distinction between individual and corporate entities.

Detailed information on the *endpoints* and data required to handle this type of request can be found on the [accounts page][Contas].

## Credit Operations

In the case of credit operations, the customer shares data by product grouping, meaning all types of credit operations are shared within the scope of *Open Finance Brasil*. Below is a list of the operations:

- [Loans][Empréstimo]
- [Financing][Financiamento]
- [Unarranged Accounts Overdraft][Adiantamento]
- [Invoice Financing][Direitos-Creditórios]

Detailed information on the data required for each of these operations can be found on the [credit operations page][Crédito].

## Investments

Investments are also divided into different products. Below is a list of possible investment products, along with links to detailed documents on the product data:

- [Fixed income banking](./dados-investimentos/dados-renda-fixa-bancaria.html)
- [Fixed income credit](./dados-investimentos/dados-renda-fixa-credito.html)
- [Variable income](./dados-investimentos/dados-renda-variavel.html)
- [Treasury bonds](./dados-investimentos/dados-tesouro.html)
- [Investment funds](./dados-investimentos/dados-fundos.html)

Detailed information on the data required for this product can be found on the [investments page](./OOF-Investimento.html).

## Foreign Exchange

Information on foreign exchange operations carried out at transmitting institutions by their customers, including data such as the contracted operation details, the operation value in local and foreign currency, operation classification, delivery method, VET, and, when applicable, the settlement value. Any operation changes, if they exist, along with modified details, will also be shared. There is no distinction between individual and corporate entities.

Detailed information on the data required for this product can be found on the [foreign exchange page][Câmbio].

<!-- **gambia**: [API-Commons](../../../../swagger-ui/index.html?api=Opus-Commons) -->

<!-- Links used on this page -->

[Imagem da Camada de Integração]: ./images/CamadaIntegração.png
[Tempos de Resposta]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17957025/Refer+ncia
<!-- [Guia APIs]: https://openfinancebrasil.atlassian.net/wiki/pages/viewpageattachments.action?pageId=17378841&preview=%2F17378841%2F17378864%2F%5B23-06%5DGuia_GT_Implementa%C3%A7%C3%A3oAPIs.pdf -->
[Dados-Cadastrais]: ../apis/Dados-Cadastrais.html
[Cartão-crédito]: ../apis/Cartão-de-Credito.html
[Contas]: ../apis/Contas.html
[Crédito]: ./OOF-Crédito.html
[Câmbio]: ../apis/Câmbio.html
[Empréstimo]: ../apis/Empréstimo.html
[Financiamento]: ../apis/Financiamento.html
[Adiantamento]: ../apis/Adiantamento.html
[Direitos-Creditórios]: ../apis/DireitosCreditórios.html
