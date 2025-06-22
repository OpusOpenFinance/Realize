---
layout: default
title: "Integração da Plataforma"
parent: "Opus Open Finance"
nav_order: 4
has_children: true
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Integração/OOF-Integração/"
---

# Integração da Plataforma na instituição financeira

A **Plataforma Opus Open Finance** realiza a *interface* entre instituições financeiras e o ecossistema *Open Finance Brasil*, realizando todas as atividades inerentes a essa *interface* como a implementação das APIs regulatórias, a criação e gestão de consentimentos e a validação de cada chamada recebida de outras instituições financeiras. A plataforma funciona como uma camada que abstrai os aspectos específicos do ecossistema de Open Finance, e interage com os sistemas da instituição financeira para o atendimento aos requisitos das normas regulatórias.

Para o atendimento às operações implementadas no escopo do *Open Finance Brasil*, a plataforma interage com componentes de software da instituição financeira cliente em dois momentos distintos:

- Na criação de um consentimento;
- No atendimento de requisições vindas de outras instituições financeiras.

## Integração para criação de um consentimento

A criação de um consentimento exige interação com o cliente final da instituição financeira. Na verdade, o mesmo vale para a remoção de consentimentos. Dessa forma, é necessário integrar os sistemas que implementam os principais canais digitais de atendimento - tipicamente o aplicativo móvel e o Internet Banking Web - à plataforma. A forma de integração dos canais de atendimento à plataforma é detalhada [aqui][Integração app-web].

## Integração aos sistemas de retaguarda para atendimento de requisições

As requisições, por sua vez, são feitas através de chamadas à API regulatória realizadas pela instituição que está demandando serviços, que podem ser pedidos de envio de dados de clientes - no caso de compartilhamento de dados - ou de efetivação de pagamentos. Para atendê-las, a plataforma realiza todas as validações necessárias para garantir que se tratam de requisições válidas e que estão de acordo com os consentimentos associados a elas. A cada chamada, após fazer as validações, a plataforma aciona os sistemas de retaguarda da instituição financeira para efetivar o atendimento à requisição. Esse acionamento e realizado através de uma *camada de integração* (ou *integration layer*).

A abordagem de concentrar a integração entre a plataforma e os sistemas de retaguarda da instituição financeira em uma camada distinta proporciona isolamento funcional entre os componentes, garantindo que a solução mantenha uma mesma base de implementação para todos os clientes que a utilizam. As características específicas dos sistemas de retaguarda cada instituição financeira ficam contidas nessa camada. Naturalmente, há um incentivo econômico para isso: o custo de manutenção evolutiva da plataforma é rateado entre todos os clientes que utilizam a plataforma.

Em linhas gerais, as requisições do *Open Finance Brasil* estão divididos em duas categorias distintas:

- Consultas a Dados de clientes
- Realização de pagamentos

Dadas as características específicas de cada categoria de requisições, a plataforma utiliza modelos de integração diferentes para cada uma. Em ambos os casos **é necessária a construção de artefatos de software** que realizarão a interação entre a plataforma e os sistemas de retaguarda da instituição financeira.

No caso da integração de dados, necessária para o [perfil *transmissor de dados*][Transmissor], o detalhamento do modelo de integração pode ser encontrado [**neste link**][Camada de integração].

No caso de pagamentos, necessário para o [perfil *detentor de contas*][Detentor], o detalhamento do modelo de integração pode ser encontrado [**nesse  link**][Conectores de Pagamento].

[Camada de Integração]: ./CamadaIntegração.html
[Conectores de Pagamento]: ./Conectores-Pagto.html
[Integração app-web]: ./Jornada-de-Ux/App-e-Web.html
[Transmissor]: ../../Open-Finance-Brasil/PerfisOFB/OFB-Transmissor.html
[Detentor]: ../../Open-Finance-Brasil/PerfisOFB/OFB-Detentor.html
