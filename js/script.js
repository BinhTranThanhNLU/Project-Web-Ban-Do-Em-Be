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
