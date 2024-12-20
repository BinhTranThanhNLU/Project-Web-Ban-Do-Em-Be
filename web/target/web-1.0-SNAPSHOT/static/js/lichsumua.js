document.addEventListener("DOMContentLoaded", function () {
  const tabs = document.querySelectorAll(".tabs a");
  const tabContents = document.querySelectorAll("[data-content]");

  tabs.forEach((tab) => {
    tab.addEventListener("click", function (event) {
      event.preventDefault();

      // Remove active class from all tabs
      tabs.forEach((t) => t.classList.remove("active"));
      // Add active class to the clicked tab
      tab.classList.add("active");

      // Get the data-tab attribute of the clicked tab
      const tabContent = tab.getAttribute("data-tab");

      // Hide all tab contents and show the selected one
      tabContents.forEach((content) => {
        if (content.getAttribute("data-content") === tabContent) {
          content.classList.add("active-tab");
        } else {
          content.classList.remove("active-tab");
        }
      });
    });
  });
});
