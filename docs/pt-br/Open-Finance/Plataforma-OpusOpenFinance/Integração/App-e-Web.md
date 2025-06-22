---
layout: default
title: "App e Web"
parent: "Integração da Plataforma"
nav_order: 4
has_children: true
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Integração/App-e-Web/"
---

# Integração de canais digitais de atendimento

Quando um pedido de criação de consentimento vindo de outra instituição financeira é recebido pela plataforma - seja um consentimento para compartilhamento de dados ou para a realização de um pagamento - a plataforma aciona indiretamente o aplicativo móvel do cliente final ou o Internet Banking Web, e esses artefatos devem estar preparados para tratar esse acionamento.

Para garantir que o canais digitais de atendimento estejam preparados, é necessário:

1. Construir as telas da jornada de experiência do usuário referentes à criação de consentimentos de acordo com os canais de autenticação existentes na instituições, tipicamente Aplicativo móvel e/ou Internet Banking. A jornada implementada deve respeitar o [Guia de Experiência do Usuário][GuiaUX] do *Open Finance Brasil*.
2. Realizar a integração das telas com a **Plataforma Opus Open Finance**.

## Canais digitais de atendimento

Os seguintes canais digitais de atendimento são previstas pelo *Open Finance Brasil*:

- Aplicativo mobile
- Internet Banking
- Tela de *Handoff*

> Quando a instituição financeira não oferece um canal Web para seu cliente (e o pedido de criação de consentimento veio através da Web), deve ser exibida uma tela de *Handoff*. Essa tela deverá conter um *QR Code* que será lido pelo cliente via *smartphone* para direcionar o pedido de criação de consentimento para o aplicativo móvel da instituição financeira . A **Plataforma Opus Open Finance** inclui uma tela padrão de *Handoff* que pode ser utilizada pela instituição financeira, se for o caso.

## Requisitos de UX

A jornada de experiência do usuário deve respeitar uma série de requisitos regulatórios, de maneira similar a como funciona o Pix hoje em dia. Existem duas frentes que precisam ser construídas para a jornada de UX.

### Jornada de consentimento

A [jornada de consentimento][JornadaConsentimento] representa a etapa em que o cliente final autoriza o consentimento. A jornada é muito semelhante tanto para compartilhamento de dados quanto para pagamentos, mas há particularidades que precisam ser implementadas. Mais uma vez, os detalhes são encontrados no [Guia de experiência do usuário][GuiaUX].

### Gestão do consentimento

A gestão do consentimento representa a funcionalidade que permite ao cliente  final acessar seus consentimentos de compartilhamento de dados ou pagamentos. Essa gestão permite a visualização do histórico completo de consentimentos e o poder de revogar/estender um consentimento.

## Integração com a Plataforma Opus Open Finance

Em paralelo à construção das telas do aplicativo móvel e/ou Internet Banking, é necessário também integrar esses artefatos à plataforma. As próximas páginas desta documentação detalham essa integração, bem como o funcionamento da tela de *Handoff*, caso a instituição financeira não ofereça um canal de autoatendimento via Web.

[GuiaUX]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17378535/Guia+de+Experi+ncia+do+Usu+ri
[JornadaConsentimento]: ../../../Open-Finance-Brasil/JornadaConsentimento/OFB-JornadaConsentimento.html
