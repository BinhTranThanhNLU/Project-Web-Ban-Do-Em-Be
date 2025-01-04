
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Giỏ hàng" />
<c:set var="pageCssList" value="${['header-nav-footer.css', 'index.css', 'gio-hang.css']}"/>
<c:set var="pageJsList" value="${['scriptnav.js']}"/>

<%@ include file="/partials/header-nav.jsp" %>


<!-- ====================================cart=============================== -->
<section class="cart-gio-hang">
    <!-- <div class="container-cart ">
            <div class="cart-top-wrap">
                <div class="cart-top">
                    <div class="cart-top-cart cart-top-item">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <div class="cart-top-address cart-top-item">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <div class="cart-top-payment cart-top-item">
                        <i class="fas fa-money-check-alt"></i>
                    </div>
                </div>

            </div>


        </div> -->
    <div class="container-cart">
        <div class="cart-container-cart">
            <div class="cart-container-left">
                <table>
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Màu</th>
                        <th>Kích Cỡ</th>
                        <th>Số Lượng</th>
                        <th>Thành Tiền</th>
                        <th>Xoá</th>
                    </tr>
                    <tr>
                        <td>
                            <img
                                    src="../web/src/main/webapp/static/images/big-yem-truoc.jpg"
                                    alt="" />
                        </td>
                        <td>
                            <p>váy hoá</p>
                        </td>
                        <td>
                            <p>màu</p>
                        </td>
                        <td>
                            <p>L</p>
                        </td>
                        <td><input type="number" value="1" min="1" /></td>
                        <td>
                            <p>400.000 <sup>đ</sup></p>
                        </td>
                        <td><i class="fas fa-times" style="cursor: pointer;"></i></td>
                    </tr>
                    </tr>
                </table>
            </div>
            <div class="cart-container-right">
                <table>
                    <tr>
                        <th colspan="2">TỔNG TIỀN GIỎ HÀNG</th>
                    </tr>
                    <tr>
                        <td>TỔNG SẢN PHẨM</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>TỔNG TIỀN HÀNG</td>
                        <td>
                            <p>400.000 <sup>đ</sup></p>
                        </td>
                    </tr>
                    <tr>
                        <td>TẠM TÍNH</td>
                        <td>
                            <p style="color: red; font-weight: bold">
                                400.000 <sup>đ</sup>
                            </p>
                        </td>
                    </tr>
                </table>
                <div class="cart-container-right-button">
                    <a href="/web_war/other-pages/thong-tin-giao-hang.html" class="btn-payment">THANH TOÁN</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ====================================footer=============================== -->
<%@ include file="/partials/footer.jsp" %>

