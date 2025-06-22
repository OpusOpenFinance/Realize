---
layout: default
title: "API de Renda Variável"
parent: "Investimentos"
nav_order: 3
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Integração/dados-investimentos/dados-renda-variavel/"
---

# API de Renda Variável

API da *camada de integração* que retorna dados de renda variável mantidos pelo cliente na instituição Transmissora de Dados.

Em linhas gerais, existem *endpoints* para:

- Obter os registros de operações dos papéis de renda variável mantidos pelo cliente;
- Obter os registros de identificação dos papéis de renda variável;
- Obter os registros de posição nos papéis de renda variável;
- Obter os registros de histórico de transações dos últimos 12 meses;
- Obter os registros de histórico dos últimos sete dias.

## *Open API Specification* da API

A documentação da API de renda variável a ser construída na *camada de integração* pode ser encontrada [**aqui**][API-Renda-Variável].

Para fazer o download do arquivo YAML/OAS que contém a especificação da API clique [**aqui**](../../apis/dados-investimento/oas-variable-incomes.yml){:download="oas-variable-incomes.yml"}.

{: .destaque}
Alguns navegadores internet, como *Chrome*, ocasionalmente sinalizam como *não segura* a operação de *download* de arquivos YAML, exigindo o desbloqueio manual pelo usuário. Eses arquivos, entretanto, tem conteúdo do tipo texto e não apresentam risco por si.

[API-Renda-Variável]: ../../../../../swagger-ui/index.html?api=data-variable-incomes
