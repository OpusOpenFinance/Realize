---
layout: default
title: "Dados abertos"
parent: "Perfis de participação"
nav_order: 1
lang: "pt-br"
alternate_lang: "/Documentation/en/Open-Finance/Open-Finance-Brasil/PerfisOFB/Dados-abertos/"
---

# Dados abertos

A frente de dados abertos do Open Finance faz referência à [fase 1 do Open Finance](../Ecossistema/OFB-Ecossistema.html). A Fase 1 possibilita que as instituições participantes do Open Finance publiquem seus dados de forma pública e acessível via API, para que qualquer requisição possa recuperar essa informações. Os dados são referentes a informações não sensíveis das próprias instituições.

## Dados listados

### Canais de atendimento

- Dependências próprias, incluindo a lista de agências bancárias mantidas pela instituição;
- Canais de atendimento eletrônico;
- Canais de atendimento telefônico;
- Correspondentes bancários da instituição;
- Terminais de autoatendimento (próprios e compartilhados).

### Produtos

- Contas
- Empréstimos
- Financiamentos
- Antecipação de recebíveis
- Cartão de crédito
- Adiantamento a depositantes
- Investimentos
- Câmbio
- Credenciamento
- Títulos de capitalização
- Seguros
- Previdência

> - No caso dos produtos financeiros, todos devem ser separados entre pessoa natural e jurídica.  
> - Todos os valores monetários ou de taxas representados dentro das estruturas abaixo são separados em diferentes faixas. Ao todo são 4 faixas de igual proporção que dividem o intervalo do menor até o maior valor. Há um valor correspondente para cada faixa que é o valor da mediana de cada uma dessas faixas. Acompanhado a cada faixa, tem-se o percentual de clientes em cada uma dessas faixas (para o serviço x, 10% dos clientes daquele serviço x estão na faixa 1, 15% na faixa 2, 20% na faixa 3 e 55% na faixa 4).

## Critério de obrigatoriedade

O perfil de dados abertos é obrigatório a todas as instituições que são participantes (obrigatórios ou voluntários) do perfil de dados transacionais (fase 2).

## Plataforma Opus Open Finance

A **Plataforma Opus Open Finance** implementa a API de dados abertos e basta uma integração (muito simples) para que a fase 1 esteja operacional, além das seguintes etapas:

1. Ter concluído a [implantação do produto][Implantação].

2. Realizar a integração concomitante a integração do Transmissor de Dados. (ideal é que ambos os perfis entrem em produção ao mesmo tempo)

> A integração é realizada por meio de uma estrutura em formato JSON gerada dinâmica ou estaticamente para reportar os dados ao ecossistema do *Open Finance Brasil*.

[Implantação]: ../../Plataforma-OpusOpenFinance/Implantação/OOF-Implantação.html
