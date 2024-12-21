<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Trang Chủ" />
<c:set var="pageCssList" value="${['index.css']}"/>
<c:set var="pageJsList" value="${['script.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>


<!-- ================Hiệu ứng di chuyển hình ảnh ở đầu trang can js============-->
<section id="Slider">
  <div class="slider">
    <div class="list">
      <div class="list">
        <div class="item">
          <img class="slider-img" src="../web/src/main/webapp/static/images/Slider2.jpg" alt="Slide 2" />
        </div>
        <div class="item">
          <img class="slider-img" src="../web/src/main/webapp/static/images/Slider3.jpg" alt="Slide 3" />
        </div>
        <div class="item">
          <img class="slider-img" src="../web/src/main/webapp/static/images/Slider4.jpg" alt="Slide 4" />
        </div>
        <div class="item">
          <img class="slider-img" src="../web/src/main/webapp/static/images/Slider1.jpg" alt="Slide 1" />
        </div>
        <div class="item">
          <img class="slider-img" src="../web/src/main/webapp/static/images/Slider3.jpg" alt="Slide 3" />
        </div>
        <div class="item">
          <img class="slider-img" src="../web/src/main/webapp/static/images/slider_6.webp" alt="Slide 6" />
        </div>
        <div class="item">
          <img class="slider-img" src="../web/src/main/webapp/static/images/Slider_7.webp" alt="Slide 7" />
        </div>
      </div>

    </div>
    <div class="buttons">
      <button id="prev"><</button>
      <button id="next">></button>
    </div>
    <ul class="dots">
      <li class="active"></li>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
    </ul>
  </div>
</section>

<!-- =================================bé trai bé gái========================== -->
<section class="boy-girl">

  <div class="category-header">
    <h1>BẠN ĐANG TÌM KIẾM</h1>
    <a id="girl-tab" class="active" href="javascript:void(0)">Bé gái</a>
    <a id="boy-tab"   href="javascript:void(0)">Bé trai</a>
  </div>

  <div id="girl-category" class="category-container">
    <div class="category-item">
      <img
              alt="Image of a pink dress"
              height="100"
              src="../web/src/main/webapp/static/images/dam.webp"
              width="100"
      />
      <p><a href="">Đầm</a></p>
    </div>
    <div class="category-item">
      <img
              alt="Image of a pink outfit"
              height="100"
              src="../web/src/main/webapp/static/images/dobo.webp"
              width="100"
      />
      <p><a href="">Đồ bộ</a></p>
    </div>
    <div class="category-item">
      <img
              alt="Image of a pink hoodie"
              height="100"
              src="../web/src/main/webapp/static/images/aokhoac.webp"
              width="100"
      />
      <p><a href="">Áo khoác</a></p>
    </div>
    <div class="category-item">
      <img
              alt="Image of a red shirt with a heart"
              height="100"
              src="../web/src/main/webapp/static/images/ao.webp"
              width="100"
      />
      <p><a href="">Áo</a></p>
    </div>
    <div class="category-item">
      <img
              alt="Image of pink shorts with a bow"
              height="100"
              src="../web/src/main/webapp/static/images/dolot.webp"
              width="100"
      />
      <p><a href="">Quần</a></p>
    </div>
    <div class="category-item">
      <img
              alt="Image of pink underwear"
              height="100"
              src="../web/src/main/webapp/static/images/quan.webp"
              width="100"
      />
      <p> <a href="">Đồ lót</a></p>
    </div>
    <div class="category-item">
      <img
              alt="Image of a pink backpack"
              height="100"
              src="../web/src/main/webapp/static/images/phukien.webp"
              width="100"
      />
      <p><a href="">Phụ kiện</a></p>
    </div>
    <div class="category-item">
      <img
              alt="Easy Wear logo"
              height="100"
              src="../web/src/main/webapp/static/images/easy-wearpng.png"
              width="100"
      />
      <p><a href="">Easy Wear</a></p>
    </div>
  </div>

  <div id="boy-category" class="category-container" style="display: none">
    <div class="category-item-boy">
      <img
              alt="Image of a pink dress"
              height="100"
              src="../web/src/main/webapp/static/images/ao-boy.webp"
              width="100"
      />
      <p> <a href="">Áo</a></p>
    </div>
    <div class="category-item-boy">
      <img
              alt="Image of a pink outfit"
              height="100"
              src="../web/src/main/webapp/static/images/quan-boy.webp"
              width="100"
      />
      <p> <a href="">Quần</a></p>
    </div>
    <div class="category-item-boy">
      <img
              alt="Image of a pink hoodie"
              height="100"
              src="../web/src/main/webapp/static/images/dobo-boy.webp"
              width="100"
      />
      <p><a href="">Đồ Bộ</a></p>
    </div>
    <div class="category-item-boy">
      <img
              alt="Image of a red shirt with a heart"
              height="100"
              src="../web/src/main/webapp/static/images/aokhoac-boy.webp"
              width="100"
      />
      <p><a href="">Áo Khoác</a></p>
    </div>
    <div class="category-item-boy">
      <img
              alt="Image of pink shorts with a bow"
              height="100"
              src="../web/src/main/webapp/static/images/aosomi-boy.webp"
              width="100"
      />
      <p><a href="">Áo Sơ Mi</a></p>
    </div>
    <div class="category-item-boy">
      <img
              alt="Image of pink underwear"
              height="100"
              src="../web/src/main/webapp/static/images/mavel-boy.webp"
              width="100"
      />
      <p><a href="">Marvel</a></p>
    </div>
    <div class="category-item-boy">
      <img
              alt="Image of a pink backpack"
              height="100"
              src="../web/src/main/webapp/static/images/phukien-boy.webp"
              width="100"
      />
      <p><a href="">Đồ Lót</a></p>
    </div>
    <div class="category-item-boy">
      <img
              alt="Easy Wear logo"
              height="100"
              src="../web/src/main/webapp/static/images/easy-wearpng.png"
              width="100"
      />
      <p><a href="">Easy Wear</a></p>
    </div>
  </div>
