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

    // Increase cart count on "mua" button click
    const buyButtons = document.querySelectorAll('.buy-btn');
    const cartBadge = document.querySelector('.cart .badge');
    let cartCount = parseInt(cartBadge.textContent);

    buyButtons.forEach(button => {
        button.addEventListener('click', function () {
            cartCount++;
            cartBadge.textContent = cartCount;
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
    const urlParams = new URLSearchParams(window.location.search);
    let currentPage = parseInt(urlParams.get('page')) || 1;

    // Cập nhật trạng thái nút trái và phải dựa trên trang hiện tại
    const leftButton = document.querySelector('.pagination .fa-angle-left').closest('.page-item');
    const rightButton = document.querySelector('.pagination .fa-angle-right').closest('.page-item');

    function updateNavigationButtons() {
        if (currentPage > 1) {
            leftButton.classList.remove('disabled');
        } else {
            leftButton.classList.add('disabled');
        }

        // Nếu cần thêm điều kiện cho rightButton (VD: totalPages là số trang cuối)
        // if (currentPage < totalPages) {
        //     rightButton.classList.remove('disabled');
        // } else {
        //     rightButton.classList.add('disabled');
        // }
    }

    // Sự kiện click cho các trang
    pageLinks.forEach(link => {
        link.addEventListener('click', function (event) {
            event.preventDefault();

            // Lấy số trang từ liên kết đã nhấp
            const pageNumber = this.textContent.trim();

            if (!isNaN(pageNumber)) {
                currentPage = parseInt(pageNumber);
                window.location.href = `${window.location.pathname}?page=${currentPage}`;
            }
        });
    });

    // Sự kiện cho nút left
    leftButton.addEventListener('click', function (event) {
        event.preventDefault();
        if (currentPage > 1) {
            currentPage -= 1;
            window.location.href = `${window.location.pathname}?page=${currentPage}`;
        }
    });

    // Sự kiện cho nút right
    rightButton.addEventListener('click', function (event) {
        event.preventDefault();
        currentPage += 1; // Hoặc đảm bảo không vượt quá totalPages
        window.location.href = `${window.location.pathname}?page=${currentPage}`;
    });

    // Đặt trang hiện tại làm trang active và cập nhật các nút điều hướng
    document.querySelectorAll('.pagination .page-item').forEach(item => {
        if (item.textContent.trim() === String(currentPage)) {
            item.classList.add('active');
        } else {
            item.classList.remove('active');
        }
    });

    updateNavigationButtons(); // Cập nhật trạng thái ban đầu của nút trái/phải
});


