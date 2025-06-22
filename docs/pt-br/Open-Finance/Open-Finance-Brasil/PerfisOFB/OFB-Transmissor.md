---
layout: default
title: "Transmissor de Dados"
parent: "Perfis de participação"
nav_order: 2
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Open-Finance-Brasil/PerfisOFB/OFB-Transmissor/"
---

# Perfil Transmissor de Dados

O perfil de **Transmissor de Dados** representa a instituição que recebe solicitações de compartilhamento de dados de um **Receptor de Dados**. A **Plataforma Opus Open Finance** atende a todas as exigências regulatórias estabelecidas pelo regulatório do *Open Finance Brasil* para a implementação desse perfil.

---

## Ecossistema Open Finance Brasil - Transmissor de Dados

O perfil de *Transmissor de Dados* diz respeito a instituições financeiras que participam do compartilhamento de dados no *Open Finance Brasil*. Tipicamente, ele é acionado quando clientes da instituição concedem consentimentos de compartilhamento de dados a outras instituições que, nesse contexto, são chamadas de *instituições receptoras de dados*.

Uma vez que o cliente aceitou compartilhar seus dados com outras instituições, essas passam a ter o direito de enviar periodicamente requisições de dados que podem incluir dados cadastrais do cliente, transações de conta e de cartões de crédito, operações de crédito, câmbio e investimentos (veja mais adiante). O perfil de *Transmissor de Dados* é justamente o responsável por receber, validar e atender essas requisições.

> A norma regulatória estabelece limites, chamados de *limites operacionais*, que estabelecem cotas máximas de requisições que uma instituição receptora de dados pode enviar para uma instituição transmissora de dados. Os limites operacionais atualmente vigentes no *Open Finance Brasil* podem ser encontrados [aqui][Limites-operacionais].  

---

## Dados Compartilhados

Quando ocorre um compartilhamento, o ecossistema é preparado para fornecer as seguintes informações:

### **Dados cadastrais do correntista**

- Dados cadastrais

### **Conta Corrente**

- Extrato
- Saldo

### **Cartão de crédito**

- Fatura
- Limites
- Transações

### **Operações de crédito**

- Empréstimos
- Financiamentos
- Adiantamento a depositantes (cheque especial)
- Direitos creditórios descontados (antecipação de recebíveis)

### **Câmbio**

- Operações de câmbio

### **Investimentos**

- Renda fixa bancária (CDB, LCI, LCA - protegidos pelo FGC)
- Renda fixa crédito (CRI, CRA, Debenture)
- Renda variável
- Títulos do tesouro direto
- Fundos de investimento

**Nota:** É responsabilidade do **Transmissor de Dados** fornecer todas as informações listadas acima que são oferecidas pela instituição.

---

## Jornada de Consentimento

O processo de autorização para compartilhamento de dados segue uma **jornada completa de consentimento**. Para mais informações, clique [aqui][JornadaConsentimento]

---

## Roadmap regulatório

### Funcionalidades já disponíveis

- Consulta de todos os dados listados acima.

### Funcionalidades previstas

- Sistemática de notificações: existe um desejo de aumentar a eficiência do compartilhamento de dados. Atualmente, para saber se um cliente realizou novas transações em um determinado período de tempo é necessário explicitamente realizar uma chamada à instituição financeira transmissora de dados periodicamente. A sistemática de notificações deverá permitir ao receptor de dados indicar ao transmissor quais os clientes - dos quais ele já possui consentimento de compartilhamento de dados válido - ele gostaria de monitorar. Dessa forma, periodicamente - provavelmente uma vez por dia - o transmissor poderá enviar diretamente ao receptor as eventuais transações ou alterações de dados cadastrais realizadas pelo cliente. Esse mecanismo certamente economizará um grande número de chamadas desnecessárias, reduzindo o custo para todos os participantes do ecossistema.

O [portal do desenvolvedor][Portal-Desenvolvedor] também oferece um calendário com as próximas entregas.

## Plataforma Opus Open Finance

A **Plataforma Opus Open Finance** implementa todas as APIs regulatórias do perfil transmissor de dados. Para operacionalizar esse perfil utilizando a plataforma é necessário:

1. Completar todo o processo de [implantação][Implantação].
2. Construir, para o aplicativo móvel e Internet Banking (se houver), a experiência de usuário referente à concessão de consentimentos de compartilhamento de dados, conforme definido pelo regulatório do *Open Finance Brasil*. [O guia de experiência do usuário][GuiaUX] dá mais detalhes sobre o fluxo de interação com o usuário que deve ser implementado.
3. Construir a [camada de integração][Camada-Integração] com os sistemas de retaguarda de acordo com os produtos financeiros oferecidos pela instituição para seus clientes.

[Limites-operacionais]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17924220/Limites+operacionais
[JornadaConsentimento]: ../JornadaConsentimento/OFB-JornadaConsentimento.html
[Portal-Desenvolvedor]: https://openfinancebrasil.atlassian.net/wiki/spaces/DraftOF/calendars
[Implantação]: ../../Plataforma-OpusOpenFinance/Implantação/OOF-Implantação.html
[GuiaUX]: https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17378535/Guia+de+Experi+ncia+do+Usu+rio
[Camada-Integração]: ../../Plataforma-OpusOpenFinance/Integração/CamadaIntegração.html
