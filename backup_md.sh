#!/bin/bash

# Caminho de origem e destino
SRC_DIR="docs"
DEST_DIR="$HOME/bak"

echo "📁 Fazendo backup de arquivos .md de '$SRC_DIR/' para '$DEST_DIR/'..."

# Etapa 1: Backup com estrutura preservada
cd "$SRC_DIR" || { echo "Erro: diretório '$SRC_DIR' não encontrado."; exit 1; }

find . -name "*.md" -exec install -D {} "$DEST_DIR/{}" \;

echo "✅ Backup realizado."

# Etapa 2: Contagem de arquivos
# cd "$SRC_DIR"
find . -name "*.md" | sort > /tmp/md_docs.txt
cd "$DEST_DIR"
find . -name "*.md" | sort > /tmp/md_bak.txt

COUNT_SRC=$(wc -l < /tmp/md_docs.txt)
COUNT_BAK=$(wc -l < /tmp/md_bak.txt)

echo "🔢 Arquivos encontrados:"
echo "- Origem: $COUNT_SRC"
echo "- Backup: $COUNT_BAK"

# Etapa 3: Comparação de caminhos
echo "🔍 Verificando integridade do backup..."
if diff /tmp/md_docs.txt /tmp/md_bak.txt > /dev/null; then
  echo "✅ Todos os arquivos foram copiados corretamente com estrutura preservada."
else
  echo "⚠️ Diferenças encontradas entre origem e backup!"
  diff /tmp/md_docs.txt /tmp/md_bak.txt
fi