</section>
<!-- =================================section-exclusive-sale========================== -->
<section class="section-exclusive-sale">
  <div class="container-exclusive-sale">
    <div class="exclusive-sale">
      <h1>SALE ĐỘC QUYỀN</h1>
      <div class="timer">
        <div class="time-unit">
          <span class="time-number hours">3</span>
          <span class="time-label">Giờ</span>
        </div>
        <div class="time-unit">
          <span class="time-number minutes">00</span>
          <span class="time-label">Phút</span>
        </div>
        <div class="time-unit">
          <span class="time-number seconds">00</span>
          <span class="time-label">Giây</span>
        </div>
      </div>
    </div>
    <div class="tabs-exclusive-sale">
      <div class="tab" onclick="showTab(0)">Sale 20 - 40%</div>
      <div class="tab" onclick="showTab(1)">Sale 50 - 70%</div>
      <div class="tab" onclick="showTab(2)">Sale up to 70%</div>
    </div>
    <div class="tab-content-item">
      <div class="container-sale swiper">
        <div class="card-wrapper swiper-wrapper">
          <ul class="card-list swiper-wrapper">
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">20%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/big-ao-khoac-mavel.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/big-ao-khoac-mavel-boy.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay SpiderMan</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">124.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">20%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/big-capybara.jpg" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/big-capybara-vuong.jpg"/>
                <h2 class="card-title">Áo thun Capybara</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">240.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">30%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/big-bodonguoinhen.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/big-bodonguoinhene-vuong.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Bộ Đồ Người Nhện</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">210.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">40%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/big-nguoi-nhen-2.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/big-nguoi-nhen-vuong.jpg" />
                <h2 class="card-title">Bộ Đồ Thun sát nách SpiderMan</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">180.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">20%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/big-mickey.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/big-mickey-vuong.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">240.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">20%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/big-ao-1-vuong.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/big-ao-1.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">240.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
          </ul>
          <div class="swiper-pagination"></div>
          <div class="swiper-slide-button swiper-button-prev"></div>
          <div class="swiper-slide-button swiper-button-next"></div>
        </div>
      </div>
    </div>
    <div class="tab-content-item">
      <div class="container-sale swiper">
        <div class="card-wrapper swiper-wrapper">
          <ul class="card-list swiper-wrapper">
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">50%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/6.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/5.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">150.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">60%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/spider-man.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/spider-man-vuong.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">120.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">65%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/8.png" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/7.png" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">105.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">50%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/9.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/10.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">150.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">60%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/12.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/11.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">120.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">60%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/13.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/14.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">120.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
          </ul>
          <div class="swiper-pagination"></div>
          <div class="swiper-slide-button swiper-button-prev"></div>
          <div class="swiper-slide-button swiper-button-next"></div>
        </div>
      </div>
    </div>
    <div class="tab-content-item">
      <div class="container-sale swiper">
        <div class="card-wrapper swiper-wrapper">
          <ul class="card-list swiper-wrapper">
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">70%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/big-ao-khoac.png" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/big-ao-khoac-vuong.png" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">90.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">70%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/big-yem-truoc.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/big-yem-sau.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">90.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">70%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/big-quan-dui-1-truoc.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/big-quan-dui-1-sau.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">90.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">70%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/big-quan-dui2.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/big-quan-dui2-bpy.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">90.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
            <li class="card-item swiper-slide">
              <div class="card-link image-container-card">
                <div class="discount-wrap"><p class="discount">70%</p></div>
                <img class="image-card image1" src="../web/src/main/webapp/static/images/big-quan-ao-1-truoc.jpg" alt="Ảnh 1" />
                <img class="image-card image2" src="../web/src/main/webapp/static/images/big-quan-ao-1-sau.jpg" alt="Ảnh 2" />
                <h2 class="card-title">Áo dài tay ELLE Áo dài tay bé trai Little Whale x ELLE</h2>
                <div class="card-title-price">
                  <p class="card-title-new-price">90.000đ</p>
                  <p class="card-title-old-price">300.000đ</p>
                </div>
              </div>
            </li>
          </ul>
          <div class="swiper-pagination"></div>
          <div class="swiper-slide-button swiper-button-prev"></div>
          <div class="swiper-slide-button swiper-button-next"></div>
        </div>
      </div>
    </div>
    <div class="load-more">
      <button>Xem thêm</button>
    </div>
  </div>
