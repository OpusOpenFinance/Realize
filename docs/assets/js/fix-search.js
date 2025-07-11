/**
 * fix-search.hs
 * 
 * Corrige a busca do Just-the-Docs:
 * - Move search-results e overlay para <body>
 * - Alinha a caixa de resultados ao campo de busca
 * - Aplica layout visual aos itens
 * - Esconde resultados ao clicar em item ou fora da busca
 */
document.addEventListener("DOMContentLoaded", function () {
  const searchInput = document.getElementById("search-input");
  const searchResults = document.getElementById("search-results");
  const overlaySelector = ".search-overlay";

  if (!searchInput || !searchResults) return;

  moveSearchResultsToBody();
  moveSearchOverlayToBody();
  alignSearchBoxToInput();
  observeSearchItems();

  window.addEventListener('resize', alignSearchBoxToInput);
  window.addEventListener('scroll', alignSearchBoxToInput);

  // Ativa/desativa a busca com base no texto digitado
  searchInput.addEventListener("input", () => {
    const value = searchInput.value.trim();
    if (value.length > 0) {
      document.body.classList.add("search-active");
    } else {
      document.body.classList.remove("search-active");
    }
  });

  // Fecha busca ao clicar em item da lista
  document.addEventListener("click", function (e) {
    if (e.target.closest(".search-result")) {
      document.body.classList.remove("search-active");
      searchInput.blur();
    }
  });

  // Fecha busca ao clicar fora da área de busca
  document.addEventListener("click", function (e) {
    const insideSearch =
      e.target.closest("#search-results") ||
      e.target.closest("#search-input") ||
      e.target.closest("#search-button");
    if (!insideSearch) {
      document.body.classList.remove("search-active");
    }
  });

  function moveSearchResultsToBody() {
    if (searchResults.parentElement !== document.body) {
      document.body.appendChild(searchResults);
    }
  }

  function moveSearchOverlayToBody() {
    let overlay = document.querySelector(overlaySelector);
    if (!overlay) {
      overlay = document.createElement("div");
      overlay.className = "search-overlay";
    }
    if (overlay.parentElement !== document.body) {
      document.body.appendChild(overlay);
    }
  }

  function alignSearchBoxToInput() {
    const wrapper = document.querySelector(".search-input-wrap");
    const results = document.getElementById("search-results");
    if (!wrapper || !results) return;

    // Coordinates relative to viewport
    const rect = wrapper.getBoundingClientRect();

    // Get scroll offset
    const scrollTop = window.scrollY || document.documentElement.scrollTop;
    const scrollLeft = window.scrollX || document.documentElement.scrollLeft;

    // Absolute position relative to full page
    const top = rect.bottom + scrollTop + 4; // 4px below the input box
    const left = rect.left + scrollLeft;

    // Apply position to results window
    results.style.position = "absolute";
    results.style.top = `${top}px`;
    results.style.left = `${left}px`;
    results.style.width = `${rect.width}px`;
  }

  function observeSearchItems() {
    const observer = new MutationObserver(() => {
      const items = document.querySelectorAll('.search-results-list-item:not([data-enhanced])');
      items.forEach(item => {
        const icon = item.querySelector('.search-result-icon');
        const content = document.createElement('div');
        content.className = 'search-result-content';

        Array.from(item.children).forEach(child => {
          if (!child.classList.contains('search-result-icon')) {
            content.appendChild(child);
          }
        });

        item.innerHTML = '';
        if (icon) item.appendChild(icon);
        item.appendChild(content);
        item.setAttribute('data-enhanced', 'true');
      });
    });

    observer.observe(searchResults, { childList: true, subtree: true });
  }
});
