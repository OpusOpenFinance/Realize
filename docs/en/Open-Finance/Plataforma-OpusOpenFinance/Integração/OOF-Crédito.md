---
layout: default
title: "Credit Operations"
parent: "Data Sharing"
nav_order: 4
has_children: true
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/Integração/OOF-Crédito/"
---

# Credit Operations

All types of credit operations are eligible for data sharing within the scope of *Open Finance Brasil*.

The consent for data sharing granted by the customer is done by grouping products. This means that if the customer grants data sharing consent for "Credit Operations", all modalities will be included.

The different types of credit operations are:

- Loans
- Financing
- Unarranged Accounts Overdraft
- Invoice Financing

Since each of these modalities has its own characteristics, the *integration layer* must implement four distinct APIs, considering their different types of data.

The official documentation of *Open Finance Brasil* has a table summarizing the credit operations associated with each modality, as well as the API that should be responsible for it, which can be viewed [here][Tabela-Crédito-OFB].

All APIs share some important characteristics defined by the regulator:

- All credit operations in the last 12 months are within the scope of exposure in *Open Finance Brasil*, except for the exceptions presented in the items below;
- Credit operations that were settled more than 12 months ago from the consultation date by the receiving institution will no longer be available (there is a *status* return in the APIs, *UNAVAILABLE*, to signal any specific queries for operations that exceeded this time limit);
- In use cases where a final customer grants consent for a contract that requires approval from multiple authorities (*PENDING_AUTHORISATION*) and other contracts are available for consultation (*AVAILABLE*), the expected behavior is that each contract has its *status* represented independently, immediately making the approved contracts available.
- Canceled credit operations are not within the scope of exposure.
- Credit operations that have gone into default are not within the scope of exposure in Open Finance;
- Credit operations that have been transferred to another institution are no longer within the scope of exposure.

Canceled contracts, those that have gone into default, or those that have been transferred, if they were shared previously, should be marked with *status UNAVAILABLE*.

The details of the APIs for each credit operation modality can be found in the table below:

|API                             |Link                     |
|--------------------------------|:-----------------------:|
|Loans                           |[Link][Empréstimo]|
|Financing                       |[Link][Financiamento]|
|Unarranged Accounts Overdraft   |[Link][Adiantamento]|
|Invoice Financing               |[Link][Direitos-Creditórios]|

[Empréstimo]: ../apis/Empréstimo.html
[Financiamento]: ../apis/Financiamento.html
[Adiantamento]: ../apis/Adiantamento.html
[Direitos-Creditórios]: ../apis/DireitosCreditórios.html
[Tabela-Crédito-OFB]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/320176146/Orienta+es+-+DC+Opera+es+de+cr+dito#Tabela-com-as-modalidades-e-submodalidades-das-APIs-de-opera%C3%A7%C3%B5es-de-cr%C3%A9dito
