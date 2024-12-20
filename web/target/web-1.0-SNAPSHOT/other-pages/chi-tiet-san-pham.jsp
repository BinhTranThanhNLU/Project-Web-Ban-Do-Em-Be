
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Chi tiết sản phẩm" />
<c:set var="pageCssList" value="${['header-nav-footer.css', 'chi-tiet-san-pham.css']}" />
<c:set var="pageJsList" value="${['scriptnav.js', 'interaction-chi-tiet-san-pham.js']}" />


<%@ include file="/partials/header-nav.jsp" %>

<!-- Thanh dieu huong bread-crumb -->
<section class="bread-crumb">
  <span class="crumb-border"></span>
  <div class="bread-crumb-container">
    <div class="bread-crumb-row">
      <ul class="breadcrumb">
        <li>
          <a href="/" target="_self"><span>Trang chủ</span></a>
          <span class="">&nbsp;/&nbsp;</span>
        </li>

        <li>
          <a href="./be-gai.html" itemprop="url" target="_self"
          ><span itemprop="title">Thời Trang Bé Gái</span></a
          >
          <span class="">&nbsp;/&nbsp;</span>
        </li>

        <li>
          <a href="./tat-ca-dam-vay.html" itemprop="url" target="_self"
          ><span itemprop="title">Đầm-Váy Bé Gái</span></a
          >
          <span class="">&nbsp;/&nbsp;</span>
        </li>
      </ul>
    </div>
  </div>
</section>

<!-- Product And Infor -->
<section class="product-section">
  <div class="product-page">
    <!-- Slider-Product -->
    <div class="product-slider">
      <div class="product-image">
        <img
                src="../web/src/main/webapp/static/images/big-bodonguoinhen.jpg"
                alt="Đầm váy voan ngắn tay bé gái Rabity 950.047"
                width="800px"
                height="600px"
        />
      </div>
      <div class="product-image">
        <img
                src="../web/src/main/webapp/static/images/big-bodonguoinhene-vuong.jpg"
                alt="Another product image"
                width="800px"
                height="600px"
        />
      </div>
      <div class="sale-badge">BLACK FIRE-DAY</div>
      <button class="prev" onclick="changeSlide(-1)">
        <i class="fas fa-chevron-left"></i>
      </button>
      <button class="next" onclick="changeSlide(1)">
        <i class="fas fa-chevron-right"></i>
      </button>
    </div>

    <div class="product-info">
      <div class="name-id-price">
        <h2>Áo Em Bé Trai</h2>
        <p>Mã sản phẩm: <span id="id-product">0910230378</span></p>
        <div class="progress-bar-container">
          <p>Đã bán <span id="sold-count">126</span> sản phẩm</p>
          <progress id="sales-progress" value="126" max="200"></progress>
        </div>
        <div class="price-container">
          <p class="current-price">139,300₫</p>
          <p class="original-price">199,000₫</p>
          <span class="discount-badge">-30%</span>
        </div>
        <p class="savings">(Tiết kiệm 59,700₫)</p>
      </div>

      <div class="color-options">
        <p>Màu sắc:</p>
        <div class="option-colors">
          <div class="option-color">
            <span>Xanh lá</span>
            <div class="color-dot" style="background-color: green"></div>
          </div>
          <div class="option-color">
            <span>Đỏ</span>
            <div class="color-dot" style="background-color: red"></div>
          </div>
        </div>
      </div>
      <!-- New div for color thumbnails -->
      <div class="color-thumbnails">
        <div class="thumbnail selected">
          <img src="../web/src/main/webapp/static/images/big-bodonguoinhen.jpg" alt="Green Dress" />
        </div>
        <div class="thumbnail">
          <img src="../web/src/main/webapp/static/images/big-ao-khung-long-1red.jpg" alt="Red Dress" />
        </div>
      </div>

      <div class="size-options">
        <label>Kích thước:</label>
        <select>
          <option>2Y 11-12kg</option>
          <option>4Y 14-16kg</option>
          <option>6Y 19-21kg</option>
          <option>8Y 23-25kg</option>
          <option>10Y 27-31kg</option>
        </select>
      </div>

      <div class="voucher">
        <label>Mã giảm giá:</label>
        <button>NOV30K</button>
        <button>NOV50K</button>
      </div>

      <div class="promotion-box">
        <h3><i class="fas fa-gift"></i> ƯU ĐÃI ĐỘC QUYỀN 11.11</h3>
        <ul>
          <li>Miễn phí vận chuyển toàn quốc đơn từ 0₫</li>
          <li>
            Voucher giảm 30K (đơn từ 699K) và Voucher giảm 60K (đơn từ 800K)
          </li>
          <li>Sale up to 70% hàng loạt siêu phẩm đồ thu đông giá tốt</li>
          <li>Tặng bé SET STICKER hình dán siêu cưng cho mọi đơn hàng</li>
          <li>
            <strong>Lưu ý:</strong> Được áp dụng đồng thời các CTKM (bao gồm
            hàng nguyên giá và sale)
          </li>
        </ul>
      </div>

      <div class="quantity">
        <label>Số lượng:</label>
        <div class="quantity-controls">
          <button class="quantity-btn" onclick="decreaseQuantity()">
            <i class="fa-solid fa-minus"></i>
          </button>
          <input type="number" value="1" min="1" />
          <button class="quantity-btn" onclick="increaseQuantity()">
            <i class="fa-solid fa-plus"></i>
          </button>
        </div>
        <button class="add-to-cart">THÊM VÀO GIỎ</button>
      </div>

      <div class="action-buttons">
        <a href="./thong-tin-giao-hang.html" class="buy-now">MUA NGAY</a>
      </div>

      <div class="product-description">
        <div class="description-header" onclick="toggleDescription()">
          <h3>Mô tả sản phẩm</h3>
          <i class="fas fa-chevron-down"></i>
        </div>
        <div class="description-content">
          <p>
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse
            enim quibusdam sunt, accusantium quasi officiis iste illum,
            repudiandae voluptate earum pariatur neque eveniet voluptatum
            nisi assumenda consectetur. In, totam sequi. Lorem ipsum dolor
            sit, amet consectetur adipisicing elit. Quam nemo, accusamus
            quis eos ad repellat ipsa ea doloremque totam excepturi nesciunt
            iste at saepe. Odit, illo eaque? Fugiat, dolorem ducimus?
          </p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- FOOTER -->
<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>

