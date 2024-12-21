//==============================hieu ung di chuyen cua anh dau trang============================

let slider = document.querySelector(".slider .list");
let items = document.querySelectorAll(".slider .list .item");
let next = document.getElementById("next");
let prev = document.getElementById("prev");
let dots = document.querySelectorAll(".slider .dots li");

let lengthItems = items.length - 1;
let active = 0;
next.onclick = function () {
  active = active + 1 <= lengthItems ? active + 1 : 0;
  reloadSlider();
};
prev.onclick = function () {
  active = active - 1 >= 0 ? active - 1 : lengthItems;
  reloadSlider();
};
let refreshInterval = setInterval(() => {
  next.click();
}, 7000);
function reloadSlider() {
  slider.style.left = -items[active].offsetLeft + "px";
  //
  let last_active_dot = document.querySelector(".slider .dots li.active");
  last_active_dot.classList.remove("active");
  dots[active].classList.add("active");

  clearInterval(refreshInterval);
  refreshInterval = setInterval(() => {
    next.click();
  }, 3000);
}

dots.forEach((li, key) => {
  li.addEventListener("click", () => {
    active = key;
    reloadSlider();
  });
});
window.onresize = function (event) {
  reloadSlider();
};
//=================================cuộn lên xuống thanh menu==========================
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
// đăng nhập  user ở thanh menu

//==================================== boy-girl===========================
const girlTab = document.getElementById("girl-tab");
const boyTab = document.getElementById("boy-tab");
const girlCategory = document.getElementById("girl-category");
const boyCategory = document.getElementById("boy-category");

girlTab.addEventListener("click", () => {
  girlCategory.style.display = "flex";
  boyCategory.style.display = "none";
  girlTab.classList.add("active");
  boyTab.classList.remove("active");
});

boyTab.addEventListener("click", () => {
  girlCategory.style.display = "none";
  boyCategory.style.display = "flex";
  boyTab.classList.add("active");
  girlTab.classList.remove("active");
});

// ===========================section-exclusive-sale=======================
// Đặt thời gian kết thúc cho đếm ngược (ví dụ: 3 giờ từ hiện tại)
const countdownDate = new Date().getTime() + 3 * 60 * 60 * 1000; // 3 giờ tính từ bây giờ

function updateTimer() {
  const now = new Date().getTime();
  const distance = countdownDate - now;

  // Tính giờ, phút, giây
  const hours = Math.floor(
    (distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)
  );
  const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  const seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Cập nhật nội dung hiển thị
  document.querySelector(
    ".timer div:nth-child(1)"
  ).innerHTML = `${hours}<br>Giờ`;
  document.querySelector(
    ".timer div:nth-child(2)"
  ).innerHTML = `${minutes}<br>Phút`;
  document.querySelector(
    ".timer div:nth-child(3)"
  ).innerHTML = `${seconds}<br>Giây`;

  // Kiểm tra khi hết thời gian
  if (distance < 0) {
    clearInterval(countdownInterval);
    document.querySelector(".timer").innerHTML = "Hết hạn";
  }
}

// Cập nhật đồng hồ mỗi giây
const countdownInterval = setInterval(updateTimer, 1000);

// chuyển tab của sale up tu 70 50

function showTab(index) {
  // Lấy tất cả các tab và nội dung của chúng
  const tabs = document.querySelectorAll(".tab");
  const tabContents = document.querySelectorAll(".tab-content-item");

  // Ẩn tất cả các tab và nội dung
  tabs.forEach((tab) => {
    tab.classList.remove("active-exclusive-sale");
  });
  tabContents.forEach((content) => {
    content.style.display = "none";
  });

  // Hiện tab và nội dung được chọn
  tabs[index].classList.add("active-exclusive-sale");
  tabContents[index].style.display = "block";
}

// Khởi động bằng cách hiển thị tab đầu tiên
showTab(0);

