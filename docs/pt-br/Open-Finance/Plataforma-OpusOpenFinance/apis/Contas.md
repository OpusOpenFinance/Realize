---
layout: default
title: "API de Contas"
parent: "Compartilhamento de Dados"
nav_order: 3
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/apis/Contas/"
---

# API de Contas

API da *camada de integração* que retorna informações de contas de depósito à vista, contas de poupança e contas de pagamento pré-pagas mantidas nas instituições transmissoras por seus clientes, incluindo dados de identificação da conta, saldos, limites e transações.

Essa API não faz separação entre pessoa natural e pessoa jurídica.

Antes de qualquer *endpoint* ser acionado, a plataforma já verificou a autenticidade da origem da chamada e a validade, data de expiração, permissões e escopo do consentimento enviado pelo receptor, garantindo que se trata de uma requisição autorizada.

Existem *endpoints* para:

- Obter a lista de contas de depósito à vista, poupança e pagamento pré-pagas mantidas pelo cliente na instituição;
- Obter dados de identificação de uma conta;
- Obter saldos de uma conta;
- Obter a lista de transações de uma conta;
- Obter a lista de transações recentes (últimos 7 dias) de uma conta;
- Obter os limites de uma conta.

Além disso, é necessário implementar uma outra API regulatória para a verificação de conta de um cliente PF ou PJ em determinada instituição. Essa API é denominada *common* e verifica se um cliente abandonou o fluxo de consentimento por não ter conta na instituição.

## *Open API Specification* das APIs

A documentação das APIs a serem construídas na *camada de integração* podem ser encontradas na tabela abaixo:

|API            |Link                   |YAML/OAS                                |
|:-------------:|:---------------------:|:--------------------------------------:|
|    Contas     |[**Link**][API-Contas] |[**Download**](accounts-2-4-1.yml){:download="accounts-2-4-1.yml"}      |
|    Common     |[**Link**][API-Common] |[**Download**](opus-commons-1-0-0.yml){:download="opus-commons-1-0-0.yml"}  |

{: .destaque}
Alguns navegadores internet, como *Chrome*, ocasionalmente sinalizam como *não segura* a operação de *download* de arquivos YAML, exigindo o desbloqueio manual pelo usuário. Eses arquivos, entretanto, tem conteúdo do tipo texto e não apresentam risco por si.

[API-Contas]: ../../../../swagger-ui/index.html?api=Contas
[API-Common]: ../../../../swagger-ui/index.html?api=Opus-Commons
