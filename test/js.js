document
  .querySelector(".icons .fa-search")
  .addEventListener("click", function () {
    const hiddenSearchBar = document.getElementById("hiddenSearchBar");
    hiddenSearchBar.classList.toggle("active");
  });
