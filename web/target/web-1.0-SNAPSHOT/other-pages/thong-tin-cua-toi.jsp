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
        <img src="${pageContext.request.contextPath}/images/${user.avatar}" alt="Avatar" />
        <div>
          <div>${user.fullName}</div>
        </div>
      </div>
      <ul class="menu">
        <li>
          <a href="/web_war/other-pages/thong-tin-cua-toi.jsp" class="active">
            <i class="fas fa-user"> </i>
            Tài Khoản Của Tôi
          </a>
        </li>
        <li>
          <a href="/web_war/other-pages/don-hang-cua-toi.jsp">
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
      </ul>
    </div>
    <div class="content">
      <div class="form-label">
        <h2>Hồ sơ công khai</h2>
        <p>Thêm thông tin về bản thân bạn</p>
      </div>
      <div class="form-container">
        <form action="<%=request.getContextPath()%>/infouser" method="post" enctype="multipart/form-data">
          <input type="hidden" id="idRole" name="idRole" value="3" readonly/>
          <label for="username">Tên Đăng Nhập</label>
          <input type="text" id="username" name="fullname" value="${user.username}" disabled />

          <label for="email">Email</label>
          <input type="email" id="email" name="email" value="${user.email}" />
          <label for="fullname">Họ và Tên</label>
          <input type="text" id="fullname" name="fullname" value="${user.fullName}" />
          <label for="phone">Số điện thoại</label>
          <input type="tel" id="phone" name="phone" value="${user.phoneNumber}" />
          <label for="dob">Ngày Sinh</label>
          <input type="date" id="dob" name="birthDate" value="${user.birthDate}" />
          <label for="password">Mật Khẩu</label>
          <input type="password" id="password" name="password" value="${user.password}" />
          <label for="avatar">Chọn ảnh đại diện:</label>
          <input type="file" name="avatar" id="avatar" accept="image/*" />
          <button type="submit" class="btn-save" id="save-btn">Lưu</button>
        </form>
      </div>
    </div>
  </div>
</section>

<%@ include file="/partials/footer.jsp" %>
