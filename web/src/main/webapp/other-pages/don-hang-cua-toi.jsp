
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Đơn hàng của tôi" />
<c:set var="pageCssList" value="${['header-nav-footer.css', 'user.css', 'index.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js', 'lichsumua.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>


<section class="lichsumua">
  <div class="container">
    <div class="sidebar">
      <div class="profile">
        <img
                alt="Profile Picture"
                height="50"
                src="https://storage.googleapis.com/a1aa/image/lZk15YwRKq7TPlNFLTlCsBl5oIfUCHaFWr7XX6vQmSRZvK4JA.jpg"
                width="50"
        />
        <div>
          <div>DanhSieuCapVippro</div>
          <a href="./thong-tin-cua-toi.html">&emsp;Sửa Hồ Sơ </a>
        </div>
      </div>
      <ul class="menu">
        <!-- <li>
        <a href="#">
          <i class="fas fa-calendar-alt"> </i>

          <span style="color: red"> New </span>
        </a>
      </li> -->
        <li>
          <a href="./thong-tin-cua-toi.html">
            <i class="fas fa-user"> </i>
            Tài Khoản Của Tôi
          </a>
        </li>
        <li>
          <a class="active" href="./don-hang-cua-toi.html">
            <i class="fas fa-shopping-cart"> </i>
            Đơn Hàng Của Tôi
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fas fa-bell"> </i>
            Thông Báo
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fas fa-ticket-alt"> </i>
            Kho Voucher
          </a>
        </li>
        <!-- <li>
          <a href="#">
            <i class="fas fa-coins"> </i>
            Shopee Xu
          </a>
        </li> -->
      </ul>
    </div>
    <div class="content">
      <div class="tabs">
        <a class="active" href="#" data-tab="all"> Tất cả </a>
        <a href="#" data-tab="pending"> Chờ thanh toán </a>
        <a href="#" data-tab="shipping"> Vận chuyển </a>
        <a href="#" data-tab="waiting"> Chờ giao hàng </a>
        <a href="#" data-tab="completed"> Hoàn thành </a>
        <a href="#" data-tab="canceled"> Đã hủy </a>
        <a href="#" data-tab="return"> Trả hàng</a>
      </div>
      <div class="search-bar">
        <input
                placeholder="Bạn có thể tìm kiếm theo tên Shop, ID đơn hàng hoặc Tên Sản phẩm"
                type="text"
        />
      </div>

      <!-- Tab content for "Tất cả" -->
      <div class="order active-tab" data-content="all">
        <div class="order-header">
          <div class="shop-info">
            <i class="fas fa-store"> </i>
            <a href="#"> Little Whale </a>
            <button>Chat</button>
            <p>&emsp;</p>
            <button>Xem Shop</button>
          </div>
          <div class="order-status">HOÀN THÀNH</div>
        </div>
        <div class="order-item">
          <img
                  alt="Voucher Image"
                  height="80"
                  src="../web/src/main/webapp/static/images/10g.jpg"
                  width="80"
          />
          <div class="item-info">
            <div class="item-name">Váy Bé Gái Màu Đỏ</div>
            <div class="item-quantity">x1</div>
          </div>
          <div class="item-price">300.000₫</div>
        </div>
        <div class="order-total">
          <div class="total-label">Thành tiền:</div>
          <div class="total-price">300.000₫</div>
        </div>
        <div class="order-actions">
          <button>Mua Lại</button>
          <button class="contact-seller">Liên Hệ Cửa Hàng</button>
        </div>
      </div>
      <div class="order active-tab" data-content="all">
        <div class="order-header">
          <div class="shop-info">
            <i class="fas fa-store"> </i>
            <a href="#"> Little Whale </a>
            <button>Chat</button>
            <p>&emsp;</p>
            <button>Xem Shop</button>
          </div>
          <div class="order-status">HOÀN THÀNH</div>
        </div>
        <div class="order-item">
          <img
                  alt="Voucher Image"
                  height="80"
                  src="../web/src/main/webapp/static/images/12.jpg"
                  width="80"
          />
          <div class="item-info">
            <div class="item-name">Đồ Bộ Bé Trai</div>
            <div class="item-quantity">x1</div>
          </div>
          <div class="item-price">300.000₫</div>
        </div>
        <div class="order-total">
          <div class="total-label">Thành tiền:</div>
          <div class="total-price">300.000₫</div>
        </div>
        <div class="order-actions">
          <button>Mua Lại</button>
          <button class="contact-seller">Liên Hệ Cửa Hàng</button>
        </div>
      </div>
      <div class="order active-tab" data-content="all">
        <div class="order-header">
          <div class="shop-info">
            <i class="fas fa-store"> </i>
            <a href="#"> Little Whale </a>
            <button>Chat</button>
            <p>&emsp;</p>
            <button>Xem Shop</button>
          </div>
          <div class="order-status">CHƯA THANH TOÁN</div>
        </div>
        <div class="order-item">
          <img
                  alt="Voucher Image"
                  height="80"
                  src="../web/src/main/webapp/static/images/10g.jpg"
                  width="80"
          />
          <div class="item-info">
            <div class="item-name">Váy Bé Gái Màu Đỏ</div>
            <div class="item-quantity">x1</div>
          </div>
          <div class="item-price">300.000₫</div>
        </div>
        <div class="order-total">
          <div class="total-label">Thành tiền:</div>
          <div class="total-price">300.000₫</div>
        </div>
        <div class="order-actions">
          <button>Hủy Đơn Hàng</button>
          <button class="contact-seller">Liên Hệ Cửa Hàng</button>
        </div>
      </div>
      <!-- Tab content for "Chờ giao hàng" -->
      <div class="cho-giao-hang" data-content="waiting">
        <img
                alt="Illustration of a clipboard with a pencil"
                height="100"
                src="https://storage.googleapis.com/a1aa/image/bcbhfdNcPy1la6VM4zEwWUxeKE9cDJ0eAJi2dWZLKKWcHrgnA.jpg"
                width="100"
        />
        <p>Chưa Có đơn hàng đang chờ giao hàng</p>
      </div>
      <!-- Tab content for "Vận chuyển" -->
      <div class="cho-van-chuyen" data-content="shipping">
        <img
                alt="Illustration of a clipboard with a pencil"
                height="100"
                src="https://storage.googleapis.com/a1aa/image/bcbhfdNcPy1la6VM4zEwWUxeKE9cDJ0eAJi2dWZLKKWcHrgnA.jpg"
                width="100"
        />
        <p>Chưa Có đơn hàng đang vận chuyển</p>
      </div>
      <!-- Tab content for "Hoàn thành" -->
      <div class="hoan-thanh" data-content="completed">
        <img
                alt="Illustration of a clipboard with a pencil"
                height="100"
                src="https://storage.googleapis.com/a1aa/image/bcbhfdNcPy1la6VM4zEwWUxeKE9cDJ0eAJi2dWZLKKWcHrgnA.jpg"
                width="100"
        />
        <p>Chưa Có đơn hàng đã hoàn thành</p>
      </div>
      <!-- Tab content for "Đã hủy" -->
      <div class="da-huy" data-content="canceled">
        <img
                alt="Illustration of a clipboard with a pencil"
                height="100"
                src="https://storage.googleapis.com/a1aa/image/bcbhfdNcPy1la6VM4zEwWUxeKE9cDJ0eAJi2dWZLKKWcHrgnA.jpg"
                width="100"
        />
        <p>Chưa Có đơn hàng đã hủy</p>
      </div>

      <!-- Tab content for "Chờ thanh toán" -->
      <div class="cho-thanh-toan" data-content="pending">
        <img
                alt="Illustration of a clipboard with a pencil"
                height="100"
                src="https://storage.googleapis.com/a1aa/image/bcbhfdNcPy1la6VM4zEwWUxeKE9cDJ0eAJi2dWZLKKWcHrgnA.jpg"
                width="100"
        />
        <p>Chưa có đơn hàng</p>
      </div>
      <!-- Tab content for "Trả hàng/Hoàn tiền" -->
      <div class="tra-hang-hoan-tien" data-content="return">
        <img
                alt="Illustration of a clipboard with a pencil"
                height="100"
                src="https://storage.googleapis.com/a1aa/image/bcbhfdNcPy1la6VM4zEwWUxeKE9cDJ0eAJi2dWZLKKWcHrgnA.jpg"
                width="100"
        />
        <p>Chưa Có đơn hàng đang được trả hoặc hoàn tiền</p>
      </div>
    </div>
  </div>
</section>

<%--Footer--%>
<%@ include file="/partials/footer.jsp" %>

