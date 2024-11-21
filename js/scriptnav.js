// let lastScrollTop1 = 0; // Vị trí cuộn trước đó
// const navbar = document.querySelector("nav"); // Chọn thanh điều hướng

// window.addEventListener("scroll", function () {
//   const currentScroll =
//     window.pageYOffset || document.documentElement.scrollTop;

//   if (currentScroll > lastScrollTop1 && currentScroll > 80) {
//     // Nếu cuộn xuống và đã cuộn qua 80px
//     navbar.style.top = "-80px"; // Đưa navbar lên ngoài màn hình
//   } else if (currentScroll < lastScrollTop1) {
//     // Nếu cuộn lên
//     if (currentScroll <= 80) {
//       // Nếu cuộn lên đến trên cùng
//       navbar.style.top = "80px"; // Đặt lại vị trí navbar về 80px
//     } else {
//       navbar.style.top = "0"; // Hiện navbar
//     }
//   }

//   lastScrollTop1 = currentScroll <= 0 ? 0 : currentScroll; // Đảm bảo không bị âm
// });
// Nhan vao de chon thanh tim kiem
const searchIcon = document.querySelector(".icons .fa-search");
const hiddenSearchBar = document.getElementById("hiddenSearchBar");
const searchInput = hiddenSearchBar.querySelector("input"); // Lấy phần tử input trong thanh tìm kiếm
let resetZIndexTimeout;

searchIcon.addEventListener("click", function () {
  if (hiddenSearchBar.classList.contains("active")) {
    // Ẩn thanh tìm kiếm và đặt lại `z-index`
    hiddenSearchBar.classList.remove("active");
    hiddenSearchBar.style.zIndex = "1000";
    clearTimeout(resetZIndexTimeout);
  } else {
    // Hiển thị thanh tìm kiếm, thay đổi `z-index` và focus vào ô input
    hiddenSearchBar.classList.add("active");
    hiddenSearchBar.style.zIndex = "1001";
    searchInput.focus(); // Focus vào ô input

    // Thiết lập bộ đếm ngược 5 giây để đưa `z-index` về 1000
    resetZIndexTimeout = setTimeout(function () {
      hiddenSearchBar.classList.remove("active");
      hiddenSearchBar.style.zIndex = "1000";
    }, 5000);
  }
});

// Hàm toggle để hiển thị hoặc ẩn thanh tìm kiếm khi nhấn vào biểu tượng tìm kiếm
function toggleSearchBar() {
  searchBar.classList.toggle("hidden");
  if (!searchBar.classList.contains("hidden")) {
    searchBar.querySelector("input").focus(); // Đặt focus vào ô tìm kiếm khi hiện
  }
}

// đăng nhập đăng kí user ở thanh menu
const userIcon = document.querySelector(".user-menu i");
const dropdown = document.querySelector(".user-menu .dropdown");

userIcon.addEventListener("click", function () {
  dropdown.style.display =
    dropdown.style.display === "block" ? "none" : "block";
});

// Đóng menu khi nhấp bên ngoài
window.addEventListener("click", function (event) {
  if (!event.target.closest(".user-menu")) {
    dropdown.style.display = "none";
  }
});
