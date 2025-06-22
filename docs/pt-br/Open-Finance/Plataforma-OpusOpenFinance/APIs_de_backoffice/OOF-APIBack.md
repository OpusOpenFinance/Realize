---
layout: default
title: "APIs de Gestão de Consentimentos"
parent: "Opus Open Finance"
nav_order: 2
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Plataforma-OpusOpenFinance/APIs_de_backoffice/OOF-APIBack/"
---

# APIs de Gestão de Consentimento

Os consentimentos (tanto de compartilhamento de dados quanto de pagamentos) exercem um papel central em todo o modelo de funcionamento do *Open Finance Brasil*,  garantindo que todas as transações e operações dentro do ecossistema sejam realizadas com a devida permissão explícita do cliente final.

A **Plataforma Opus Open Finance** realiza a gestão completa dos consentimentos e os armazena de forma segura em sua base de dados interna, inclusive garantido que eventuais dados pessoais sensíveis associados a esses consentimentos sejam sempre encriptados quando em repouso.

Os consentimentos só podem ser criados (e revogados) através de ação direta do cliente final, seja quando ele autoriza a realização de um pagamento ou quando fornece um consentimento de compartilhamento de dados com um participante devidamente autorizado do *Open Finance Brasil*.

Ao mesmo tempo, a criação ou revogação de um consentimento é resultado da interação segura entre participantes do ecossistema e regulada por protocolos de segurança bastante estritos. Toda e qualquer requisição recebida pela plataforma só pode ser realizada se houver um consentimento ativo e que possua as permissões adequadas para a realização da operação.

Dessa forma, toda a criação e gestão do tempo de vida e revogação de consentimentos é de reponsabilidade exclusiva da plataforma.

A API de Gestão de Consentimentos torna possível a aplicações da instituição financeira extrair informações sobre os consentimentos (ativos ou não) referentes aos pagamentos realizados e aos compartilhamentos de dados cedidos por seus clientes.

## *Open API Specification*

As definições da API em formato Open API Specification podem ser encontradas [**aqui**][API-backoffice].

Para fazer o download do arquivo YAML/OAS que contém a especificação da API clique [**aqui**](../apis/oas-oof-dados.yml){:download="oas-oof-dados.yml"}.

{: .destaque}
Alguns navegadores internet, como *Chrome*, ocasionalmente sinalizam como *não segura* a operação de *download* de arquivos YAML, exigindo o desbloqueio manual pelo usuário. Eses arquivos, entretanto, tem conteúdo do tipo texto e não apresentam risco por si.

[API-backoffice]: ../../../../swagger-ui/index.html?api=OAS-back-dados
