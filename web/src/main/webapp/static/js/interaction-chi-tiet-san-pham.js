function decreaseQuantity() {
    const input = document.querySelector('.quantity input[type="number"]');
    if (parseInt(input.value) > 1) {
        input.value = parseInt(input.value) - 1;
    }
}

function increaseQuantity() {
    const input = document.querySelector('.quantity input[type="number"]');
    input.value = parseInt(input.value) + 1;
}


// Select all thumbnail elements
const thumbnails = document.querySelectorAll('.thumbnail');

// Add a click event listener to each thumbnail
thumbnails.forEach(thumbnail => {
    thumbnail.addEventListener('click', () => {
        // Remove 'selected' class from all thumbnails
        thumbnails.forEach(t => t.classList.remove('selected'));
        
        // Add 'selected' class to the clicked thumbnail
        thumbnail.classList.add('selected');
    });
});

// Event cho Button Thêm vào giỏ hàng
document.querySelector('.add-to-cart').addEventListener('click', function() {
    // Lấy số lượng hiện tại từ input
    const quantityInput = document.querySelector('.quantity input[type="number"]');
    const quantity = parseInt(quantityInput.value);

    // Lấy số lượng hiện tại của biểu tượng giỏ hàng
    const cartBadge = document.querySelector('.cart .badge');
    const currentCartQuantity = parseInt(cartBadge.innerText);

    // Cập nhật số lượng mới cho giỏ hàng
    cartBadge.innerText = currentCartQuantity + quantity;
});

function toggleDescription() {
    const content = document.querySelector('.description-content');
    const icon = document.querySelector('.description-header i');
    
    content.classList.toggle('show');
    if (content.classList.contains('show')) {
        icon.style.transform = 'rotate(180deg)';
    } else {
        icon.style.transform = 'rotate(0deg)';
    }
}

// Progress bar
// Initial values
let soldProducts = 126;
const maxProducts = 200;

// Function to update the progress bar based on sold products
function updateProgressBar() {
    const soldCount = document.getElementById('sold-count');
    const progressBar = document.getElementById('sales-progress');

    // Update sold count display
    soldCount.innerText = soldProducts;

    // Update progress bar value
    progressBar.value = soldProducts;
}

// Example function to simulate selling a product
function sellProduct() {
    if (soldProducts < maxProducts) {
        soldProducts++;
        updateProgressBar();
    }
}

// Initial progress bar update
updateProgressBar();

// call sellProduct() whenever a product is sold

// Slider
let currentSlide = 0;

function showSlide(index) {
    const slides = document.querySelectorAll('.product-image');
    if (index >= slides.length) {
        currentSlide = 0; // Loop back to the first slide
    } else if (index < 0) {
        currentSlide = slides.length - 1; // Loop to the last slide
    } else {
        currentSlide = index;
    }

    // Hide all slides and only display the active slide
    slides.forEach((slide, i) => {
        slide.classList.remove('active');
        if (i === currentSlide) {
            slide.classList.add('active');
        }
    });
}

// Change slide with the given direction
function changeSlide(direction) {
    showSlide(currentSlide + direction);
}

// Initialize the slider
showSlide(currentSlide);




