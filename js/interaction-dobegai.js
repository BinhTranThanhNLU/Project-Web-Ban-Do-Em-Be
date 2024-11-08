document.addEventListener("DOMContentLoaded", function () {
    // Toggle color selection for each card
    const colorSelects = document.querySelectorAll('.color-select');
    colorSelects.forEach(colorSelect => {
        const colorButtons = colorSelect.querySelectorAll('.color-option input[type="button"]');
        colorButtons.forEach(button => {
            button.addEventListener('click', function () {
            // If the clicked button is already selected, remove selection from all buttons
                if (this.classList.contains('selected')) {
                colorButtons.forEach(btn => btn.classList.remove('selected'));
                } else {
                // Otherwise, clear all selections and select the clicked button
                colorButtons.forEach(btn => btn.classList.remove('selected'));
                this.classList.add('selected');
                }   
            });
        });
    });

    // Toggle size selection for each card
    const sizeSelects = document.querySelectorAll('.size-select');
    sizeSelects.forEach(sizeSelect => {
        const sizeButtons = sizeSelect.querySelectorAll('.item-size');
        sizeButtons.forEach(button => {
            button.addEventListener('click', function () {
                sizeButtons.forEach(btn => btn.classList.remove('selected'));
                this.classList.add('selected');
            });
        });
    });

    // Toggle heart color for each card
    const heartIcons = document.querySelectorAll('.wishlist .fa-heart');
    heartIcons.forEach(heartIcon => {
        heartIcon.addEventListener('click', function () {
            this.classList.toggle('selected');
        });
    });
});

document.addEventListener("DOMContentLoaded", function () {
    // Select all collapse buttons within filter items
    const collapseButtons = document.querySelectorAll('.filter-item .collapse-btn');

    collapseButtons.forEach((button) => {
        // Get the filter section directly before the button within the same filter item
        const filterSection = button.previousElementSibling;

        button.addEventListener('click', function () {
            // Toggle the 'collapsed' class for the specific filter section
            filterSection.classList.toggle('collapsed');

            // Toggle button text between "Thu gọn" and "Mở rộng"
            if (filterSection.classList.contains('collapsed')) {
                button.innerHTML = 'Mở rộng <i class="fa-solid fa-chevron-down"></i>';
            } else {
                button.innerHTML = 'Thu gọn <i class="fa-solid fa-chevron-up"></i>';
            }
        });

        // Set the initial state to collapsed for each filter section
        filterSection.classList.add('collapsed');
    });
});

document.addEventListener("DOMContentLoaded", function () {
    const pageLinks = document.querySelectorAll('.pagination .page-item a');

    pageLinks.forEach(link => {
        link.addEventListener('click', function (event) {
            event.preventDefault(); // Prevent default link behavior

            // Get the page number from the clicked link
            const pageNumber = this.textContent.trim();

            // If it's not a navigation icon, update the URL with the new page parameter and reload
            if (!isNaN(pageNumber)) {
                window.location.href = `${window.location.pathname}?page=${pageNumber}`;
            }
        });
    });

    // Highlight the active page based on the URL parameter
    const urlParams = new URLSearchParams(window.location.search);
    const activePage = urlParams.get('page') || '1'; // Default to page 1 if no parameter
    document.querySelectorAll('.pagination .page-item').forEach(item => {
        if (item.textContent.trim() === activePage) {
            item.classList.add('active');
        } else {
            item.classList.remove('active');
        }
    });
});





