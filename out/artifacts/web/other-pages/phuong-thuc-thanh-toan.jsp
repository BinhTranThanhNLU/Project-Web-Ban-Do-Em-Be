
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Phương thức thanh toán" />
<c:set var="pageCssList" value="${['header-nav-footer.css', 'phuong-thuc-thanh-toan.css', 'index.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js', 'thong-tin-cua-toi.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>


<!-- =====================================container================================= -->
<div class="container">
  <h1>Little Whale</h1>
  <div class="breadcrumb">
    <a href="/web_war/other-pages/gio-hang.jsp">Giỏ hàng</a> &gt;
    <a href="/web_war/other-pages/Thong-tin-giao-hang.jsp">Thông tin giao hàng</a> &gt;
    <a href="/web_war/other-pages/phuong-thuc-thanh-toan.jsp">Phương thức thanh toán</a>
  </div>
  <div class="shipping-method">
    <div class="section-title">Phương thức vận chuyển</div>
    <div class="method-option">
      <input checked name="shipping" type="radio" />
      Giao hàng tận nơi (3-5 ngày) <span>25,000đ</span>
    </div>
  </div>
  <div class="payment-method">
    <div class="section-title">Phương thức thanh toán</div>
    <div class="method-option">
      <input checked name="payment" type="radio" />
      <img
              src="https://storage.googleapis.com/a1aa/image/pWAzKzYnOfVKaCG5Wll77fSf75o14AaVUnpaCffFdOBHIzceE.jpg"
              alt="COD icon"
              width="20"
              height="20"
      />
      Thanh toán khi giao hàng (COD)
    </div>
    <div class="method-option">
      <input name="payment" type="radio" />
      <img
              src="https://storage.googleapis.com/a1aa/image/zCVkqX9qIoZ8KxNf4gbkNaeK539oiafV7bKoHClueKoQkZOPB.jpg"
              alt="Bank transfer icon"
              width="20"
              height="20"
      />
      Chuyển khoản ngân hàng - Vietcombank
    </div>
    <div class="method-option">
      <input name="payment" type="radio" />
      <img
              src="https://storage.googleapis.com/a1aa/image/3yHicwn0iu42IJXzU0pAd1tT4kPdI89cBQNyrt3eSvxfYmzTA.jpg"
              alt="VNPay icon"
              width="20"
              height="20"
      />
      TT VNPay (ATM/Visa/MasterCard/JCB/QR Pay)
    </div>
    <div class="method-option">
      <input name="payment" type="radio" />
      <img
              src="https://storage.googleapis.com/a1aa/image/Cbhgjr2miVpzLlHJkcMYRb4pecXujAefvUKoijflEoELkZOPB.jpg"
              alt="MoMo icon"
              width="20"
              height="20"
      />
      TT qua ví MoMo
    </div>
  </div>
  <button class="complete-order" id="save-btn">Hoàn tất đơn hàng</button>
  <!-- Modal -->
  <div class="modal-overlay" id="success-modal" style="display: none">
    <div class="modal-content">
      <div class="modal-icon">
        <i class="fa-solid fa-circle-check"></i>
      </div>
      <p>Bạn đã thanh toán thành công nhé!</p>
      <button type="button" class="btn-close" id="close-modal">Đóng</button>
    </div>
  </div>
</div>
<!-- <div class="summary">
<div class="item">
  <img src="https://storage.googleapis.com/a1aa/image/Av4FnLABNfXraSr5P2Mp0TYVlID0KeEDjJB2fr7Apv1GyMnnA.jpg" alt="Product image" width="50" height="50" />
  <div class="item-details">
    <p>Đầm váy ren dài tay bé gái Rabity 92726</p>
    <p>Xanh rêu / 10Y-27-31kg</p>
    <p>116,700đ</p>
  </div>
</div>
<div class="discount-code">
  <input type="text" placeholder="Mã giảm giá" />
  <button>Sử dụng</button>
</div>
<a class="discount-link" href="#">Xem thêm mã giảm giá</a>
<div class="discount-amount">Giảm 50,000đ</div>
<div class="totals">
  <p>Tạm tính: 116,700đ</p>
  <p>Phí vận chuyển: 25,000đ</p>
  <p class="total-amount">Tổng cộng: VND 141,700đ</p>
</div>
</div> -->

<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>

