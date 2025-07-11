#
#   build_site.sh: constroi o site de documentação da Plataforma Opus Open Finance.
#
#       A construção é realizada em 3 etapas distintas:
#            (1) página de redirecionamento, (2) páginas em português e (3) páginas em inglês.
#
#       Os diretórios com os documentos fonte devem estar em $HOME/site_doc_oof.
#       As páginas HTML e os outros artefatos do site serão gerados em $HOME/_site/Documentation.
#
#       sintaxe: build_site.sh [pt-br] [en]
#                Quando chamado sem argumentos realiza as 3 etapas de construção.
#                Se chamado com argumento "pt-br", constrói apenas as páginas em português.
#                Se chamado com argumento "en" constrói apenas as páginas em inglês.
#
#!/bin/bash
set -e  # Interrompe o script se qualquer comando falhar

# Detecta ambiente (GitHub Actions ou local)
if [ -n "$GITHUB_ACTIONS" ]; then
  BASE="$PWD"
else
  BASE="$HOME/site_doc_oof"
fi

BUILD_TMP="$BASE/tmp-build"
FINAL_DEST="$BASE/_site"
DOCS_DEST="$FINAL_DEST/Documentation"

# Garante que estamos no diretório correto (raiz do docs)
if [ "$(basename "$PWD")" != "docs" ]; then
  cd docs
fi

echo "🔄 Limpando build anterior..."
bundle exec jekyll clean
rm -rf "$BUILD_TMP" "$FINAL_DEST"

# Redirecionamento (index.html raiz)
build_redirect() {
  echo "🌐 Gerando página de redirecionamento (index.html)..."
  bundle exec jekyll build \
    --config _config.yml,_config-redirect.yml \
    --destination "$BUILD_TMP/index"
}

# Build pt-br isolado
build_pt_br() {
  echo "🌐 🇧🇷 Gerando versão em português (pt-br)..."
  JEKYLL_ENV=pt-br bundle exec jekyll build \
    --config _config.yml,_config-pt-br.yml \
    --destination "$BUILD_TMP/pt-br"
}

# Build en isolado
build_en() {
  echo "🌐 🇺🇸 Gerando versão em inglês (en)..."
  JEKYLL_ENV=en bundle exec jekyll build \
    --config _config.yml,_config-en.yml \
    --destination "$BUILD_TMP/en"
}

# Montagem final em _site/Documentation
assemble_final_site() {
  echo "📦 Montando conteúdo final em $FINAL_DEST..."
  mkdir -p "$DOCS_DEST"

  if [ -d "$BUILD_TMP/pt-br" ]; then
    echo "📁 Movendo pt-br..."
    mv "$BUILD_TMP/pt-br/assets/js/search-data.json" "$BUILD_TMP/pt-br/assets/js/search-data-pt-br.json"
    mv "$BUILD_TMP/pt-br/pt-br" "$DOCS_DEST/"
    mv "$BUILD_TMP/pt-br/assets" "$DOCS_DEST/"
    mv "$BUILD_TMP/pt-br/swagger-ui" "$DOCS_DEST/" 
    # mv "$BUILD_TMP/pt-br/vendor" "$DOCS_DEST/"
    mv "$BUILD_TMP/pt-br/404.html" "$DOCS_DEST/"
    mv "$BUILD_TMP/pt-br/LICENSE" "$DOCS_DEST/"
    mv "$BUILD_TMP/pt-br/README.md" "$DOCS_DEST/"
    mv "$BUILD_TMP/en/favicon.ico" "$DOCS_DEST/" 2>/dev/null || true
  fi

  if [ -d "$BUILD_TMP/en" ]; then
    echo "📁 Movendo en..."
    mv "$BUILD_TMP/en/en" "$DOCS_DEST/"
    if [ -d "$BUILD_TMP/pt-br" ]; then
      if [ ! -d "$DOCS_DEST/assets/js" ]; then
        echo "Erro ao copiar o arquivo search-data-en.json"
        exit 1
      else
        mv "$BUILD_TMP/en/assets/js/search-data.json" "$DOCS_DEST/assets/js/search-data-en.json"
      fi
    else
      mv "$BUILD_TMP/en/assets/js/search-data.json" "$BUILD_TMP/en/assets/js/search-data-en.json"
      mv "$BUILD_TMP/en/assets" "$DOCS_DEST/"
      mv "$BUILD_TMP/en/swagger-ui" "$DOCS_DEST/"
      # mv "$BUILD_TMP/en/vendor" "$DOCS_DEST/"
      mv "$BUILD_TMP/en/404.html" "$DOCS_DEST/"
      mv "$BUILD_TMP/en/LICENSE" "$DOCS_DEST/"
      mv "$BUILD_TMP/en/README.md" "$DOCS_DEST/"
      mv "$BUILD_TMP/en/favicon.ico" "$DOCS_DEST/"
    fi
  fi

  if [ -f "$BUILD_TMP/index/index.html" ]; then
    echo "📄 Movendo index.html..."
    mkdir -p "$FINAL_DEST"
    mv "$BUILD_TMP/index/index.html" "$FINAL_DEST/index.html"
    cp "$FINAL_DEST/index.html" "$DOCS_DEST/index.html"
  fi
}

# Executa conforme argumento
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

assemble_final_site
echo "✅ Build concluído com sucesso em $FINAL_DEST"
