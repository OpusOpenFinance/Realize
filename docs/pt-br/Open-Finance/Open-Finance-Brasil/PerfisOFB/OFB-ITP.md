---
layout: default
title: "ITP"
parent: "Perfis de participação"
nav_order: 5
has_children: true
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Open-Finance-Brasil/PerfisOFB/OFB-ITP/"
---

# Iniciador de Transação de Pagamentos

O Iniciador de Transação de Pagamento (ITP) é o perfil do Open Finance autorizado para realizar iniciações de pagamento no ecossistema. O ITP iniciará jornadas de consentimento (para realização de pagamentos) em instituições participantes do Open Finance que são detentores de Conta. Esse perfil possibilita uma série de novos casos de uso, pois o ITP não precisa ser custodiante do dinheiro em nenhum momento durante a transação e, também, não precisa ser o dono da conta corrente que fará a liquidação do pagamento.

## Meios de Pagamento no Open Finance

Atualmente, os meios de pagamento previstos no Open Finance incluem:

- **Pix**
- **Boleto***
- **Débito em Conta***
- **TED/TEF***
- **Cartão de Crédito***

{: .nota}
Os itens marcados com asterisco ainda não estão disponíveis no Open Finance e não possuem previsão de entrada.

## Jornada de Consentimento

O processo de autorização para efetuar pagamentos é feito por meio de uma **jornada completa de consentimento**. Mais detalhes podem ser encontrados [aqui][Jornada-Consentimento].

> Além disso, o [diagrama de sequência][Diagrama-Sequência] ilustra o fluxo de consentimento de acordo com cada [API oferecida pelo produto][API-pagamentos];

## Roadmap Regulatório

### Funcionalidades já disponíveis

- **Pagamento Pix imediato**
- **Pagamento Pix agendado**
- **Recorrência de pagamentos agendados**
- **Transferências automáticas entre contas de mesma titularidade** (conhecidas como *sweeping accounts*)

### Funcionalidades previstas

- **Pagamentos em lote (1:n)**
- **Pagamentos sem redirecionamento** (ausência do redirecionamento para a Detentora de Conta na perspectiva do usuário)
- **Pagamentos recorrentes** (Variable Recurring Payment - VRP)
- **Pix por aproximação**

O [portal do desenvolvedor][Portal-Dev] oferece um calendário com as próximas entregas.

## Plataforma Opus Open Finance

Para iniciar a utilização do software, existem alguns pré-requisitos:

1. Completar o processo de [setup (implantação)][Setup];

2. Ter completado toda a homologação do perfil de Detentor de Conta. (recomendamos a avaliação desse critério com o compliance de sua instituição);

3. Criar a experiência de usuário para que a jornada de consentimento seja possível para os clientes. O [Guia de Experiência do Usuário do Open Finance Brasil][GuiaUX] traz uma descrição detalhada sobre essa jornada.

4. Completar todo o processo de [onboarding de ITP][OnboardingITP]

{: .destaque}
O módulo de iniciação de pagamentos da **Plataforma Opus Open Finance** é completamente autocontido e não exige a construção de uma camada de integração. Rodando de maneira autônoma, ele oferece APIs que isolam os detalhes específicos dos protocolos de autenticação e segurança do *Open Finance Brasil* e facilita muito a construção de aplicações.  A descrição dessas APIs pode ser encontrada [aqui (pagamentos)][API-pagamentos] e [aqui (pagamentos automáticos)][API-pagamentos-automáticos].  

[GuiaUX]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17378535/Guia+de+Experi+ncia+do+Usu+ri
[API-pagamentos]: ../../../../swagger-ui/index.html?api=OAS-ITP-pagamentos
[API-pagamentos-automáticos]: ../../../../swagger-ui/index.html?api=OAS-ITP-pagamentos-automaticos
[OnboardingITP]: ../PerfisOFB/OnboardingITP.html
[Setup]: ../../Plataforma-OpusOpenFinance/Implantação/OOF-Implantação.html
[Jornada-Consentimento]: ../JornadaConsentimento/OFB-JornadaConsentimento.html
[Diagrama-Sequência]: ../../Plataforma-OpusOpenFinance/ITP/images/consent-sequence.png
[Portal-Dev]: https://openfinancebrasil.atlassian.net/wiki/spaces/DraftOF/calendars
