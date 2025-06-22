---
layout: default
title: "Internet Banking"
parent: "App e Web"
nav_order: 2
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/Integração/Jornada-de-Ux/consentimento/web2as/OOF-Internet-Banking/"
---

# Internet Banking

Caso a instituição necessite, ela pode autenticar seus clientes através de sua própria página de login no *Internet Banking*. Uma vez realizado o login, a instituição pode optar por utilizar as telas de geração de consentimento padrão do Opus Open Banking ou então suas próprias telas customizadas.

## Iniciando o fluxo de login web customizado

O início do fluxo ocorre a partir da chamada do primeiro `GET` à URL de autenticação junto ao Authorization Server da **Plataforma Opus Open Finance**. A URL apresenta o seguinte padrão: (`https://<EV-FQDN-open-banking>/auth/auth`).

Após receber esse `GET`, o Authorization Server então redireciona o browser do usuário para a URL do sistema responsável pela autenticação da instituição. Essa URL é configurável dentro do Authorization Server.

Tal configuração define o *template* da URL de autenticação customizada da instituição, desta forma o identificador inicial do fluxo de autenticação que será tratado pela página de login pode ser mesclado na URL da forma que a instituição desejar.

A mescla permite a instituição receber o identificador através da `query-string`, `fragment` ou `url`, como exibido na tabela abaixo:

| Formato      | URL Exemplo                                            |
| ------------ | ------------------------------------------------------ |
| Query string | `https://ev.instituicao.com.br?codigo=<IDENTIFICADOR>` |
| Fragment     | `https://ev.instituicao.com.br#<IDENTIFICADOR>`        |
| URL          | `https://ev.instituicao.com.br/<IDENTIFICADOR>`        |

 O exemplo fornecido na documentação utiliza o formato **Fragment** que é o mais recomendado dentre as opções existentes, pois ele também remove o identificador do histórico de navegação, evitando qualquer confusão por parte do cliente (por exemplo ao tentar utilizar uma URL antiga de consentimento).

Se essa configuração estiver definida o Authorization Server entenderá que se trata de um fluxo de autenticação web customizado e retornará então para a aplicação de autorização da instituição um endereço para redirecionamento contendo a identificação do `command` de autenticação criado para início do fluxo.

A comunicação entre o aplicativo web da instituição e o Authorization Server acontecerá através de `command`s dentro de um loop de eventos. A definição deste loop de eventos será detalhada no momento de iniciar o projeto de integração do aplicativo móvel com a plataforma da Opus.

## Utilizando o fluxo de geração de consentimento customizado

A instituição pode escolher entre utilizar as telas de geração de consentimento padrão fornecidas junto do Opus Open Finance, ou ainda optar por utilizar suas próprias telas de geração de consentimento.

Há uma configuração no Authorization Server que permite definir qual será a escolha da instituição.

Caso a instituição opte por utilizar suas próprias telas de geração de consentimento, a parte do fluxo relativa à escolha dos recursos e aprovação/recusa do consentimento, bem como a tela final responsável por realizar a transição da geração do consentimento de volta para a instituição financeira que realizou a requisição, ficará por conta da própria instituição, que deverá se comunicar via API com o Authorization Server para informar os recursos selecionados, bem como a aprovação/recusa do consentimento em questão.

## Open API Specification

As definições da API REST disponibilizado pelo Authorization Server podem ser consultadas [aqui][API-Mobile]


## Diagrama de sequência

O diagrama de sequência a seguir ilustra o funcionamento entre o aplicativo web da instituição e o Authorization Server, englobando a etapa de autenticação seguida do fluxo de geração de consentimento, tanto para a configuração de uso das telas padrão como uso das
telas customizadas.

![Diagrama de sequência](images/sequencia-web2as.svg)

[API-Mobile]: ../../../../../../../swagger-ui/index.html?api=Mobile
