<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>${title}</title>
    <style></style>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="icon" type="image/png" sizes="32x32" href="./images/favicon.png">

    <%--    <link rel="stylesheet" href="./static/css/index.css"/>--%>
    <!-- CSS riêng cho từng trang -->
    <c:if test="${not empty pageCssList}">
        <c:forEach var="cssFile" items="${pageCssList}">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/${cssFile}">
        </c:forEach>
    </c:if>

</head>
<body>
<!-- HEADER -->
<section class="section-header hidden-search-bar" id="hiddenSearchBar">
    <div class="header">
        <div class="logo-header">
            <a href="${pageContext.request.contextPath}/home">
                <img src="${pageContext.request.contextPath}/images/logo.png" alt="Logo" style="height: 50px;">
            </a>

        </div>
        <div class="search-bar-header">
            <input placeholder="Bạn cần tìm gì?" type="text"/>
            <i class="fas fa-search"></i>
        </div>
        <div class="contact-info-header">
            <div class="icon-header">
                <i class="fas fa-phone-alt"></i>
            </div>
            <div class="text-header"><a href="/web_war/other-pages/contact.jsp">Liên hệ với chúng tôi</a></div>
            <div class="icon-header">
                <i class="fas fa-file-alt"></i>
            </div>
            <div class="text-header">Kiểm tra đơn hàng</div>
        </div>
    </div>
</section>
<!-- =====================================Nav================================= -->
<section class="navigation">
    <nav>
        <!-- menu  -->
        <div class="navbar">
            <div class="menu">
<<<<<<< HEAD
                <a href="${pageContext.request.contextPath}/home">Trang chủ</a>
=======
                <a href="${pageContext.request.contextPath}/home">
                Trang Chủ
                </a>

>>>>>>> 49b1ebd5da314915e84cdde5e9d0c463503ba01c
                <div class="dropdown-menu">
                    <!-- Thêm lớp cho Bé gái -->
                    <div class="navheight">
                        <a href="/web_war/other-pages/be-gai.jsp">Bé gái</a>
                        <!-- <ion-icon name="chevron-down-outline"></ion-icon> -->
                    </div>
                    <div class="dropdown dropdown-full">
                        <!-- Dropdown cho Bé gái -->
                        <div class="column">
                            <h3>Tất Cả Sản Phẩm Bé Gái</h3>
                            <a href="/web_war/other-pages/tat-ca-dam-vay.jsp" class="menu-link">Váy Bé Gái</a>
                            <a href="#" class="menu-link">Áo Bé Gái</a>
                            <a href="#" class="menu-link">Quần Bé Gái</a>
                            <a href="#" class="menu-link">Giày Bé Gái</a>
                        </div>
                    </div>
                </div>
                <div class="dropdown-menu">
                    <!-- Thêm lớp cho Bé gái -->
                    <div class="navheight">
                        <a href="#">Bé trai</a>
                    </div>

                    <div class="dropdown dropdown-full">
                        <!-- Dropdown cho Bé gái -->
                        <div class="column">
                            <h3>Tất Cả Sản Phẩm Bé Trai</h3>
                            <a href="#" class="menu-link">Đồ Bộ Bé Trai</a>
                            <a href="#" class="menu-link">Áo Bé Trai</a>
                            <a href="#" class="menu-link">Quần Bé Trai</a>
                            <a href="#" class="menu-link">Giày Bé Trai</a>
                        </div>
                    </div>
                </div>
                <div class="dropdown-menu">
                    <div class="navheight"><a href="#">Bộ sưu tập</a></div>
                    <div class="dropdown-1">
                        <!-- Dropdown cho Bé gái -->
                        <div class="column">
                            <!-- <h3>Áo</h3> -->
                            <a class="menu-link" href="#">✨Bộ Sưu Tập Mùa Thu</a>
                            <a class="menu-link" href="#">🍂Bộ Sưu Tập Mùa Đông</a>
                            <a class="menu-link" href="#">🌼Bộ Sưu Tập Xuân</a>
                            <a class="menu-link" href="#">🏠Bộ Sưu Tập Mùa Hè</a>
                            <!-- <a class="menu-link" href="#">🎒Be Cool At School Collection🎒</a> -->
                        </div>
                    </div>
                </div>

                <div class="dropdown-menu">
                    <div class="navheight"><a href="#">Giảm Giá Sốc</a></div>
                    <!-- <div class="dropdown-2">
                      <div class="column"></div>
                    </div> -->
                </div>
                <div class="dropdown-menu">
                    <div class="navheight"><a href="#">Hàng Mới Về</a></div>
                    <div class="dropdown-3">
                        <!-- Dropdown cho Sale -->
                        <div class="column">
                            <!-- <h3>Áo</h3> -->
                            <a class="menu-link" href="#">Hàng Mới Về Bé gái</a>
                            <a class="menu-link" href="#"> Hàng Mới Về Bé trai</a>
                            <a class="menu-link" href="#">BÁN HÀNG NHẤT</a>
                        </div>
                    </div>
                </div>
                <div class="dropdown-menu">
                    <div class="navheight"><a href="#">Tin Tức</a></div>
                    <div class="dropdown-4">
                        <!-- Dropdown cho Sale -->
                        <div class="column">
                            <!-- <h3>Áo</h3> -->
                            <a class="menu-link" href="#">Tin tức Little Whale</a>
                            <a class="menu-link" href="#">Khuyến mãi</a>
                            <a class="menu-link" href="#">Tin mẹ & bé</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="icons">
                <!-- <input type="text" placeholder="Tìm kiếm sản phẩm"> -->
                <i class="fas fa-search"></i>
                <div class="cart" id="cart">
                    <a href="/web_war/other-pages/gio-hang.jsp" class="cart-a"><i class="fas fa-shopping-cart"></i></a>
                    <span class="badge">0</span>
                </div>
                <!-- Biểu tượng người dùng với menu đăng nhập/đăng ký -->
                <div class="user-menu">
                    <i class="fas fa-user"></i>
                    <div class="dropdown">
                        <a class="menu-link" href="/web_war/other-pages/dangnhap.jsp">Đăng nhập</a>
                        <a class="menu-link" href="/web_war/other-pages/dangki.jsp">Đăng ký</a>
                    </div>
                </div>
                <div class="login-message-cart" id="loginMessageCart">
                    Chưa có sản phẩm nào
                </div>
            </div>
        </div>
    </nav>
</section>
