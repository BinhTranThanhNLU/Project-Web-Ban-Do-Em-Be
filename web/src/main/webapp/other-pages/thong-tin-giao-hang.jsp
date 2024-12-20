
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Thông tin giao hàng" />
<c:set var="pageCssList" value="${['header-nav-footer.css', 'thong-tin-giao-hang.css', 'index.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>


<!-- =====================================container================================= -->
<div class="container">
    <div class="left-section">
        <div class="breadcrumb">
            <a href="./gio-hang.html">Giỏ hàng</a> &gt;
            <a href="./Thong-tin-giao-hang.html">Thông tin giao hàng</a> &gt;
            <a href="./phuong-thuc-thanh-toan.html">Phương thức thanh toán</a>
        </div>
        <div class="section-title">Thông tin giao hàng</div>
        <div class="user-info">
            <img src="https://storage.googleapis.com/a1aa/image/06pZveJ1e8k4cEbgRtTP9WcEuSXd0alyf2LquolfbSnTFZOPB.jpg"
                 alt="User profile picture" width="50" height="50" />
            <div>
                <div>Minh Minh (tranminh01052004@gmail.com)</div>
                <a href="#">Đăng xuất</a>
            </div>
        </div>
        <div class="form-group">
            <label for="new-address">Dùng địa chỉ khác...</label>
            <input id="new-address" type="text" placeholder="Nhập địa chỉ khác" />
        </div>
        <div class="form-group">
            <label for="full-name">Họ và tên</label>
            <input id="full-name" type="text" placeholder="Nhập Họ và Tên" />
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" type="email" placeholder="Email" />
        </div>
        <div class="form-group">
            <label for="phone">Số điện thoại</label>
            <input id="phone" type="text" placeholder="Nhập Số điện thoại"/>
        </div>
        <div class="form-group">
            <label for="address">Địa chỉ</label>
            <input id="address" type="text" placeholder="Nhập địa chỉ"/>
        </div>
        <div class="form-group">
            <div class="half-width">
                <label for="city">Tỉnh / thành</label>
                <select id="city">
                    <option>Chọn tỉnh / thành</option>
                </select>
            </div>
            <div class="half-width">
                <label for="district">Quận / huyện</label>
                <select id="district">
                    <option>Chọn quận / huyện</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="ward">Phường / xã</label>
            <select id="ward">
                <option>Chọn phường / xã</option>
            </select>
        </div>
        <a href="./phuong-thuc-thanh-toan.html" class="btn">Tiếp tục đến phương thức thanh toán</a>
        <a href="./gio-hang.html" class="cart-link">Giỏ hàng</a>
    </div>
    <div class="right-section">
        <div class="order-summary">
            <div class="item">
                <img src="https://storage.googleapis.com/a1aa/image/zDkw1zNN3q61F9PGS5gDZPknE2FLplKg80lPfQPgGsKpIz5JA.jpg"
                     alt="Đầm váy ren dài tay bé gái Rabity 92726" width="50" height="50" />
                <div class="item-details">
                    <div>Đầm váy ren dài tay bé gái Rabity 92726</div>
                    <div>Xanh rêu / 10Y-27-31kg</div>
                </div>
                <div class="item-price">116,700₫</div>
            </div>
            <div class="discount-code">
                <input type="text" placeholder="Mã giảm giá" />
                <button>Sử dụng</button>
            </div>
            <a href="#" class="discount-link">Xem thêm mã giảm giá</a>
            <div class="discount">Giảm 50,000₫</div>
            <div class="total">
                <div>Tạm tính: 116,700₫</div>
                <div>Phí vận chuyển: --</div>
                <div>Tổng cộng: VND 116,700₫</div>
            </div>
        </div>
    </div>
</div>

<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>