</section>
<!-- =================================section-best-seller========================== -->
<section class="section-best-seller">
  <div class="container-best-seller">
    <div class="title-best-seller">
      <h1>BÁN CHẠY NHẤT</h1>
    </div>
    <div class="best-seller">
      <div class="tab-button active" onclick="showTabB('best-seller')">Đồ Bé Gái</div>
      <!-- <p>&nbsp;&nbsp;</p> -->
      <div class="tab-button" onclick="showTabB('disney')">Đồ Bé Trai</div>
    </div>
  </div>
  <div class="products-sale" id="best-seller">
    <div class="container-products">
      <div class="row">
        <!-- Product 1 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <!-- Tạm thời xóa onClick  onclick="showQuickView()"-->
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>

        <!-- Product 2 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>

        <!-- Product 3 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>

        <!-- Product 4 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <!-- Product 1 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>

        <!-- Product 2 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>

        <!-- Product 3 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>

        <!-- Product 4 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="products-sale" id="disney" style="display: none">
    <div class="container-products">
      <div class="row">
        <!-- Product 1 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>

        <!-- Product 2 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>

        <!-- Product 3 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>

        <!-- Product 4 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <!-- Product 1 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>

        <!-- Product 2 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>

        <!-- Product 3 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>

        <!-- Product 4 -->
        <div class="col-card">
          <div class="card">
            <div class="image-container">
              <div class="first">
                <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
              </div>
              <div class="sale-badge">-20%</div>
              <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
              <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
            </div>
            <div class="product-detail-container">
              <div class="product-info">
                <h5 class="dress-name">Đầm Bé Gái</h5>
                <div class="price-container">
                  <span class="new-price">300.000đ</span>
                  <small class="old-price">500.000đ</small>
                </div>
              </div>
              <div class="rating-purchase">
                <div class="rating">
                  <i class="fa-solid fa-star"></i>
                  <span class="rating-number">4.8</span>
                </div>
                <button class="buy-btn">Thêm</button>
                <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="load-more">
    <button>Xem Thêm</button>
  </div>
  </div>
  <!-- Modal Overlay and Quick View Modal -->
  <div class="modal-overlay" onclick="closeQuickView()"></div>
  <div class="quick-view-modal">
    <button class="close-btn-overlay" onclick="closeQuickView()">Đóng</button>
    <div class="container-overlay">
      <div class="image-section-overlay">
        <!-- <img src=".../images/ao.webp" alt="Product Image"> -->
        <swiper-container class="mySwiper swiper-h" pagination="true" pagination-clickable="true" space-between="50">
          <swiper-slide><img src="../web/src/main/webapp/static/images/1b.jpg" alt=""></swiper-slide>
          <swiper-slide>
            <swiper-container class="mySwiper2 swiper-v" pagination="true" pagination-clickable="true"
                              space-between="50" direction="vertical">
              <swiper-slide><img src="../web/src/main/webapp/static/images/2b.jpg" alt=""></swiper-slide>
            </swiper-container>
          </swiper-slide>
          <swiper-slide><img src="../web/src/main/webapp/static/images/4b.jpg" alt=""></swiper-slide>
          <swiper-slide><img src="../web/src/main/webapp/static/images/5b.jpg" alt=""></swiper-slide>
        </swiper-container>
      </div>
      <div class="details-section-overlay">
        <h3>Kids - designed in Paris</h3>
        <p>Mã sản phẩm: 001</p>
        <div class="wrap-price">
          <p class="price-overlay">
            199,000₫
          </p>
          <span class="old-price-overlay"> 399,000₫ </span>
        </div>
        <div class="size-options-overlay">
          <p>Kích thước:</p>
          <button class="active">1Y</button>
          <button>2Y</button>
          <button>3Y</button>
          <button>4Y</button>
          <button>5Y</button>
          <button>6Y</button>
          <button>7Y</button>
          <button>8Y</button>
          <button>9Y</button>
          <button>10Y</button>
          <button>11Y</button>
          <button>12Y</button>
        </div>
        <div class="add-to-cart-overlay">
          THÊM VÀO GIỎ <i class="fas fa-shopping-cart"></i>
        </div>

        <a href="/web_war/other-pages/chi-tiet-san-pham.jsp">
          <div class="add-to-detail-overlay">
            XEM CHI TIẾT
          </div>
        </a>

      </div>
    </div>
  </div>
