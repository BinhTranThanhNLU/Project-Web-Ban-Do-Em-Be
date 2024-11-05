//==============================hieu ung di chuyen cua anh dau trang============================
const header = document.querySelector("header");
window.addEventListener("scroll", function () {
  x = window.pageYOffset;
  if (x > 0) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
});

const imgPosition = document.querySelectorAll(".aspect-ratio-169 img");
const imgContainer = document.querySelector(".aspect-ratio-169");
const dotItem = document.querySelectorAll(".dot");

let imgNumber = imgPosition.length;
let index = 0;
imgPosition.forEach(function (image, index) {
  image.style.left = index * 100 + "%";
  dotItem[index].addEventListener("click", function () {
    slider(index);
  });
});

function imgSlide() {
  index++;
  console.log(index);
  if (index >= imgNumber) {
    index = 0;
  }
  slider(index);
}

function slider(index) {
  imgContainer.style.left = "-" + index * 100 + "%";
  const dotActive = document.querySelector(".active");
  dotActive.classList.remove("active");
  dotItem[index].classList.add("active");
}
setInterval(imgSlide, 5000);
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
// ==============================================section-exclusive-sale==================================================
// đồng hồ đếm ngược
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
//=================================cuộn lên xuống thanh menu==========================
let lastScrollTop = 0; // Vị trí cuộn trước đó
const navbar = document.querySelector("header"); // Chọn thanh điều hướng

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
  const tabs = document.querySelectorAll(".nav-girl-fashion div");
  tabs.forEach((tab) => {
    tab.classList.remove("active");
  });

  const activeTab = [...tabs].find((tab) =>
    tab.getAttribute("onclick").includes(tabName)
  );
  if (activeTab) {
    activeTab.classList.add("active");
  }
}

// Khởi tạo trạng thái tab đầu tiên
showTabGirl("dam-vay");
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
      tabName === "best-seller" ? "Bán Chạy Nhất" : "BST Disney"
    )
  );
  activeButton.classList.add("active");
}

// Mặc định hiển thị tab "Bán Chạy Nhất"
showTabB("best-seller");
// ===================================bé trai====================================
function showTabBoy(tabName) {
  // Ẩn tất cả các sản phẩm
  var tabs = document.querySelectorAll(".products-boy-fashion");
  tabs.forEach(function (tab) {
    tab.style.display = "none";
  });

  // Hiện tab được chọn
  document.getElementById(tabName).style.display = "flex";
  // Cập nhật class active cho các tab
  var navItems = document.querySelectorAll(".nav-boy-fashion p");
  navItems.forEach(function (item) {
    item.classList.remove("active");
    if (
      item.innerText ===
      tabName.charAt(0).toUpperCase() + tabName.slice(1).replace("-", " ")
    ) {
      item.classList.add("active");
    }
  });
}
