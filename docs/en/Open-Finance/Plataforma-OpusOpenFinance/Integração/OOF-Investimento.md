---
layout: default
title: "Investments"
parent: "Data Sharing"
nav_order: 5
has_children: true
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Plataforma-OpusOpenFinance/Integração/OOF-Investimento/"
---

# Investments

All types of investments are eligible for data sharing within the scope of *Open Finance Brasil*.

The consent for data sharing granted by the customer is done by grouping products. This means that if the customer grants data sharing consent for "Investments", all modalities will be included.

The different types of investments are:

- Bank fixed income
- Credit fixed income
- Variable income
- Investment funds
- Treasury bonds

Since each of these modalities has its own characteristics, the *integration layer* must implement five distinct APIs, considering their different data types.

{: .note}
In the particular case of Brazilian *Treasury Bonds*, they are called *Tesouro Direto*. *Tesouro Direto* is a Brazilian government bond investment program that allows individuals to buy and sell Treasury bonds online. Created in 2002 by the *Brazilian National Treasury* and *B3* (the stock exchange), it provides retail investors with direct access to fixed-income securities, similar to *U.S. Treasury bonds*. *Tesouro Direto* offers fixed-rate, inflation-linked, and floating-rate bonds, making it a popular low-risk investment for long-term savings and portfolio diversification.

The official documentation of *Open Finance Brasil* has a table summarizing the investments associated with each modality, as well as the API that should be responsible for it, which can be viewed [here][Tabela-Investimento-OFB].

All APIs share some important characteristics defined by the regulator:

**Timeliness of data for investment APIs:**

- Up to one hour for the Bank Fixed Income, Credit Fixed Income, Treasury Bonds, and Investment Funds APIs
- For the Variable Income API, due to the frequent changes in prices and the dynamics of product operation (buy and sell orders), the position and movements at the close of the previous day (d-1) will be exposed.

**Resources that must be included in the sharing:**

- Active investments in a period of up to 12 months before the start of the consent’s validity
- Investments that matured, were redeemed, or had their ownership or custody transferred within a period of up to 12 months before the start of the consent’s validity
- Investments contracted during the consent validity period
- Investments that matured, were redeemed, or had their ownership or custody transferred during the consent validity period

**Resources that should not be included in the sharing:**

- Investments that matured or were redeemed more than 12 months before the start of the consent’s validity
- Investments belonging to customers who are under any type of internal institutional blocking policies
- Investments with automatic investment and redemption

Below you will find the link for each of the Investment APIs:

|API                        |Link                     |
|---------------------------|:-----------------------:|
|Bank fixed income          |[Link](./dados-investimentos/dados-renda-fixa-bancaria.html)|
|Credit fixed income        |[Link](./dados-investimentos/dados-renda-fixa-credito.html)|
|Variable income            |[Link](./dados-investimentos/dados-renda-variavel.html)|
|Treasury bonds             |[Link](./dados-investimentos/dados-tesouro.html)|
|Investment funds           |[Link](./dados-investimentos/dados-fundos.html)|

[Tabela-Investimento-OFB]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/102957060/Orienta+es+-+DC+Investimentos
