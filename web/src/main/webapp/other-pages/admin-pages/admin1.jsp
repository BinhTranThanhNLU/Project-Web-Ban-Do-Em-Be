
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="../../web/src/main/webapp/static/css/admin-css/navbar-left-top.css">
  <link rel="stylesheet" href="../../web/src/main/webapp/static/css/admin-css/admin1.css">
</head>

<body>

<div class="container-scroller">
  <!-- Navbar-Left -->
  <navbar class="navbar-left" id="navbar-left">
    <div class="sidebar-header">
      <div class="user-profile">
        <div class="sidebar-title">
          <a href="index.html" class="brand-logo-mini"><img src="../../web/src/main/webapp/static/images/logo.png" alt="logo"></a>
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
        <a class="menu-link active" href="./admin1.html">
          <span class="menu-icon"><i class="fa fa-tachometer-alt"></i></span>
          <span class="menu-title">Bảng điều khiển</span>
        </a>
      </li>
      <li class="menu-item">
        <a class="menu-link" href="./manage-employee.html">
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
            <a href="#" class="nav-link"><i class="fa-solid fa-message"></i> Tin Nhắn <span class="badge">4</span></a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link"><i class="fa-solid fa-bell"></i> Thông Báo <span class="badge">3</span></a>
          </li>
        </ul>
        <div class="profile-container">
          <a href="#" class="profile-link">
            <img src="https://anhcute.net/wp-content/uploads/2024/09/Hinh-anh-chibi-Spiderman-sieu-dang-yeu.jpg" alt="Profile" class="profile-pic">
            <span class="profile-name">AdminName</span>
          </a>
        </div>
      </div>
    </nav>

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
              <td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkaFZYmrtoOguvFkz_OPw2rawIm8FuXXAiQ&s" alt="Customer Image" class="customer-image"></td>
              <td>Phạm Thị Ngọc</td>
              <td>19.770.000 đ</td>
              <td>Thẻ tín dụng</td>
              <td>2024-11-01</td>
              <td><span class="status-label pending">Chờ xử lý</span></td>
            </tr>
            <tr>
              <td>ER3835</td>
              <td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkaFZYmrtoOguvFkz_OPw2rawIm8FuXXAiQ&s" alt="Customer Image" class="customer-image"></td>
              <td>Nguyễn Thị Mỹ Yến</td>
              <td>16.770.000 đ</td>
              <td>Thanh toán khi nhận hàng</td>
              <td>2024-11-02</td>
              <td><span class="status-label in-transit">Đang vận chuyển</span></td>
            </tr>
            <tr>
              <td>MD0837</td>
              <td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkaFZYmrtoOguvFkz_OPw2rawIm8FuXXAiQ&s" alt="Customer Image" class="customer-image"></td>
              <td>Triệu Thanh Phú</td>
              <td>9.400.000 đ</td>
              <td>Ví điện tử</td>
              <td>2024-11-03</td>
              <td><span class="status-label completed">Đã hoàn thành</span></td>
            </tr>
            <tr>
              <td>MT9835</td>
              <td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkaFZYmrtoOguvFkz_OPw2rawIm8FuXXAiQ&s" alt="Customer Image" class="customer-image"></td>
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
              <td><img src="https://imgcdn.stablediffusionweb.com/2024/5/10/d9622fb4-da27-4341-971c-6f703d897417.jpg" alt="Customer Image" class="customer-image"></td>
              <td><span class="customer-name">Phạm Thị Ngọc</span></td>
              <td>21/7/1992</td>
              <td>0921387221</td>
            </tr>
            <tr>
              <td>#219</td>
              <td><img src="https://imgcdn.stablediffusionweb.com/2024/5/10/d9622fb4-da27-4341-971c-6f703d897417.jpg" alt="Customer Image" class="customer-image"></td>
              <td><span class="customer-name">Phạm Thị Ngọc</span></td>
              <td>30/4/1975</td>
              <td>0912376352</td>
            </tr>
            <tr>
              <td>#627</td>
              <td><img src="https://imgcdn.stablediffusionweb.com/2024/5/10/d9622fb4-da27-4341-971c-6f703d897417.jpg" alt="Customer Image" class="customer-image"></td>
              <td><span class="customer-name">Phạm Thị Ngọc</span></td>
              <td>12/3/1999</td>
              <td>01287326654</td>
            </tr>
            <tr>
              <td>#175</td>
              <td><img src="https://imgcdn.stablediffusionweb.com/2024/5/10/d9622fb4-da27-4341-971c-6f703d897417.jpg" alt="Customer Image" class="customer-image"></td>
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="../../js/charts.js"></script>


</body>

</html>
