---
layout: default
title: "API de Títulos do Tesouro Direto"
parent: "Investimentos"
nav_order: 5
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Integração/dados-investimentos/dados-tesouro/"
---

# API de Títulos do Tesouro Direto

API da *camada de integração* que retorna dados de títulos do tesouro direto mantidos pelo cliente na instituição Transmissora de Dados.

Em linhas gerais, existem *endpoints* para:

- Obter os registros de operações dos títulos do tesouro direto mantidos pelo cliente;
- Obter os registros de identificação dos títulos do tesouro direto;
- Obter os registros de posição nos títulos do tesouro direto;
- Obter os registros de histórico de transações dos últimos 12 meses;
- Obter os registros de histórico dos últimos sete dias.

## *Open API Specification* da API

A documentação da API de títulos do tesouro direto a ser construída na *camada de integração* pode ser encontrada [**aqui**][API-Tesouro-Direto].

Para fazer o download do arquivo YAML/OAS que contém a especificação da API clique [**aqui**](../../apis/dados-investimento/oas-treasury-bonds.yml){:download="oas-treasury-bonds.yml"}.

{: .destaque}
Alguns navegadores internet, como *Chrome*, ocasionalmente sinalizam como *não segura* a operação de *download* de arquivos YAML, exigindo o desbloqueio manual pelo usuário. Eses arquivos, entretanto, tem conteúdo do tipo texto e não apresentam risco por si.

[API-Tesouro-Direto]: ../../../../../swagger-ui/index.html?api=data-treasury-bonds
