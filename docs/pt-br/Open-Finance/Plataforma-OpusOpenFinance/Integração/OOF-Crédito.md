---
layout: default
title: "Operações de Crédito"
parent: "Compartilhamento de Dados"
nav_order: 4
has_children: true
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Integração/OOF-Crédito/"
---

# Operações de Crédito

Todas as modalidades de operações de crédito são passíveis de compartilhamento de dados no escopo do *Open Finance Brasil*.

O consentimento para compartilhamento de dados efetuado pelo cliente é realizado por agrupamento de produtos. Isso significa que, se o cliente conceder um consentimento de compartilhamento de dados para "*Operações de Crédito*" todas as modalidades estarão incluídas.

As diferentes modalidades de operações de crédito são:

- Empréstimos
- Financiamentos
- Adiantamento a depositantes
- Direitos creditórios descontados

Dado que cada uma dessas modalidades possui suas próprias características, a *camada de integração* deve implementar quatro APIs distintas, considerando seus diferentes tipos de dados.

Na documentação oficial do *Open Finance Brasil* há uma tabela que resume as operações de crédito associadas a cada modalidade, bem como a API que deve se responsabilizar por ela, e que pode ser visualizada [aqui][Tabela-Crédito-OFB].

Todas as APIs compartilham algumas características importantes definidas pelo regulatório:

- Todas as operações de crédito dos últimos 12 meses são escopo de exposição no *Open Finance Brasil*, salvas as exceções apresentadas nos itens subsequentes abaixo;
- Operações de crédito liquidadas há mais de 12 meses em relação à data de consulta pela instituição receptora não estarão mais disponíveis (há um *status* de retorno nas APIs, *UNAVAILABLE*, para sinalizar eventuais consultas específicas a operações que excederam esse limite de prazo);
- Casos de uso em que um cliente final efetue um consentimento para a qual um dos contratos exija a aprovação de múltiplas alçadas (*PENDING_AUTHORISATION*) e outro(s) contrato(s) esteja(m) disponível para consulta (*AVAILABLE*), o comportamento esperado é que cada contrato tenha seu *status* representado de forma independente, disponibilizando imediatamente os contratos já aprovados.
- Operações de credito canceladas não são escopo de exposição.
- Operações de crédito que tenham ido para perda não são escopo de exposição no Open Finance;
- Operações de crédito que portadas para outra instituição deixam de ser escopo de exposição.

Contratos cancelados, que tenham ido para perda ou portados, se tiverem sido compartilhados anteriormente, deverão ser sinalizados com *status UNAVAILABLE*.

O detalhamento das APIs de cada modalidade de operação de crédito pode ser encontrado na tabela abaixo:

|API                             |Link                     |
|--------------------------------|:-----------------------:|
|Empréstimo                      |[Link][Empréstimo]|
|Financiamento                   |[Link][Financiamento]|
|Adiantamento a depositantes     |[Link][Adiantamento]|
|Direitos creditórios descontados|[Link][Direitos-Creditórios]|

[Empréstimo]: ../apis/Empréstimo.html
[Financiamento]: ../apis/Financiamento.html
[Adiantamento]: ../apis/Adiantamento.html
[Direitos-Creditórios]: ../apis/DireitosCreditórios.html
[Tabela-Crédito-OFB]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/320176146/Orienta+es+-+DC+Opera+es+de+cr+dito#Tabela-com-as-modalidades-e-submodalidades-das-APIs-de-opera%C3%A7%C3%B5es-de-cr%C3%A9dito
