<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link rel="icon" type="image/png" sizes="32x32" href="../images/favicon.png">

    <!-- CSS riêng cho từng trang -->
    <c:if test="${not empty pageCssList}">
        <c:forEach var="cssFile" items="${pageCssList}">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin-css/${cssFile}">
        </c:forEach>
    </c:if>

    <%--    <link rel="stylesheet" href="../../css/admin-css/navbar-left-top.css">--%>
    <%--    <link rel="stylesheet" href="../../css/admin-css/manage-employee.css">--%>
</head>
<body>
<div class="container-scroller">
    <!-- Navbar-Left -->
    <navbar class="navbar-left" id="navbar-left">
        <div class="sidebar-header">
            <div class="user-profile">
                <div class="sidebar-title">
                    <a href="index.html" class="brand-logo-mini"><img src="./images/logo.png" alt="logo"></a>
                    <h2>Litte Whale</h2>
                </div>
                <img class="user-avatar"
                     src="https://anhcute.net/wp-content/uploads/2024/09/Hinh-anh-chibi-Spiderman-sieu-dang-yeu.jpg"
                     alt="User Image">
                <div class="user-info">
                    <p class="user-name">AdminName</p>
                    <p class="user-greeting">Chào mừng bạn trở lại</p>
                </div>
            </div>
        </div>
        <hr>
        <ul class="sidebar-menu">
            <li class="menu-item">
                <a class="menu-link" href="phan-mem-ban-hang.html">
                    <span class="menu-icon"><i class="fa fa-cart-plus"></i></span>
                    <span class="menu-title">POS Bán Hàng</span>
                </a>
            </li>
            <li class="menu-item">
                <a class="menu-link" href="./admin1.html">
                    <span class="menu-icon"><i class="fa fa-tachometer-alt"></i></span>
                    <span class="menu-title">Bảng điều khiển</span>
                </a>
            </li>
            <li class="menu-item">
                <a class="menu-link active" href="./manage-employee.html">
                    <span class="menu-icon"><i class="fa fa-id-card"></i></span>
                    <span class="menu-title">Quản lý nhân viên</span>
                </a>
            </li>
            <li class="menu-item">
                <a class="menu-link" href="./manage-user.html">
                    <span class="menu-icon"><i class="fa fa-users"></i></span>
                    <span class="menu-title">Quản lý khách hàng</span>
                </a>
            </li>
            <li class="menu-item">
                <a class="menu-link" href="./manage-product.html">
                    <span class="menu-icon"><i class="fa fa-box"></i></span>
                    <span class="menu-title">Quản lý sản phẩm</span>
                </a>
            </li>
            <li class="menu-item">
                <a class="menu-link" href="./manage-order.html">
                    <span class="menu-icon"><i class="fa fa-tasks"></i></span>
                    <span class="menu-title">Quản lý đơn hàng</span>
                </a>
            </li>
            <li class="menu-item">
                <a class="menu-link" href="./report-revenue.html">
                    <span class="menu-icon"><i class="fa fa-chart-bar"></i></span>
                    <span class="menu-title">Báo cáo doanh thu</span>
                </a>
            </li>
        </ul>
    </navbar>

    <!-- MainContent -->
    <div class="container-main">
        <!-- Top Navbar -->
        <nav class="navbar">
            <div class="navbar-menu">
                <button class="navbar-toggler" id="navbar-toggle">
                    <span class="navbar-icon">&#9776;</span>
                </button>
                <div class="search">
                    <input type="text" placeholder="Search products">
                </div>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="./add-employee.html" class="nav-link"><i class="fa-solid fa-plus"></i>Thêm sản phẩm mới</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link"><i class="fa-solid fa-message"></i> Tin Nhắn <span
                                class="badge">4</span></a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link"><i class="fa-solid fa-bell"></i> Thông Báo <span
                                class="badge">3</span></a>
                    </li>
                </ul>
                <div class="profile-container">
                    <a href="#" class="profile-link">
                        <img src="https://anhcute.net/wp-content/uploads/2024/09/Hinh-anh-chibi-Spiderman-sieu-dang-yeu.jpg"
                             alt="Profile" class="profile-pic">
                        <span class="profile-name">AdminName</span>
                    </a>
                </div>
            </div>
        </nav>