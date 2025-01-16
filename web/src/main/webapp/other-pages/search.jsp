<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Kết Quả Tìm Kiếm"/>
<c:set var="pageCssList" value="${['index.css']}"/>
<c:set var="pageJsList" value="${['script.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>

<section id="Slider">
  <div class="slider">
    <div class="list">
      <div class="list">
        <div class="item">
          <img class="slider-img" src="./images/Slider2.jpg" alt="Slide 2"/>
        </div>
        <div class="item">
          <img class="slider-img" src="./images/Slider3.jpg" alt="Slide 3"/>
        </div>
        <div class="item">
          <img class="slider-img" src="./images/Slider4.jpg" alt="Slide 4"/>
        </div>
        <div class="item">
          <img class="slider-img" src="./images/Slider1.jpg" alt="Slide 1"/>
        </div>
        <div class="item">
          <img class="slider-img" src="./images/Slider3.jpg" alt="Slide 3"/>
        </div>
        <div class="item">
          <img class="slider-img" src="./images/slider_6.webp" alt="Slide 6"/>
        </div>
        <div class="item">
          <img class="slider-img" src="./images/Slider_7.webp" alt="Slide 7"/>
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
      <li></li>
    </ul>
  </div>
</section>


<section class="section-boy-fashion">
  <div class="container-boy-fashion">

    <section class="search-results">
      <div class="container">
        <c:if test="${not empty products}">
          <div class="row">
            <c:forEach var="product" items="${products}">
              <div class="col-card">
                <div class="card">
                  <div class="image-container">
                    <div class="first">
                      <div class="wishlist"><i class="fa-regular fa-heart"></i></div>
                    </div>
                    <div class="sale-badge">-${product.discount}%</div>
                    <img src="${product.images[0].imageUrl}" class="thumbnail-image first-image"/>
                    <c:if test="${product.images.size() > 1}">
                      <img src="${product.images[1].imageUrl}" class="thumbnail-image second-image"/>
                    </c:if>
                  </div>
                  <div class="product-detail-container">
                    <div class="product-info">
                      <h5 class="dress-name">${product.title}</h5>
                      <div class="price-container">
                    <span class="new-price">
                      <fmt:formatNumber value="${product.discountedPrice}" type="number" pattern="###,###"/>đ
                    </span>
                        <small class="old-price">
                          <fmt:formatNumber value="${product.price}" type="number" pattern="###,###"/>đ
                        </small>
                      </div>
                    </div>
                    <div class="rating-purchase">
                      <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <span class="rating-number">4.8</span>
                      </div>
                      <button class="buy-btn">Thêm</button>
                      <a href="./view/chi-tiet-san-pham.html">
                        <button class="details-btn">Chi Tiết</button>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </c:forEach>
          </div>
        </c:if>
      </div>
    </section>

  </div>
</section>

<%@ include file="/partials/footer.jsp" %>
