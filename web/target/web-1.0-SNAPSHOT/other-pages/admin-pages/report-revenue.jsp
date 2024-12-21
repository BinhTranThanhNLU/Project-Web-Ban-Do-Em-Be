
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Báo Cáo Doanh Thu</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="../../web/src/main/webapp/static/css/admin-css/navbar-left-top.css">
  <link rel="stylesheet" href="../../web/src/main/webapp/static/css/admin-css/report-revenue.css">

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
        <a class="menu-link " href="./admin1.html">
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
        <a class="menu-link active" href="./report-revenue.html">
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
            <a href="./add-employee.html" class="nav-link"><i class="fa-solid fa-plus"></i>Thêm sản phẩm
              mới</a>
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

    <!-- Container-Content-Chart -->
    <div class="container-content-revenue">
      <div class="container-content">
        <div class="header">
          <h1>Báo Cáo Doanh Thu</h1>
          <div id="clock"></div>
        </div>

        <div class="content">
          <!-- Stats Section -->
          <div class="stats">

            <div class="stat-card">
              <div class="stat-card-icon"><i class="fa-solid fa-user"></i></div>
              Tổng Thu Nhập: <span>104.890.000 đ</span>
            </div>

            <div class="stat-card">
              <div class="stat-card-icon"><i class="fa-solid fa-kaaba"></i></div>
              Tổng Doanh Thu (1 Tháng): <span>100.000.000 đ</span>
            </div>

            <div class="stat-card">

              <div class="stat-card-icon"><i class="fa-solid fa-user"></i></div>
              Tổng Nhân Viên: <span>247 nhân viên</span>
            </div>

            <div class="stat-card">
              <div class="stat-card-icon"><i class="fa-solid fa-cart-shopping"></i></div>
              Tổng sản phẩm <span>1000 sản phẩm</span>
            </div>

            <div class="stat-card">
              <div class="stat-card-icon"><i class="fa-solid fa-user"></i></div>
              Tổng khách hàng: <span>56 khách hàng</span>
            </div>

            <div class="stat-card">
              <div class="stat-card-icon"><i class="fa-brands fa-sellsy"></i></div>
              Tổng Đơn Hàng <span>56 đơn hàng</span>
            </div>

            <div class="stat-card">
              <i class="fa-solid fa-bomb"></i>
              Hết Hàng: <span>50 sản phẩm</span>
            </div>

          </div>
        </div>

        <!-- Bảng Sản Phẩm Bán Chạy -->
        <div class="table-container">
          <h2>Sản phẩm bán chạy</h2>
          <table class="table-bestsellers">
            <thead>
            <tr>
              <th>Mã sản phẩm</th>
              <th>Tên sản phẩm</th>
              <th>Giá tiền</th>
              <th>Danh mục</th>
              <th>Số lượng bán được</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>71309005</td>
              <td>Áo thun Mickey, Quần jean trẻ em</td>
              <td>5.600.000 đ</td>
              <td>Áo</td>
              <td>200</td>
            </tr>
            <tr>
              <td>62304003</td>
              <td>Áo thun Mickey, Quần jean trẻ em</td>
              <td>33.235.000 đ</td>
              <td>Áo</td>
              <td>200</td>
            </tr>
            <tr>
              <td>72109004</td>
              <td>Áo thun Mickey, Quần jean trẻ em</td>
              <td>3.800.000 đ</td>
              <td>Áo</td>
              <td>200</td>
            </tr>
            <tr>
              <td>83826226</td>
              <td>Áo thun Mickey, Quần jean trẻ em</td>
              <td>2.450.000 đ</td>
              <td>Áo</td>
              <td>200</td>
            </tr>
            <tr>
              <td>71304041</td>
              <td>Áo thun Mickey, Quần jean trẻ em</td>
              <td>21.550.000 đ</td>
              <td>Áo</td>
              <td>200</td>
            </tr>
            </tbody>
          </table>
        </div>



        <!-- Bảng Sản Phẩm Đã Hết -->
        <div class="table-container">
          <h2>Sản Phẩm Đã Hết</h2>
          <table class="table-out-of-stock">
            <thead>
            <tr>
              <th>Mã sản phẩm</th>
              <th>Tên sản phẩm</th>
              <th>Ảnh</th>
              <th>Số lượng</th>
              <th>Tình trạng</th>
              <th>Giá tiền</th>
              <th>Danh mục</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>CT1234</td>
              <td>Áo khoác mùa đông</td>
              <td><img src="https://via.placeholder.com/50" alt="Áo khoác"></td>
              <td>0</td>
              <td><span class="status-out">Hết hàng</span></td>
              <td>650.000 đ</td>
              <td>Áo khoác</td>
            </tr>
            <tr>
              <td>CT5678</td>
              <td>Quần legging bé gái</td>
              <td><img src="https://via.placeholder.com/50" alt="Quần legging"></td>
              <td>0</td>
              <td><span class="status-out">Hết hàng</span></td>
              <td>200.000 đ</td>
              <td>Quần</td>
            </tr>
            </tbody>
          </table>
        </div>

        <!-- Bảng Tổng Đơn Hàng Quần Áo Trẻ Em Hàng Tháng -->
        <div class="table-container">
          <h2>Tổng Đơn Hàng Mỗi Tháng</h2>
          <table class="table-orders">
            <thead>
            <tr>
              <th>ID đơn hàng</th>
              <th>Khách hàng</th>
              <th>Đơn hàng</th>
              <th>Số lượng</th>
              <th>Tổng tiền</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>QA001</td>
              <td>Nguyễn Văn Bình</td>
              <td>Áo thun Mickey, Quần jean trẻ em</td>
              <td>3 sản phẩm</td>
              <td>1.200.000 đ</td>
            </tr>
            <tr>
              <td>QA002</td>
              <td>Trần Thị Thu</td>
              <td>Đầm công chúa Elsa</td>
              <td>1 sản phẩm</td>
              <td>500.000 đ</td>
            </tr>
            <tr>
              <td>QA003</td>
              <td>Phạm Quốc Huy</td>
              <td>Bộ đồ thể thao Spider-Man</td>
              <td>2 sản phẩm</td>
              <td>900.000 đ</td>
            </tr>
            <tr>
              <td>QA004</td>
              <td>Hoàng Minh Tâm</td>
              <td>Quần short cotton, Áo thun Marvel</td>
              <td>3 sản phẩm</td>
              <td>1.100.000 đ</td>
            </tr>
            <tr>
              <td>QA005</td>
              <td>Ngô Thanh Hoa</td>
              <td>Bộ đồ ngủ Pikachu</td>
              <td>1 sản phẩm</td>
              <td>400.000 đ</td>
            </tr>
            </tbody>
          </table>
        </div>

        <!-- Charts -->
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
</div>
<!-- Scripts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
        integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="../../js/charts.js"></script>


</body>

</html>