// =================================bestseller============================
function showTabB(tabName) {
  // Ẩn tất cả các tab
  const tabs = document.querySelectorAll(".products-sale");
  tabs.forEach((tab) => {
    tab.style.display = "none";
  });

  // Hiện tab được chọn
  document.getElementById(tabName).style.display = "flex";

  // Cập nhật trạng thái nút
  const buttons = document.querySelectorAll(".tab-button");
  buttons.forEach((button) => {
    button.classList.remove("active");
  });
  const activeButton = [...buttons].find((button) =>
    button.innerText.includes(
      tabName === "best-seller" ? "Đồ Bé Gái" : "Đồ Bé Trai"
    )
  );
  activeButton.classList.add("active");
}

// Mặc định hiển thị tab "Bán Chạy Nhất"
showTabB("best-seller");
// ===================================bé gái====================================
function showTabGirl(tabName) {
  // Ẩn tất cả các sản phẩm
  const products = document.querySelectorAll(".products-girl-fashion");
  products.forEach((product) => {
    product.style.display = "none";
  });

  // Hiển thị sản phẩm tương ứng với tab đã chọn
  const selectedTab = document.getElementById(tabName);
  if (selectedTab) {
    selectedTab.style.display = "flex";
  }

  // Cập nhật trạng thái của tab
  const tabs = document.querySelectorAll(".nav-girl-fashion p");
  tabs.forEach((tab) => {
    tab.classList.remove("active");
  });

  // Đặt tab đã chọn thành active
  const activeTab = document.querySelector(
    `.nav-girl-fashion p[onclick="showTabGirl('${tabName}')"]`
  );
  if (activeTab) {
    activeTab.classList.add("active");
  }
}

// Khởi tạo trạng thái tab đầu tiên
showTabGirl("dam-vay");

// ===================================bé trai====================================

function showTabBoy(tabName) {
  // Ẩn tất cả các sản phẩm của boy
  const products = document.querySelectorAll(".products-boy-fashion");
  products.forEach((product) => {
    product.style.display = "none";
  });

  // Hiển thị sản phẩm tương ứng với tab đã chọn
  const selectedTab = document.getElementById(tabName);
  if (selectedTab) {
    selectedTab.style.display = "flex";
  }

  // Cập nhật trạng thái của tab
  const tabs = document.querySelectorAll(".nav-boy-fashion p");
  tabs.forEach((tab) => {
    tab.classList.remove("active");
  });

  // Đặt tab đã chọn thành active
  const activeTab = document.querySelector(
    `.nav-boy-fashion p[onclick="showTabBoy('${tabName}')"]`
  );
  if (activeTab) {
    activeTab.classList.add("active");
  }
}

// Khởi tạo trạng thái tab đầu tiên
showTabBoy("ao-boy");
// jhKDKLDHFJ
new Swiper(".card-wrapper", {
  // Optional parameters
  loop: true,
  spaceBetween: 30,
  autoplay: {
    delay: 3000, // Thời gian dừng giữa các slide (3000ms = 3 giây)
    disableOnInteraction: false, // Tiếp tục tự chạy sau khi người dùng tương tác
  },
  // pagination bullets

  pagination: {
    el: ".swiper-pagination",
    clickable: true,
    dynamicBullets: true,
  },
  // Navigation arrows
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
      slidesPerView: 2,
      slidesPerView: 3,
      slidesPerView: 4,
    },
  },
});
// JavaScript để hiển thị thông báo khi nhấn vào giỏ hàng
document.getElementById("cart").addEventListener("click", function () {
  const message = document.getElementById("loginMessageCart");
  message.style.display = "block";

  // Ẩn thông báo sau 3 giây
  setTimeout(function () {
    message.style.display = "none";
  }, 3000);
});
// over lay
function showQuickView() {
  document.querySelector(".quick-view-modal").style.display = "block";
  document.querySelector(".modal-overlay").style.display = "block";
}

function closeQuickView() {
  document.querySelector(".quick-view-modal").style.display = "none";
  document.querySelector(".modal-overlay").style.display = "none";
}
// thanh tìm kiếm
