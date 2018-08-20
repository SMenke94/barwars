const filterButton = document.getElementById("filter-button");
const showFilters = document.getElementById("show-filters");

// Toggle the filter box

filterButton.addEventListener('click', function() {
  showFilters.classList.toggle('hide-filter');
});
