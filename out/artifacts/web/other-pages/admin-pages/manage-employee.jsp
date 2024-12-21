
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Quản Lý Nhân Viên</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="../../web/src/main/webapp/static/css/admin-css/navbar-left-top.css">
  <link rel="stylesheet" href="../../web/src/main/webapp/static/css/admin-css/manage-employee.css">
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
            <a href="#" class="nav-link"><i class="fa-solid fa-message"></i> Tin Nhắn <span class="badge">4</span></a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link"><i class="fa-solid fa-bell"></i> Thông Báo <span class="badge">3</span></a>
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

    <!-- Container-Manage-Employee -->
    <div class="container-manage-employee">
      <!-- Employee Management Table -->
      <div class="container-manage-employee">
        <div class="header">
          <h2>Danh Sách Nhân Viên</h2>
        </div>
        <div class="action-buttons">
          <a href="./add-employee.html" class="btn btn-add"><i class="fa-solid fa-plus"></i> Thêm nhân viên</a>
          <button class="btn btn-upload">Tải từ file</button>
          <button class="btn btn-print">In dữ liệu</button>
          <button class="btn btn-copy">Sao chép</button>
          <button class="btn btn-excel">Xuất Excel</button>
          <button class="btn btn-pdf">Xuất PDF</button>
          <button class="btn btn-delete">Xóa tất cả</button>
        </div>
        <div class="search-bar">
          <input type="text" placeholder="Tìm kiếm nhân viên..." />
          <button class="btn btn-search">Tìm kiếm</button>
        </div>
        <table class="table table-hover">
          <thead>
          <tr>
            <th><input type="checkbox"></th>
            <th>ID nhân viên</th>
            <th>Họ và tên</th>
            <th>Địa chỉ</th>
            <th>Ngày sinh</th>
            <th>Email</th>
            <th>SĐT</th>
            <th>Tính năng</th>
          </tr>
          </thead>
          <tbody>
          <!-- Nhập dữ liệu nhân viên ở đây -->
          <tr>
            <td><input type="checkbox"></td>
            <td>#CD12837</td>
            <td>Hồ Thị Thanh Ngân</td>
            <td>155-157 Trần Quốc Thảo, Quận 3, Hồ Chí Minh</td>
            <td>12/02/1999</td>
            <td>b@gmail.com</td>
            <td>0926737168</td>
            <td>
              <button class="btn btn-trash"><i class="fas fa-trash-alt"></i></button>
              <button class="btn btn-edit"><i class="fas fa-edit"></i></button>
            </td>
          </tr>

          <tr>
            <td><input type="checkbox"></td>
            <td>#CD12837</td>
            <td>Hồ Thị Thanh Ngân</td>
            <td>155-157 Trần Quốc Thảo, Quận 3, Hồ Chí Minh</td>
            <td>12/02/1999</td>
            <td>b@gmail.com</td>
            <td>0926737168</td>

            <td>
              <button class="btn btn-trash"><i class="fas fa-trash-alt"></i></button>
              <button class="btn btn-edit"><i class="fas fa-edit"></i></button>
            </td>
          </tr>

          <tr>
            <td><input type="checkbox"></td>
            <td>#CD12837</td>
            <td>Hồ Thị Thanh Ngân</td>
            <td>155-157 Trần Quốc Thảo, Quận 3, Hồ Chí Minh</td>
            <td>12/02/1999</td>
            <td>b@gmail.com</td>
            <td>0926737168</td>

            <td>
              <button class="btn btn-trash"><i class="fas fa-trash-alt"></i></button>
              <button class="btn btn-edit"><i class="fas fa-edit"></i></button>
            </td>
          </tr>

          <tr>
            <td><input type="checkbox"></td>
            <td>#CD12837</td>
            <td>Hồ Thị Thanh Ngân</td>
            <td>155-157 Trần Quốc Thảo, Quận 3, Hồ Chí Minh</td>
            <td>12/02/1999</td>
            <td>b@gmail.com</td>
            <td>0926737168</td>

            <td>
              <button class="btn btn-trash"><i class="fas fa-trash-alt"></i></button>
              <button class="btn btn-edit"><i class="fas fa-edit"></i></button>
            </td>
          </tr>

          <tr>
            <td><input type="checkbox"></td>
            <td>#CD12837</td>
            <td>Hồ Thị Thanh Ngân</td>
            <td>155-157 Trần Quốc Thảo, Quận 3, Hồ Chí Minh</td>
            <td>12/02/1999</td>
            <td>b@gmail.com</td>
            <td>0926737168</td>

            <td>
              <button class="btn btn-trash"><i class="fas fa-trash-alt"></i></button>
              <button class="btn btn-edit"><i class="fas fa-edit"></i></button>
            </td>
          </tr>

          </tbody>
        </table>
        <div class="pagination">
          <button class="page-prev"><i class="fa-solid fa-chevron-left"></i></button>
          <span class="page-number">1</span>
          <button class="page-next"><i class="fa-solid fa-angle-right"></i></button>
        </div>
      </div>
    </div>
    <!-- Modal chỉnh sửa thông tin nhân viên -->
    <div class="edit-modal" id="editModal" style="display: none;">
      <div class="edit-modal-content">
        <div class="edit-modal-header">
          <h5>Chỉnh sửa thông tin nhân viên cơ bản</h5>
          <button class="close-edit-modal"><i class="fa-solid fa-xmark"></i></button>
        </div>
        <div class="edit-modal-body">
          <form>
            <label for="newID">ID nhân viên</label>
            <input type="text" name="newID" id="newID" disabled>

            <label for="newName">Họ và tên</label>
            <input type="text" name="newName" id="newName" placeholder="Nhập Họ và tên">

            <label for="newPhone">Số điện thoại</label>
            <input type="text" name="newPhone" id="newPhone" placeholder="Nhập Số điện thoại">

            <label for="newEmail">Địa chỉ email</label>
            <input type="email" name="newEmail" id="newEmail" placeholder="Nhập Địa chỉ email">

            <label for="newDate">Ngày sinh</label>
            <input type="date" name="newDate" id="newDate" placeholder="Nhập Ngày sinh">

            <label for="newPosition">Chức vụ</label>
            <select name="newPosition" id="newPosition">
              <option>Bán hàng</option>
              <option>Tư vấn</option>
              <option>Dịch vụ</option>
              <option>Thu Ngân</option>
              <option>Quản kho</option>
              <option>Bảo trì</option>
              <option>Kiểm hàng</option>
              <option>Bảo vệ</option>
              <option>Tạp vụ</option>
            </select>

            <div class="edit-modal-actions">
              <button type="button" class="btn-save" onclick="saveChanges()">Lưu lại</button>
              <button type="button" class="btn-cancel">Hủy bỏ</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!-- Model Confirm -->
    <div id="confirmModal" class="modal-confirm">
      <div class="modal-content">
        <h2>Cảnh báo</h2>
        <p>Bạn có chắc chắn là muốn xóa nhân viên này?</p>
        <button class="btn btn-cancel">Hủy bỏ</button>
        <button class="btn btn-confirm" onclick="deleteEmployee()">Đồng ý</button>
      </div>
    </div>
  </div>
</div>

<script src="../../js/open-close-modal.js"></script>

</body>

</html>

