---
layout: default
title: "API de Adiantamento a Depositantes"
parent: "Operações de Crédito"
nav_order: 3
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/apis/Adiantamento"
---

# API de Adiantamento a Depositantes

API da *camada de integração* que retorna informações de operações de crédito do tipo *adiantamento a depositantes*, mantidas nas instituições transmissoras por seus clientes, incluindo dados como denominação, modalidade, número do contrato, tarifas, prazo, prestações, pagamentos (ao menos para os últimos 12 meses), amortizações, garantias, encargos e taxas de juros remuneratórios.

Essa API não faz separação entre pessoa natural e pessoa jurídica.

Antes de qualquer *endpoint* da *camada de integração* ser acionado, a plataforma já verificou a autenticidade da origem da chamada e a validade, data de expiração, permissões e escopo do consentimento enviado pelo receptor, garantindo que se trata de uma requisição autorizada.

Existem *endpoints* para:

- Obter a lista de contratos de adiantamento a depositantes consentidos pelo cliente;
- Obter os dados de um contrato de adiantamento a depositantes;
- Obter os dados do cronograma de parcelas de um contrato de adiantamento a depositantes;
- Obter a lista de garantias vinculadas a um contrato de adiantamento a depositantes;
- Obter os dados de pagamento de um contrato de adiantamento a depositantes.

## *Open API Specification* da API

A documentação da API de Adiantamento a Depositantes a ser construída na *camada de integração* pode ser encontrada [**aqui**][API-Adiantamento].

Para fazer o download do arquivo YAML/OAS que contém a especificação da API clique [**aqui**](overdraft-2-4-0.yml){:download="overdraft-2-4-0.yml"}.

{: .destaque}
Alguns navegadores internet, como *Chrome*, ocasionalmente sinalizam como *não segura* a operação de *download* de arquivos YAML, exigindo o desbloqueio manual pelo usuário. Eses arquivos, entretanto, tem conteúdo do tipo texto e não apresentam risco por si.

[API-Adiantamento]: ../../../../swagger-ui/index.html?api=Adiantamento
