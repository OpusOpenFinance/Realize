---
layout: default
title: "Open data"
parent: "Participation Profiles"
nav_order: 1
lang: "en"
alternate_lang: "/Documentation/pt-br/Open-Finance/Open-Finance-Brasil/PerfisOFB/Dados-abertos/"
---

# Open Data

The Open Data front of Open Finance refers to [Phase 1 of Open Finance](../Ecossistema/OFB-Ecossistema.html). Phase 1 allows participating institutions of Open Finance to publish their data publicly and make it accessible via API so that any request can retrieve this information. The data refers to non-sensitive information from the institutions themselves.

## Listed Data

### Service Channels

- Own branches, including the list of bank agencies maintained by the institution;
- Electronic service channels;
- Telephone service channels;
- Bank correspondents of the institution;
- Self-service terminals (both owned and shared).

### Products

- Accounts
- Loans
- Financing
- Unarranged account overdraft
- Credit card
- Invoice financings
- Investments
- Foreign exchange
- Acquiring
- Capitalization bonds
- Insurance
- Pension plans

> - In the case of financial products, all must be separated between natural persons and legal entities.  
> - All monetary values or rates represented within the structures below are divided into different ranges. In total, there are 4 equally proportioned ranges dividing the interval from the smallest to the largest value. There is a corresponding value for each range, which is the median value of each of these ranges. Each range is also accompanied by the percentage of customers in each range (for service x, 10% of customers in that service x are in range 1, 15% in range 2, 20% in range 3, and 55% in range 4).

## Mandatory Criteria

The open data profile is mandatory for all institutions that are participants (either mandatory or voluntary) in the transactional data profile (Phase 2).

## Opus Open Finance Platform

The **Opus Open Finance Platform** implements the open data API, and a simple integration is required to make Phase 1 operational, along with the following steps:

1. Complete the [product deployment][Deployment].

2. Perform the integration simultaneously with the Data Transmitter's integration. (Ideally, both profiles should go into production at the same time)

> The integration is done through a JSON structure, generated either dynamically or statically, to report the data to the *Open Finance Brasil* ecosystem.

[Deployment]: ../../Plataforma-OpusOpenFinance/Implantação/OOF-Implantação.html
