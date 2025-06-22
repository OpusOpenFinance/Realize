---
layout: default
title: "API de Renda Fixa Bancária"
parent: "Investimentos"
nav_order: 1
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Integração/dados-investimentos/dados-renda-fixa-bancaria/"
---

# API de Renda Fixa Bancária

API da *camada de integração* que retorna dados de renda fixa bancária mantidos pelo cliente na instituição Transmissora de Dados.

Em linhas gerais, existem *endpoints* para:

- Obter os registros de operações dos papéis de renda fixa bancária mantidos pelo cliente;
- Obter os registros de identificação dos papéis de renda fixa bancária;
- Obter os registros de posição nos papéis de renda fixa bancária;
- Obter os registros de histórico de transações dos últimos 12 meses;
- Obter os registros de histórico dos últimos sete dias.

## *Open API Specification* da API

A documentação da API de renda fixa bancária a ser construída na *camada de integração* pode ser encontrada [**aqui**][API-Renda-Fixa-Bancaria].

Para fazer o download do arquivo YAML/OAS que contém a especificação da API clique [**aqui**](../../apis/dados-investimento/oas-bank-fixed-incomes.yml){:download="oas-bank-fixed-incomes.yml"}.

{: .destaque}
Alguns navegadores internet, como *Chrome*, ocasionalmente sinalizam como *não segura* a operação de *download* de arquivos YAML, exigindo o desbloqueio manual pelo usuário. Eses arquivos, entretanto, tem conteúdo do tipo texto e não apresentam risco por si.

[API-Renda-Fixa-Bancaria]: ../../../../../swagger-ui/index.html?api=data-bank-fixed-incomes
