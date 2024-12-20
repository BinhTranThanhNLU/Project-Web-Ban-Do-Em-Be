
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1. 00" />
  <title>Quản Lý Sản Phẩm</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6. 00/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- CSS CHUNG CHO NAVBAR LEFT VÀ TOP  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <link rel="stylesheet" href="../../web/src/main/webapp/static/css/admin-css/navbar-left-top.css" />
  <link rel="stylesheet" href="../../web/src/main/webapp/static/css/admin-css/manage-product.css" />
</head>

<body>
<div class="container-scroller">
  <!-- Navbar-Left -->
  <navbar class="navbar-left" id="navbar-left">
    <div class="sidebar-header">
      <div class="user-profile">
        <div class="sidebar-title">
          <a href="index.html" class="brand-logo-mini"><img src="../../web/src/main/webapp/static/images/logo.png" alt="logo" /></a>
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
    <hr />
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
        <a class="menu-link active" href="./manage-product.html">
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
          <input type="text" placeholder="Search products" />
        </div>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="./add-employee.html" class="nav-link"><i class="fa-solid fa-plus"></i>Thêm sản phẩm mới</a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link"><i class="fa-solid fa-message"></i> Tin Nhắn
              <span class="badge">4</span></a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link"><i class="fa-solid fa-bell"></i> Thông Báo
              <span class="badge">3</span></a>
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

    <div class="container-products">
      <div class="header-products">
        <h1>Danh Sách Sản Phẩm</h1>
        <div class="header-bar">
          <span class="header-title">Thời gian hiện tại:</span>
          <span id="current-time" class="header-timestamp"></span>
        </div>
      </div>
      <div class="action-buttons">
        <a href="./add-product.html" class="btn btn-add"><i class="fa-solid fa-plus"></i> Tạo Mới Sản Phẩm</a>
        <button class="btn btn-add-quantity" onclick="openAddQuantityModal()">Thêm sản phẩm</button>
        <button class="btn btn-upload">Tải từ file</button>
        <button class="btn btn-print">In dữ liệu</button>
        <button class="btn btn-copy">Sao chép</button>
        <button class="btn btn-excel">Xuất Excel</button>
        <button class="btn btn-pdf">Xuất PDF</button>
        <button class="btn btn-delete">Xóa tất cả</button>
      </div>
      <div class="search-product">
        <input type="text" id="search" name="search" />
        <button class="search-btn">Tìm Kiếm</button>
        <!-- <label class="search-btn" for="search">Tìm kiếm</label> -->
      </div>
      <table>
        <thead>
        <tr>
          <th><input type="checkbox" id="select-all"></th>
          <th>Mã sản phẩm</th>
          <th>Tên sản phẩm</th>
          <th>Ảnh</th>
          <th>Số lượng</th>
          <th>Tình trạng</th>
          <th>Giá tiền</th>
          <th>Danh mục</th>
          <th>Chức năng</th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td><input type="checkbox" class="row-checkbox"></td>
          <td>71309005</td>
          <td>Áo Dài Tay</td>
          <td></td>
          <td>10</td>
          <td><span class="status-products">Còn hàng</span></td>
          <td>250.000đ</td>
          <td>Áo</td>
          <td class="actions-products">
            <button class="btn btn-trash">
              <i class="fas fa-trash-alt"></i>
            </button>
            <button class="btn btn-edit">
              <i class="fas fa-edit"></i>
            </button>
          </td>
        </tr>
        <tr>
          <td><input type="checkbox" class="row-checkbox"></td>
          <td>61301005</td>
          <td>Áo Dài Tay</td>
          <td></td>
          <td>70</td>
          <td><span class="status-products">Còn hàng</span></td>
          <td>250.000đ</td>
          <td>Áo</td>
          <td class="actions-products">
            <button class="btn btn-trash">
              <i class="fas fa-trash-alt"></i>
            </button>
            <button class="btn btn-edit">
              <i class="fas fa-edit"></i>
            </button>
          </td>
        </tr>
        <tr>
          <td><input type="checkbox" class="row-checkbox"></td>
          <td>62301003</td>
          <td>Áo Dài Tay</td>
          <td></td>
          <td>10</td>
          <td><span class="status-products">Còn hàng</span></td>
          <td>250.000đ</td>
          <td>Áo</td>
          <td class="actions-products">
            <button class="btn btn-trash">
              <i class="fas fa-trash-alt"></i>
            </button>
            <button class="btn btn-edit">
              <i class="fas fa-edit"></i>
            </button>
          </td>
        </tr>
        <tr>
          <td><input type="checkbox" class="row-checkbox"></td>
          <td>72638003</td>
          <td>Áo Dài Tay</td>
          <td></td>
          <td>50</td>
          <td><span class="status-products">Còn hàng</span></td>
          <td>250.000đ</td>
          <td>Áo</td>
          <td class="actions-products">
            <button class="btn btn-trash">
              <i class="fas fa-trash-alt"></i>
            </button>
            <button class="btn btn-edit">
              <i class="fas fa-edit"></i>
            </button>
          </td>
        </tr>
        <tr>
          <td><input type="checkbox" class="row-checkbox"></td>
          <td>72109004</td>
          <td>Quần Đùi SpiderMan</td>
          <td></td>
          <td>50</td>
          <td><span class="status-products">Còn hàng</span></td>
          <td>250.000đ</td>
          <td>Quần</td>
          <td class="actions-products">
            <button class="btn btn-trash">
              <i class="fas fa-trash-alt"></i>
            </button>
            <button class="btn btn-edit">
              <i class="fas fa-edit"></i>
            </button>
          </td>
        </tr>
        <tr>
          <td><input type="checkbox" class="row-checkbox"></td>
          <td>82716001</td>
          <td>Quần Đùi SpiderMan</td>
          <td></td>
          <td>55</td>
          <td><span class="status-products">Còn hàng</span></td>
          <td>250.000đ</td>
          <td>Quần</td>
          <td class="actions-products">
            <button class="btn btn-trash">
              <i class="fas fa-trash-alt"></i>
            </button>
            <button class="btn btn-edit">
              <i class="fas fa-edit"></i>
            </button>
          </td>
        </tr>
        <tr>
          <td><input type="checkbox" class="row-checkbox"></td>
          <td>72109001</td>
          <td>Quần Đùi SpiderMan</td>
          <td></td>
          <td>38</td>
          <td><span class="status-products">Còn hàng</span></td>
          <td>250.000đ</td>
          <td>Quần</td>
          <td class="actions-products">
            <button class="btn btn-trash">
              <i class="fas fa-trash-alt"></i>
            </button>
            <button class="btn btn-edit">
              <i class="fas fa-edit"></i>
            </button>
          </td>
        </tr>
        <tr>
          <td><input type="checkbox" class="row-checkbox"></td>
          <td>71301041</td>
          <td>Quần Đùi SpiderMan</td>
          <td></td>
          <td>80</td>
          <td><span class="status-products">Còn hàng</span></td>
          <td>250.000đ</td>
          <td>Quần</td>
          <td class="actions-products">
            <button class="btn btn-trash">
              <i class="fas fa-trash-alt"></i>
            </button>
            <button class="btn btn-edit">
              <i class="fas fa-edit"></i>
            </button>
          </td>
        </tr>
        <tr>
          <td><input type="checkbox" class="row-checkbox"></td>
          <td>71301037</td>
          <td>Quần Đùi SpiderMan</td>
          <td></td>
          <td>10</td>
          <td><span class="status-products">Còn hàng</span></td>
          <td>250.000đ</td>
          <td>Quần</td>

          <td class="actions-products">
            <button class="btn btn-trash">
              <i class="fas fa-trash-alt"></i>
            </button>
            <button class="btn btn-edit">
              <i class="fas fa-edit"></i>
            </button>
          </td>
        </tr>
        <tr>
          <td><input type="checkbox" class="row-checkbox"></td>
          <td>71300132</td>
          <td>Quần Đùi SpiderMan</td>
          <td></td>
          <td>10</td>
          <td><span class="status-products">Còn hàng</span></td>
          <td>250.000đ</td>
          <td>Quần</td>
          <td class="actions-products">
            <button class="btn btn-trash">
              <i class="fas fa-trash-alt"></i>
            </button>
            <button class="btn btn-edit">
              <i class="fas fa-edit"></i>
            </button>
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

    <!-- ĐỪNG THAY ĐỔI -->
    <!-- Modal chỉnh sửa thông tin khách hàng -->
    <div class="edit-modal" id="editModal" style="display: none">
      <div class="edit-modal-content">
        <div class="edit-modal-header">
          <h5>Chỉnh sửa thông tin sản phẩm</h5>
          <button class="close-edit-modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="edit-modal-body">
          <div class="form-group">
            <label for="newID">Tên Sản Phẩm</label>
            <input type="text" name="newID" id="newID" placeholder="Tên sản phẩm"/>
          </div>
          <div class="form-group">
            <label for="newEmail">Tình Trạng</label>
            <div class="dropdown">
              <button class="dropbtn-tinhtrang dropbtn" id="selectedStatus">
                --Chọn Tình Trạng--
              </button>
              <div class="dropdown-content-tinhtrang dropdown-content">
                <a href="#" data-value="Còn Hàng">--Còn Hàng--</a>
                <a href="#" data-value="Hết Hàng">--Hết Hàng--</a>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="newEmail">Danh Mục</label>
            <div class="dropdown">
              <button class="dropbtn-danhmuc dropbtn" id="selectedCategory">
                --Chọn Danh Mục--
              </button>
              <div class="dropdown-content-danhmuc dropdown-content">
                <a href="#" data-value="Áo">--Áo--</a>
                <a href="#" data-value="Quần">--Quần--</a>
              </div>
            </div>
          </div>

          <div class="form-group">
            <label for="newName">Số Lượng</label>
            <input type="text" name="newName" id="newName" placeholder="Nhập Số Lượng" />
          </div>

          <div class="form-group">
            <label for="newDate">Ngày Sửa</label>
            <input type="date" name="newDate" id="newDate" />
          </div>

          <div class="form-group">
            <label for="price">Giá Bán</label>
            <input type="text" name="price" id="price" placeholder="Giá Bán" />
          </div>

          <div class="form-group">
            <label for="color">Màu sắc</label>
            <select id="color" name="color">
              <option>-- Chọn màu sắc --</option>
            </select>
          </div>

          <div class="form-group">
            <label for="size">Size</label>
            <select id="size" name="size">
              <option>-- Chọn size --</option>
            </select>
          </div>

          <div class="form-group">
            <label for="newNote">Mô tả sản phẩm</label>
            <textarea name="newNote" id="newNote" placeholder="Nhập Mô tả sản phẩm"></textarea>
          </div>

          <div class="edit-modal-actions">
            <button type="button" class="btn-save" onclick="saveChanges()">
              Lưu lại
            </button>
            <button type="button" class="btn-cancel">Hủy bỏ</button>
          </div>
        </div>
      </div>
    </div>
    <!-- Model Confirm -->
    <div id="confirmModal" class="modal-confirm">
      <div class="modal-content">
        <h2>Cảnh báo</h2>
        <p>Bạn có chắc chắn là muốn xóa sản phẩm này này?</p>
        <button class="btn1 btn-cancel">Hủy bỏ</button>
        <button class="btn1 btn-confirm" onclick="deleteEmployee()">
          Đồng ý
        </button>
      </div>
    </div>

    <!-- Modal -->
    <div id="addQuantityModal" class="modal-add-quantity">
      <div class="modal-add-quantity-content">
        <!-- Header Modal -->
        <div class="modal-add-quantity-header">
          <h5 class="modal-add-quantity-title">Thêm Sản Phẩm</h5>
          <span class="modal-add-quantity-close" onclick="closeAddQuantityModal()">&times;</span>
        </div>

        <!-- Body Modal -->
        <div class="modal-add-quantity-body">
          <form id="addQuantityForm">
            <div class="form-group">
              <label for="productId" class="form-label">ID Sản Phẩm</label>
              <input type="text" id="productId" name="productId" class="form-input" required
                     placeholder="Nhập ID sản phẩm">
            </div>
            <div class="form-group">
              <label for="productQuantity" class="form-label">Số Lượng</label>
              <input type="number" id="productQuantity" name="quantity" class="form-input" min="1" value="1" required>
            </div>
          </form>
        </div>

        <!-- Footer Modal -->
        <div class="modal-add-quantity-footer">
          <button type="button" class="btn-cancel" onclick="closeAddQuantityModal()">Hủy</button>
          <button type="submit" form="addQuantityForm" class="btn-submit">Thêm</button>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- JS ĐỂ MỞ-ĐÓNG MODAL -->
<script src="../../js/open-close-modal.js"></script>
<script>
  // Mở modal Thêm sản phẩm
  function openAddQuantityModal() {
    document.getElementById("addQuantityModal").style.display = "block";
  }

  // Đóng modal Thêm sản phẩm
  function closeAddQuantityModal() {
    document.getElementById("addQuantityModal").style.display = "none";
  }

  // Đóng modal khi người dùng nhấp ra ngoài modal
  window.onclick = function(event) {
    if (event.target == document.getElementById("addQuantityModal")) {
      closeAddQuantityModal();
    }
  }
</script>

</body>

</html>
