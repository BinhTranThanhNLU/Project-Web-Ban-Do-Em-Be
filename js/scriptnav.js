//=================================cuộn lên xuống thanh menu==========================
let lastScrollTop = 0; // Vị trí cuộn trước đó
const navbar = document.querySelector("nav"); // Chọn thanh điều hướng

window.addEventListener("scroll", function () {
  const currentScroll =
    window.pageYOffset || document.documentElement.scrollTop;

  if (currentScroll > lastScrollTop && currentScroll > 80) {
    // Nếu cuộn xuống và đã cuộn qua 80px
    navbar.style.top = "-80px"; // Đưa navbar lên ngoài màn hình
  } else if (currentScroll < lastScrollTop) {
    // Nếu cuộn lên
    if (currentScroll <= 80) {
      // Nếu cuộn lên đến trên cùng
      navbar.style.top = "80px"; // Đặt lại vị trí navbar về 80px
    } else {
      navbar.style.top = "0"; // Hiện navbar
    }
  }

  lastScrollTop = currentScroll <= 0 ? 0 : currentScroll; // Đảm bảo không bị âm
});
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
