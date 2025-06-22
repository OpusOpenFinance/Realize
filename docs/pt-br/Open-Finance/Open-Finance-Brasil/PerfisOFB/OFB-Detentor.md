---
layout: default
title: "Detentor de Conta"
parent: "Perfis de participação"
nav_order: 3
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Open-Finance-Brasil/PerfisOFB/OFB-Detentor/"
---

# Detentor de Conta

O perfil de participação como **Detentor de Conta** no *Open Finance Brasil* representa a instituição que recebe solicitações de pagamento de um **Iniciador de Transação de Pagamento (ITP)**. Este perfil na **Plataforma Opus Open Finance** é responsável por atender todas as exigências regulatórias estabelecidas pelo Banco Central.

---

## Ecossistema Open Finance - Detentor de Conta

Os Detentores de Contas são as instituições onde os clientes possuem contas de deposito à vista, contas de poupança e contas de pagamento pré-pagas, que podem ser acessadas no contexto do *Open Finance Brasil* para processar iniciações de pagamento. Quem envia os pedidos de pagamento são instituições homologadas como *iniciadores de transação de pagamento*.

---

## Meios de Pagamento no Open Finance

Atualmente, os meios de pagamento previstos no Open Finance incluem:

- **Pix**
- **Boleto***
- **Débito em Conta***
- **TED/TEF***
- **Cartão de Crédito***

*Os itens marcados com asterisco ainda não estão disponíveis no Open Finance e não possuem previsão de entrada.*

---

## Jornada de Consentimento

O processo de autorização para efetuar pagamentos é feito pelo cliente por meio de uma **jornada completa de consentimento**. Mais detalhes podem ser encontrados [aqui](../JornadaConsentimento/OFB-JornadaConsentimento.html).

---

## Roadmap Regulatório

### Funcionalidades já disponíveis

- **Pagamento Pix imediato**
- **Pagamento Pix agendado**
- **Recorrência de pagamentos agendados**
- **Transferências automáticas entre contas de mesma titularidade** (recurso também conhecido como *sweeping accounts* ou *transferências inteligentes*)

### Funcionalidades previstas

- **Pagamentos em lote (1:n)**
- **Pagamentos sem redirecionamento** (ausência do redirecionamento para a Detentora de Conta na perspectiva do usuário)
- **Pagamentos recorrentes** (Variable Recurring Payment - VRP - implementado pelo *Pix Automático*)
- **Pix por aproximação**

O [portal do desenvolvedor](https://openfinancebrasil.atlassian.net/wiki/spaces/DraftOF/calendars) oferece um calendário com as próximas entregas.

---

## APIs Regulatórias

### APIs Vigentes

|**Descrição**                     | **Link para o Portal do Desenvolvedor**                           |
|----------------------------------|:-------------------------------------------------------------------:|
|**Iniciação de Pagamento**        |[Acesse aqui](https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17375943/SV+API+-+Pagamentos) |
|**Iniciação de Pagamentos Automáticos**        |[Acesse aqui](https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/198410569/SV+API+-+Pagamentos+Autom+ticos) |
|**Iniciação de Pagamento**        |[Acesse aqui](https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/141557761/SV+API+-+Pagamentos+sem+Redirecionamento) |

## Plataforma Opus Open Finance

Para utilizar a **Plataforma Opus Open Finance** para atender às exigências regulatórias do perfil de participação Detentor de Conta, é necessário concluir as seguintes etapas:

1. Completar o processo de [implantação](../../Plataforma-OpusOpenFinance/Implantação/OOF-Implantação.html).
2. Construir a experiência do usuário para aplicativo e Internet Banking (se houver). [O guia de experiência do usuário](https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17378535/Guia+de+Experi+ncia+do+Usu+rio) apresenta os detalhes do fluxo de interação com  o usuário final que os canais digitais de atendimento devem implementar para atender às normas regulatórias.
3. Construir a camada de integração com os sistemas de retaguarda de pagamentos.
