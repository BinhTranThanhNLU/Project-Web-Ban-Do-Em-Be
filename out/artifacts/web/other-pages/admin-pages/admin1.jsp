<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Admin"/>
<c:set var="pageCssList" value="${['navbar-left-top.css', 'admin1.css']}"/>
<c:set var="pageJsList" value="${[]}"/>

<%@ include file="/partials/header-nav-admin.jsp" %>


        <!-- Container-Content-Chart -->
        <div class="container-content-chart">
            <div class="container-content">
                <div class="header">
                    <h1>Bảng điều khiển</h1>
                    <div id="clock"></div>
                </div>

                <div class="content">
                    <!-- Stats Section -->
                    <div class="stats">
                        <div class="stat-card">
                            <div class="stat-card-icon"><i class="fa-solid fa-user"></i></div>
                            Tổng khách hàng: <span>56 khách hàng</span>
                        </div>
                        <div class="stat-card">
                            <div class="stat-card-icon"><i class="fa-solid fa-kaaba"></i></div>
                            Tổng sản phẩm: <span>1850 sản phẩm</span>
                        </div>
                        <div class="stat-card">
                            <div class="stat-card-icon"><i class="fa-solid fa-cart-shopping"></i></div>
                            Tổng đơn hàng: <span>247 đơn hàng</span>
                        </div>
                        <div class="stat-card">
                            <div class="stat-card-icon"><i class="fa-brands fa-sellsy"></i></div>
                            Tổng sản phẩm bán được (6 tháng) <span>1000 sản phẩm</span>
                        </div>
                    </div>
                </div>
                <!-- Order Table -->
                <div class="container-order">
                    <h2>Tình trạng đơn hàng</h2>
                    <table class="order-status-table">
                        <thead>
                        <tr>
                            <th>ID đơn hàng</th>
                            <th>Hình ảnh</th>
                            <th>Tên khách hàng</th>
                            <th>Tổng tiền</th>
                            <th>Hình thức thanh toán</th>
                            <th>Ngày bắt đầu</th>
                            <th>Trạng thái</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>AL3947</td>
                            <td><img
                                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkaFZYmrtoOguvFkz_OPw2rawIm8FuXXAiQ&s"
                                    alt="Customer Image" class="customer-image"></td>
                            <td>Phạm Thị Ngọc</td>
                            <td>19.770.000 đ</td>
                            <td>Thẻ tín dụng</td>
                            <td>2024-11-01</td>
                            <td><span class="status-label pending">Chờ xử lý</span></td>
                        </tr>
                        <tr>
                            <td>ER3835</td>
                            <td><img
                                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkaFZYmrtoOguvFkz_OPw2rawIm8FuXXAiQ&s"
                                    alt="Customer Image" class="customer-image"></td>
                            <td>Nguyễn Thị Mỹ Yến</td>
                            <td>16.770.000 đ</td>
                            <td>Thanh toán khi nhận hàng</td>
                            <td>2024-11-02</td>
                            <td><span class="status-label in-transit">Đang vận chuyển</span></td>
                        </tr>
                        <tr>
                            <td>MD0837</td>
                            <td><img
                                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkaFZYmrtoOguvFkz_OPw2rawIm8FuXXAiQ&s"
                                    alt="Customer Image" class="customer-image"></td>
                            <td>Triệu Thanh Phú</td>
                            <td>9.400.000 đ</td>
                            <td>Ví điện tử</td>
                            <td>2024-11-03</td>
                            <td><span class="status-label completed">Đã hoàn thành</span></td>
                        </tr>
                        <tr>
                            <td>MT9835</td>
                            <td><img
                                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkaFZYmrtoOguvFkz_OPw2rawIm8FuXXAiQ&s"
                                    alt="Customer Image" class="customer-image"></td>
                            <td>Đặng Hoàng Phúc</td>
                            <td>40.650.000 đ</td>
                            <td>Chuyển khoản ngân hàng</td>
                            <td>2024-11-04</td>
                            <td><span class="status-label cancelled">Đã hủy</span></td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <!-- New Customers Table -->
                <div class="container-customer">
                    <h2>Khách hàng mới</h2>
                    <table class="new-customers-table">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Hình ảnh</th>
                            <th>Tên khách hàng</th>
                            <th>Ngày sinh</th>
                            <th>Số điện thoại</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>#183</td>
                            <td><img
                                    src="https://imgcdn.stablediffusionweb.com/2024/5/10/d9622fb4-da27-4341-971c-6f703d897417.jpg"
                                    alt="Customer Image" class="customer-image"></td>
                            <td><span class="customer-name">Phạm Thị Ngọc</span></td>
                            <td>21/7/1992</td>
                            <td>0921387221</td>
                        </tr>
                        <tr>
                            <td>#219</td>
                            <td><img
                                    src="https://imgcdn.stablediffusionweb.com/2024/5/10/d9622fb4-da27-4341-971c-6f703d897417.jpg"
                                    alt="Customer Image" class="customer-image"></td>
                            <td><span class="customer-name">Phạm Thị Ngọc</span></td>
                            <td>30/4/1975</td>
                            <td>0912376352</td>
                        </tr>
                        <tr>
                            <td>#627</td>
                            <td><img
                                    src="https://imgcdn.stablediffusionweb.com/2024/5/10/d9622fb4-da27-4341-971c-6f703d897417.jpg"
                                    alt="Customer Image" class="customer-image"></td>
                            <td><span class="customer-name">Phạm Thị Ngọc</span></td>
                            <td>12/3/1999</td>
                            <td>01287326654</td>
                        </tr>
                        <tr>
                            <td>#175</td>
                            <td><img
                                    src="https://imgcdn.stablediffusionweb.com/2024/5/10/d9622fb4-da27-4341-971c-6f703d897417.jpg"
                                    alt="Customer Image" class="customer-image"></td>
                            <td><span class="customer-name">Phạm Thị Ngọc</span></td>
                            <td>4/12/2000</td>
                            <td>0912376763</td>
                        </tr>
                        </tbody>
                    </table>
                </div>


                <!-- Container Chart -->
                <div class="container-chart">
                    <div class="charts">
                        <div class="chart" id="barChartDemo">
                            <h3>Thống kê 6 tháng doanh thu</h3>
                            <canvas id="barChart"></canvas>
                        </div>
                        <div class="chart" id="pieChartDemo">
                            <h3>Thống kê 6 sản phẩm bán chạy</h3>
                            <canvas id="pieChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- Scripts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
        integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="../../js/charts.js"></script>

<%@ include file="/partials/footer-admin.jsp" %>
