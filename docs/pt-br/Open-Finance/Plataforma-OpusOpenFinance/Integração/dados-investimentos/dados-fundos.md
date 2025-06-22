---
layout: default
title: "API de Fundos de Investimento"
parent: "Investimentos"
nav_order: 4
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Integração/dados-investimentos/dados-fundos/"
---

# API de Fundos de Investimento

API da *camada de integração* que retorna dados de fundos de investimento mantidos pelo cliente na instituição Transmissora de Dados.

Em linhas gerais, existem *endpoints* para:

- Obter os registros de operações dos fundos de investimento mantidos pelo cliente;
- Obter os registros de identificação dos fundos de investimento;
- Obter os registros de posição nos fundos de investimento;
- Obter os registros de histórico de transações dos últimos 12 meses;
- Obter os registros de histórico dos últimos sete dias.

## *Open API Specification* da API

A documentação da API de fundos de investimento a ser construída na *camada de integração* pode ser encontrada [**aqui**][API-Fundos-de-Investimento].

Para fazer o download do arquivo YAML/OAS que contém a especificação da API clique [**aqui**](../../apis/dados-investimento/oas-funds.yml){:download="oas-funds.yml"}.

{: .destaque}
Alguns navegadores internet, como *Chrome*, ocasionalmente sinalizam como *não segura* a operação de *download* de arquivos YAML, exigindo o desbloqueio manual pelo usuário. Eses arquivos, entretanto, tem conteúdo do tipo texto e não apresentam risco por si.

[API-Fundos-de-Investimento]: ../../../../../swagger-ui/index.html?api=data-funds