</section>
<!-- ===================================thời trang nữ========================- -->
<section class="section-girl-fashion">
  <div class="container-girl">
    <div class="girl-fashion">
      <h1>THỜI TRANG BÉ GÁI</h1>
    </div>
    <div class="nav-girl-fashion">
      <p id="girl-damvay-tab" class="active" onclick="showTabGirl('dam-vay')">Đầm Váy</p>
      <p id="girl-ao-tab" class="tab" onclick="showTabGirl('ao')">Áo</p>
      <p id="girl-dolot-tab" class="tab" onclick="showTabGirl('do-lot')">Đồ Lót</p>
      <p id="girl-dobo-tab" class="tab" onclick="showTabGirl('do-bo')">Đồ Bộ</p>
    </div>
    <div class="products-girl-fashion" id="dam-vay">
      <div class="container-products">
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
    <div class="products-girl-fashion" id="ao" style="display: none;">
      <div class="container-products">
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="products-girl-fashion" id="do-lot" style="display: none;">
      <div class="container-products">
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="products-girl-fashion" id="do-bo" style="display: none;">
      <div class="container-products">
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="load-more">
      <button><a href="/web_war/other-pages/be-gai.jsp">Xem thêm</a></button>
    </div>
  </div>
</section>
<!-- ===================================thời trang nam=======================- -->
<section class="section-boy-fashion">
  <div class="container-boy-fashion">
    <div class="boy-fashion">
      <h1>THỜI TRANG BÉ TRAI</h1>
    </div>
    <div class="nav-boy-fashion">
      <p class="tab active" onclick="showTabBoy('ao-boy')">Áo</p>
      <p class="tab" onclick="showTabBoy('do-bo-boy')">Đồ Bộ</p>
      <p class="tab" onclick="showTabBoy('quan')">Quần</p>
      <p class="tab" onclick="showTabBoy('ao-khoac')">Áo Khoác</p>
    </div>
    <div class="products-boy-fashion" id="ao-boy">
      <div class="container-products">
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="products-boy-fashion" id="do-bo-boy" style="display: none;">
      <div class="container-products">
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="products-boy-fashion" id="quan" style="display: none;">
      <div class="container-products">
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="products-boy-fashion" id="ao-khoac" style="display: none;">
      <div class="container-products">
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn" onclick="showQuickView()">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Product 1 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn" onclick="showQuickView()">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 2 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn" onclick="showQuickView()">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 3 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn" onclick="showQuickView()">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>

          <!-- Product 4 -->
          <div class="col-card">
            <div class="card">
              <div class="image-container">
                <div class="first">
                  <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                </div>
                <div class="sale-badge">-20%</div>
                <img src="../web/src/main/webapp/static/images/1g.jpg" class="thumbnail-image first-image">
                <img src="../web/src/main/webapp/static/images/2g.jpg" class="thumbnail-image second-image">
              </div>
              <div class="product-detail-container">
                <div class="product-info">
                  <h5 class="dress-name">Đầm Bé Gái</h5>
                  <div class="price-container">
                    <span class="new-price">300.000đ</span>
                    <small class="old-price">500.000đ</small>
                  </div>
                </div>
                <div class="rating-purchase">
                  <div class="rating">
                    <i class="fa-solid fa-star"></i>
                    <span class="rating-number">4.8</span>
                  </div>
                  <button class="buy-btn" onclick="showQuickView()">Thêm</button>
                  <a href="/web_war/other-pages/chi-tiet-san-pham.jsp"><button class="details-btn">Chi Tiết</button></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="load-more">
      <button>Xem thêm</button>
    </div>
  </div>
</section>

<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>
