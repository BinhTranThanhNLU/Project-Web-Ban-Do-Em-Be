
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Thông tin của tôi" />
<c:set var="pageCssList" value="${['header-nav-footer.css', 'thong-tin-cua-toi.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js', 'thong-tin-cua-toi.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>


<section class="container-user-information">
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
          <a href="./thong-tin-cua-toi.html"> Sửa Hồ Sơ </a>
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
          <a href="./thong-tin-cua-toi.html" class="active">
            <i class="fas fa-user"> </i>
            Tài Khoản Của Tôi
          </a>
        </li>
        <li>
          <a href="./don-hang-cua-toi.html">
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
      <div class="form-label">
        <h2>Hồ sơ công khai</h2>
        <p>Thêm thông tin về bản thân bạn</p>
      </div>
      <div class="form-container">
        <h3>Thông tin cơ bản</h3>
        <form class="personal-data-form">
          <!-- Name -->
          <label for="fullname">1. Họ và Tên</label>
          <div class="input-group">
            <input type="text" id="fullname" placeholder="Nhập Họ Và Tên" />
          </div>

          <!-- Email -->
          <label for="email">2. Email</label>
          <input type="email" id="email" placeholder="Email" />

          <!-- Phone -->
          <label for="phone">3. Số điện thoại</label>
          <input type="tel" id="phone" placeholder="Phone" />

          <!-- Date of Birth -->
          <label for="dob">4. Sinh nhật của bạn</label>
          <input type="date" id="dob" />

          <!-- Address -->
          <label for="address">5. Địa chỉ thường trú</label>
          <input type="text" id="address" placeholder="Address" />

          <!-- Province -->
          <label for="province">6. Tỉnh/thành phố</label>
          <select id="province">
            <option>Chọn tỉnh/thành phố</option>
          </select>

          <!-- Province -->
          <label for="distric">7. Quận/Huyện</label>
          <select id="distric">
            <option>Chọn Quận/Huyện</option>
          </select>

          <!-- Province -->
          <label for="ward">8. Phường/Xã</label>
          <select id="ward">
            <option>Chọn Phường/Xã</option>
          </select>

          <!-- Satisfaction -->
          <label>9. Mức độ thỏa mãn với dịch vụ của chúng tôi</label>
          <div class="satisfaction-group">
            <label
            ><input type="radio" name="satisfaction" value="1" /> 1</label
            >
            <label
            ><input type="radio" name="satisfaction" value="2" /> 2</label
            >
            <label
            ><input type="radio" name="satisfaction" value="3" /> 3</label
            >
            <label
            ><input type="radio" name="satisfaction" value="4" /> 4</label
            >
            <label
            ><input type="radio" name="satisfaction" value="5" /> 5</label
            >
          </div>

          <button type="button" class="btn-save" id="save-btn">Save</button>
        </form>
      </div>
      <!-- Modal -->
      <div class="modal-overlay" id="success-modal" style="display: none">
        <div class="modal-content">
          <div class="modal-icon">
            <i class="fa-solid fa-circle-check"></i>
          </div>
          <p>Bạn đã lưu thành công nhé!</p>
          <button type="button" class="btn-close" id="close-modal">
            Đóng
          </button>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>

