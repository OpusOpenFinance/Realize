#!/bin/bash

set -e  # Interrompe o script imediatamente se qualquer comando falhar

# Define os caminhos principais de build e destino final
BASE="$HOME/site_doc_oof"
BUILD_TMP="$BASE/tmp-build"          # Diretório temporário para gerar cada build isolado
FINAL_DEST="$BASE/_site"             # Diretório final para o site completo
DOCS_DEST="$FINAL_DEST/Documentation" # Subdiretório para os idiomas

# Garante que estamos no diretório raiz da documentação
if [ "$(basename "$PWD")" != "docs" ]; then
  cd docs
fi

echo "🔄 Limpando build anterior..."
bundle exec jekyll clean             # Remove cache e _site interno do Jekyll
rm -rf "$BUILD_TMP" "$FINAL_DEST"    # Remove builds anteriores (temporário e final)

# Gera apenas a página index.html com redirecionamento por idioma
build_redirect() {
  echo "🌐 Gerando página de redirecionamento (index.html)..."
  bundle exec jekyll build \
    --config _config.yml,_config-redirect.yml \
    --destination "$BUILD_TMP/index"
}

# Gera a versão em português, isoladamente
build_pt_br() {
  echo "🇧🇷 Gerando versão em português (pt-br)..."
  JEKYLL_ENV=pt-br bundle exec jekyll build \
    --config _config.yml,_config-pt-br.yml \
    --destination "$BUILD_TMP/pt-br"
}

# Gera a versão em inglês, isoladamente
build_en() {
  echo "🇺🇸 Gerando versão em inglês (en)..."
  JEKYLL_ENV=en bundle exec jekyll build \
    --config _config.yml,_config-en.yml \
    --destination "$BUILD_TMP/en"
}

# Monta o destino final apenas com os diretórios que foram realmente gerados
assemble_final_site() {
  echo "📦 Montando conteúdo final em $FINAL_DEST..."
  mkdir -p "$DOCS_DEST"

  # Move pt-br se ele foi gerado
  if [ -d "$BUILD_TMP/pt-br" ]; then
    echo "📁 Movendo pt-br..."
    mv "$BUILD_TMP/pt-br" "$DOCS_DEST/"
  fi

  # Move en se ele foi gerado
  if [ -d "$BUILD_TMP/en" ]; then
    echo "📁 Movendo en..."
    mv "$BUILD_TMP/en" "$DOCS_DEST/"
  fi

  # Move index.html se ele foi gerado
  if [ -f "$BUILD_TMP/index/index.html" ]; then
    echo "📄 Movendo index.html..."
    mkdir -p "$FINAL_DEST"
    mv "$BUILD_TMP/index/index.html" "$FINAL_DEST/index.html"
    # Copia index.html, garantindo redirecionamento também se for acessado via ?Documentation.
    cp "$FINAL_DEST/index.html" "$DOCS_DEST/index.html"
  fi
}

# Lógica para determinar qual build executar com base no argumento recebido
case "$1" in
  pt-br|-pt-br)
    build_pt_br
    ;;
  en|-en)
    build_en
    ;;
  *)
    build_redirect
    build_pt_br
    build_en
    ;;
esac

# Monta o site final a partir dos builds realizados
assemble_final_site

echo "✅ Build concluído com sucesso em $FINAL_DEST"
