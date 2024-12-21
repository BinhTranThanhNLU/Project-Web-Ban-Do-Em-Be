
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Liên Hệ" />
<c:set var="pageCssList" value="${['header-nav-footer.css', 'contact.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js', 'contacts.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>


<!-- COntact -->
<div class="container">
    <div class="left-section">
        <img
                alt="Three children wearing cartoon-themed clothes, with promotional text 'Freeship 15k' and 'Voucher 50k' in colorful speech bubbles"
                height="400"
                src="../web/src/main/webapp/static/images/imgcontact.png"
                width="600"
        />
    </div>
    <div class="right-section">
        <h2>Liên Hệ Với Chúng Tôi</h2>
        <div class="form-group">
            <label for="name"> Tên </label>
            <input id="name" placeholder="Nhập vào tên của bạn" type="text" />
        </div>
        <div class="form-group">
            <label for="email"> Email </label>
            <input
                    id="email"
                    placeholder="Nhập vào địa chỉ Email của bạn"
                    type="email"
            />
        </div>
        <div class="form-group">
            <label for="message"> Tin Nhắn </label>
            <textarea
                    id="message"
                    placeholder="Nhập Vào Tin Nhắn Của Bạn"
                    rows="5"
            ></textarea>
        </div>
        <div class="form-group-flex">
            <input id="terms" type="checkbox" />
            <label for="terms">
                I accept the <span class="terms"> Terms of Service </span>
            </label>
        </div>

        <button class="submit-btn">SUBMIT</button>
    </div>
</div>
<div class="info-section">
    <div class="info-box">
        <div class="icons-h3">
            <i class="fas fa-phone-alt"> </i>
            <h3>Gọi cho chúng tôi</h3>
        </div>
        <p>
            0969 969 969
            <br />
            0969 969 968
        </p>
    </div>
    <div class="info-box">
        <div class="icons-h3">
            <i class="fas fa-map-marker-alt"> </i>
            <h3>Địa Chỉ</h3>
        </div>
        <p>
            Linh Trung Thủ Đức <br />
            TP.Hồ Chí Minh
        </p>
    </div>
    <div class="info-box">
        <div class="icons-h3">
            <i class="fas fa-clock"> </i>
            <h3>Thời Gian Mở Cửa</h3>
        </div>
        <p>
            Thứ Hai Thứ Sáu ...7h30 – 20h, <br />
            Thứ 7 - Chủ Nhật ...8h – 20h
        </p>
    </div>
</div>
<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>
