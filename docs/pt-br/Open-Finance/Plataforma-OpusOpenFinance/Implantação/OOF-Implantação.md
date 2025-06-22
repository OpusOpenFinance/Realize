---
layout: default
title: "Implantação da Plataforma"
parent: "Opus Open Finance"
nav_order: 3
has_children: true
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Implantação/OOF-Implantação/"
---

# Implantação da Plataforma

O processo de implantação da **Plataforma Opus Open Finance** segue uma sequência de etapas bem definida que incluem desde a correta configuração dos ambientes de execução necessários até a efetiva entrada em produção. A equipe da Opus acompanha todos os passos da implantação, que serão apresentados abaixo, de maneira a garantir o sucesso de cada etapa.

Durante a implantação, um **Delivery Manager** do time da Opus é designado para gerenciar o processo de ponta a ponta, mantendo o contato contínuo com o cliente. Após a implantação, a Opus e o cliente deverão definir quem serão os pontos focais para o dia a dia do relacionamento tanto para acompanhar a operação e o devido cumprimento dos SLAs regulatórios quanto para avaliar e implementar novas exigências regulatórias.

Um ponto importante a ressaltar é que as etapas mais trabalhosas do processo de implantação são aquelas relacionadas à integração da **Plataforma Opus Open Finance** aos sistemas de retaguarda e canais de atendimento (aplicativo móvel e Web Internet Banking) da instituição financeira. Tais etapas exigem o desenvolvimento de novos artefatos de software e a adaptação das aplicações de atendimento aos clientes. Na documentação existem seções específicas que detalham as etapas de integração necessárias para cada perfil de participação da instituição financeira no *Open Finance Brasil*.

---

# Roadmap de Implantação

![Roadmap](./images/implantação.png)

## 1. **Kickoff**

- Apresentação do plano de projeto com detalhamento de atividades e cronograma.
- Definição da equipe necessária para cada etapa do processo.
- Introdução à equipe de implantação.

---

## 2. **Configuração dos Ambientes**

- Provisionamento dos ambientes:
  - Desenvolvimento
  - Homologação
  - Produção
- Configuração da **Plataforma Opus Open Finance** nos ambientes.
- Configuração do *sandbox* do diretório de participantes do Open Finance Brasil, que é o ambiente seguro de testes do ecossistema voltado para a realização de testes de integração.

---

## 3. **Certificação OpenID**

- Execução de testes para validação do ambiente de homologação.
- Preparação das evidências para envio à OpenID ([certificações RP e OP](../../Open-Finance-Brasil/OFB-Certificações.html)).
- Efetuação do pagamento da taxa de certificação.
- Publicação da instituição no [site oficial da OpenID][Site-OpenID].

---

## 4. **Integração das Telas**

- Construção das telas da [jornada de consentimento](../../Open-Finance-Brasil/JornadaConsentimento/OFB-JornadaConsentimento.html):
  - Para web, aplicativo e handoff (caso necessário).
  - De acordo com o <a href=https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17378535/Guia+de+Experi+ncia+do+Usu+rio target=_blank>guia de experiência do usuário</a> do *Open Finance Brasil*.
- Execução de testes da jornada de consentimento.
- Integração completa da jornada nos canais da instituição.

---

## 5. **Layer de Integração**

- Integração dos sistemas de retaguarda da instituição ao produto, de acordo com o [perfil de participação da instituição financeira](../../Open-Finance-Brasil/PerfisOFB/OFB-Perfis.html). Tipicamente, [envolve a construção do *layer de integração*](../Integração/OOF-Integração.html) adaptado aos sistemas de retaguarda da instituição.
- **Nota:** Normalmente, não é necessário adaptar os sistemas de retaguarda em si, mas mapear a forma de extração das informações referentes a cada produto financeiro oferecido pela instituição (no caso do perfil transmissor de dados), ou a forma de realizar pagamentos e consultar o resultado dessas operações (no caso do perfil detentor de conta). A camada de integração funciona justamente como um adaptador entre os formatos internos dos sistemas de retaguarda e aqueles exigidos pelo *Open Finance Brasil*.

---

## 6. **Migração**

- Migração de consentimentos e DCRs para a nova base do produto.
- Necessária apenas para instituições que já participam do Open Finance com outra solução ou tecnologia própria.

---

## 7. **Configurações Finais**

- Testes da jornada completa com layer de integração e telas prontas.
- Execução de testes funcionais.
- Configuração do diretório de participantes de produção.

---

## 8. **Certificados Digitais**

- Aquisição dos [certificados digitais](../../Open-Finance-Brasil/OFB-Certificações.html).
- Cadastro dos certificados no diretório.

---

## 9. **Go-Live**

- Início do monitoramento da solução.
- Envio de relatórios regulatórios.

[Site-OpenID]: https://openid.net/certification/#FAPI_OPs
