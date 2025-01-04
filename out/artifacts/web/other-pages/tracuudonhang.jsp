
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Tra cứu đơn hàng" />
<c:set var="pageCssList" value="${['header-nav-footer.css', 'ho-tro-khach-hang.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>


<div class="container">
    <div class="form-container">
        <h2>
            <i class="fas fa-search"> </i>
            Kiểm tra đơn hàng của bạn
        </h2>
        <label> Phương thức kiểm tra </label>
        <div class="radio-group">
            <input checked name="method" type="radio" id="phone" />
            <label for="phone">Số điện thoại</label>
        </div>
        <!-- <label for="phone-number">Số điện thoại:</label> -->
        <input
                id="phone-number"
                type="text"
                placeholder="Nhập vào số điện thoại của bạn"
        />
        <div class="recaptcha">
            <input type="checkbox" />
            I'm not a robot
            <img
                    alt="reCAPTCHA image"
                    height="50"
                    src="https://storage.googleapis.com/a1aa/image/NlLVQkHkefpekpFGzm5eVzyGGJsIrA6Cl82JFlVxcBkxt0BPB.jpg"
                    width="100"
            />
        </div>
        <div class="note">
            Nếu quý khách có bất kỳ thắc mắc nào, xin vui lòng gọi
            <strong> 1900.633.520 </strong>
            hoặc inbox Fanpage (Từ 8h - 22h)
        </div>
        <button class="submit-btn">Xem ngay</button>
    </div>
    <div class="result-container"></div>
</div>

<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>
