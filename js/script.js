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
