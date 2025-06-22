---
layout: default
title: "API de Câmbio"
parent: "Compartilhamento de Dados"
nav_order: 6
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/apis/Câmbio/"
---

# API de Operações de Câmbio

API da *camada de integração* que retorna informações sobre operações de Câmbio realizadas nas instituições transmissoras por seus clientes, incluindo dados como informações da operação contratada, valor da operação em moeda nacional e moeda estrangeira, classificação da operação, forma de entrega, VET e, quando aplicável, valor a liquidar. Também serão compartilhados os eventos de alteração da operação, caso existam, com as informações modificadas.

São escopo de compartilhamento as operações negociadas no mercado primário, pronto (inclusive espécie, cartão pré-pago, cartão de débito) e futuro (inclusive ACC, ACE ou trava cambial).

Devem ser compartilhadas as operações contratadas e disponibilizadas nos canais eletrônicos da instituição, mesmo nas situações nas quais a operação ainda não tenha sido registrada junto ao Banco Central. Caso o evento de contratação seja anulado no Sistema de Câmbio, o que significa que a operação foi anulada, então esta operação deixa de ser escopo de exposição. Caso o registro aconteça a operação deve ser complementada com o número de operação registrado e os eventos ocorridos.

Eventos de vinculação de operações não são escopo de exposição.

A exposição se dará por cada operação de câmbio contratada pelo cliente

Essa API não faz separação entre pessoa natural e pessoa jurídica.

Antes de qualquer *endpoint* ser acionado, a plataforma já verificou a autenticidade da origem da chamada e a validade, data de expiração, permissões e escopo do consentimento enviado pelo receptor, garantindo que se trata de uma requisição autorizada.

Existem *endpoints* para:

- Obter a lista de operações de câmbio mantidas pelo cliente na instituição transmissora;
- Obter dados de uma operação de câmbio;
- Obter dados de eventos de uma operação de câmbio.

## *Open API Specification* da API

A documentação da API de Câmbio a ser construída na *camada de integração* pode ser encontrada [**aqui**][API-Câmbio].

Para fazer o download do arquivo YAML/OAS que contém a especificação da API clique [**aqui**](exchange-1-0-0.yml){:download="exchange-1-0-0.yml"}.

{: .destaque}
Alguns navegadores internet, como *Chrome*, ocasionalmente sinalizam como *não segura* a operação de *download* de arquivos YAML, exigindo o desbloqueio manual pelo usuário. Eses arquivos, entretanto, tem conteúdo do tipo texto e não apresentam risco por si.

[API-Câmbio]: ../../../../swagger-ui/index.html?api=Câmbio
