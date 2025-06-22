---
layout: default
title: "API de Direitos Creditórios"
parent: "Operações de Crédito"
nav_order: 4
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/apis/DireitosCreditórios/"
---

# Direitos Creditórios Descontados

API da *camada de integração* que retorna informações de operações de crédito do tipo *antecipação de recebíveis*, mantidas nas instituições transmissoras por seus clientes, incluindo dados como denominação, modalidade, número do contrato, tarifas, prazo, prestações, pagamentos (ao menos para os últimos 12 meses), amortizações, garantias, encargos e taxas de juros remuneratórios.

Essa API não faz separação entre pessoa natural e pessoa jurídica.

Antes de qualquer *endpoint* da *camada de integração* ser acionado, a plataforma já verificou a autenticidade da origem da chamada e a validade, data de expiração, permissões e escopo do consentimento enviado pelo receptor, garantindo que se trata de uma requisição autorizada.

Existem *endpoints* para:

- Obter a lista de contratos de antecipação de recebíveis consentidos pelo cliente;
- Obter os dados de um contrato de antecipação de recebíveis;
- Obter os dados do cronograma de parcelas de um contrato de antecipação de recebíveis;
- Obter a lista de garantias vinculadas a um contrato de antecipação de recebíveis;
- Obter os dados de pagamento de um contrato de antecipação de recebíveis.

## *Open API Specification* da API

A documentação da API de Direitos Creditórios a ser construída na *camada de integração* pode ser encontrada [**aqui**][API-Direitos-Creditórios].

Para fazer o download do arquivo YAML/OAS que contém a especificação da API clique [**aqui**](invoice-financings-2-3-0.yml){:download="invoice-financings-2-3-0.yml"}.

{: .destaque}
Alguns navegadores internet, como *Chrome*, ocasionalmente sinalizam como *não segura* a operação de *download* de arquivos YAML, exigindo o desbloqueio manual pelo usuário. Eses arquivos, entretanto, tem conteúdo do tipo texto e não apresentam risco por si.

[API-Direitos-Creditórios]: ../../../../swagger-ui/index.html?api=Direitos-Creditórios
