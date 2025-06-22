---
layout: default
title: "Certificações e Certificados"
parent: "Open Finance Brasil"
nav_order: 4
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Open-Finance-Brasil/OFB-Certificações/"
---

# Certificações e Certificados

Para participar do Open Finance, as instituições financeiras devem realizar os procedimentos para obter dois tipos de certificação:

- **Certificação de segurança OpenID**
- **Certificação funcional**

Além disso, o ecossistema exige que as participantes contratem alguns certificados digitais:

- **Certificado de Transporte**
- **Certificado de EV**
- **Certificado de autenticação**
- **Certificado de Assinatura**

{: .nota}
**Certificações e certificados são diferentes!**
**Certificações** são evidências de que a implementação do *Open Finance Brasil* do participantes está de acordo com as especificações funcionais e de segurança.
**Certificados** são gerados por uma certificadora autorizada e utilizados para garantir a autenticidade e/ou encriptar a comunicação entre as participantes do *Open Finance Brasil*.

---

## Certificação de segurança OpenID

O protocolo de segurança adotado pelo Open Finance brasileiro segue os requisitos da [OpenID Foundation](https://openid.net/).

Um motor de conformidade de segurança garante que uma instituição atende aos requisitos desse protocolo, realizando os testes necessários na camada FAPI-BR dentro da estrutura da OpenID.

### Tipos de certificação

1. **OpenID Providers (OP)**:  
   Obrigatória para os perfis de Detentora de Conta e Transmissora de Dados.
2. **Relying Parties (RP)**:  
   Obrigatória para os perfis de Iniciadora de Transação de Pagamento (ITP) e Receptora de Dados.

### Recursos para certificação

- [Guia de certificação de Conformidade](https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/155910145/Guia+de+Certifica+o+de+Conformidade)
- [Diretrizes Técnicas de Certificação de Conformidade](https://openfinancebrasil.atlassian.net/wiki/spaces/OF/pages/17378905/Diretrizes+T+cnicas+de+Certifica+o+de+Conformidade)
- [Orientações para certificação](https://openfinancebrasil.atlassian.net/wiki/download/attachments/17378905/20230124_Orienta%C3%A7%C3%B5es%20sobre%20certifica%C3%A7%C3%B5es.pptx?api=v2)

*Durante o processo de implantação a Opus cuida de todo o processo de certificação de segurança para sua instituição.*

---

## Certificação funcional

No contexto de homologação do *Open Finance Brasil*, as diversas especificações de APIs devem ser implementadas pela instituição participante. Para garantir que a participante esteja com toda a jornada daquela funcionalidade nos parâmetros esperados, a governança do *Open Finance Brasil* fornece um *motor funcional* para testes. Dentro dele estão disponíveis diversos planos de testes para que cada uma das APIs regulatórias seja testada e certificada de acordo com o grau de aderência de seu comportamento às normas regulatórias.

É possível acompanhar os testes publicados das instituições participantes [através desse link](https://web.conformance.directory.openbankingbrasil.org.br/plans.html?public=true).

### Etapas para certificação

1. Criar conta no [sandbox](https://web.sandbox.directory.openbankingbrasil.org.br/organisations) do diretório de participantes.
2. Configurar o diretório de [sandbox](https://web.sandbox.directory.openbankingbrasil.org.br/organisations).
3. Certificar o ambiente de homologação (Certificação de segurança OpenID).
4. Desenvolver o layer de integração.
5. Realizar os testes e obter a certificação funcional.

*Os testes obrigatórios variam conforme o perfil de atuação e os produtos oferecidos pela instituição.*

---

## Certificados digitais

Os certificados digitais são divididos em 4 tipos:

1. **Certificado de Transporte**:
   - Autentica o canal MTLS.
   - Realiza autenticação da aplicação cliente via OAuth2.0 mTLS ou private_key_jwt.

2. **Certificado EV**:
   - Utilizado para serviços como páginas web.

3. **Certificado de Autenticação**:
   - Protege e autentica o canal TLS das APIs consumidas pelas aplicações participantes do Open Finance.

4. **Certificado de Assinatura**:
   - Realiza assinatura do payload usando JWS (JSON Web Signature).

### Necessidade de certificados por perfil

| Certificado         | Detentora de Conta | ITP | Transmissora de Dados | Receptora de Dados |
|---------------------|:--------------------:|:-----:|:-----------------------:|:--------------------:|
| Transporte          | Sim                | Não | Sim                   | Não                |
| EV                  | Sim                | Não | Sim                   | Não                |
| Autenticação        | Sim                | Sim | Sim                   | Sim                |
| Assinatura          | Sim                | Não | Sim                   | Não                |

### Autoridades certificadoras homologadas pelo *Open Finance Brasil*

- **CertiSign**
- **Serpro**
- **Soluti**
