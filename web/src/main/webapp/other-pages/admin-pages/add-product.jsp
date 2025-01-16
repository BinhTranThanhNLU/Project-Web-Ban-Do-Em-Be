<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title" value="Admin"/>
<c:set var="pageCssList" value="${['navbar-left-top.css', 'add-employee.css']}"/>
<c:set var="pageJsList" value="${[]}"/>

<%@ include file="/partials/header-nav-admin.jsp" %>


<div class="container">
  <div class="container-add">
    <div class="breadcrumb">
      <a href="./manage-employee.jsp">Danh Sách Sản Phẩm</a> / <span>Thêm Sản Phẩm</span>
    </div>
    <div class="header" style="color: black;">
      Tạo mới sản phẩm
      <hr />
    </div>
    <c:if test="${not empty sessionScope.message}">
      <div style="color: white; font-weight: bold; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: ${sessionScope.success ? '#90EE90' : '#FF9999'};">
        <ul style="margin: 0; padding: 0; list-style: none;">
          <c:forEach var="error" items="${sessionScope.message}">
            <li>${error}</li>
          </c:forEach>
        </ul>
      </div>
      <c:remove var="message" scope="session"/>
      <c:remove var="success" scope="session"/>
    </c:if>

    <form action="${pageContext.request.contextPath}/manage-product/add-product" method="post" enctype="multipart/form-data">
      <!-- Tên sản phẩm -->
      <div class="form-group">
        <label for="title">Tên sản phẩm</label>
        <input type="text" id="title" name="title" placeholder="Nhập tên sản phẩm" required />
      </div>

      <!-- Giá sản phẩm -->
      <div class="form-group">
        <label for="price">Giá sản phẩm</label>
        <input type="number" id="price" name="price" placeholder="Nhập giá sản phẩm" required step="0.01" />
      </div>

      <!-- Giảm giá -->
      <div class="form-group">
        <label for="discount">Giảm giá (%)</label>
        <input type="number" id="discount" name="discount" placeholder="Nhập giảm giá" min="0" max="100" />
      </div>

      <!-- Danh mục -->
      <div class="form-group">
        <label for="category">Danh mục</label>
        <select id="category" name="idCategory" required>
          <c:forEach var="category" items="${categories}">
            <option value="${category.idCategory}">${category.name}</option>
          </c:forEach>
        </select>
      </div>

      <!-- Mô tả sản phẩm -->
      <div class="form-group">
        <label for="description">Mô tả sản phẩm</label>
        <textarea id="description" name="description" placeholder="Nhập mô tả sản phẩm" rows="5" required></textarea>
      </div>

      <!-- Ảnh sản phẩm -->
      <div class="form-group">
        <label for="productImage">Ảnh sản phẩm</label>
        <input type="file" id="productImage" name="productImage" accept="image/*" multiple />
      </div>

      <!-- Trạng thái sản phẩm -->
      <div class="form-group">
        <label>Trạng thái sản phẩm</label>
        <div>
          <input type="radio" id="new-yes" name="isNew" value="1" checked />
          <label for="new-yes">Mới</label>
        </div>
        <div>
          <input type="radio" id="new-no" name="isNew" value="0" />
          <label for="new-no">Không mới</label>
        </div>
      </div>

      <div class="form-group" style="margin-bottom: 20px;">
        <label style="font-weight: bold; display: block; margin-bottom: 10px;">Biến thể sản phẩm</label>
        <div class="variant-group" style="display: flex; flex-wrap: wrap; gap: 20px;">
          <!-- Màu sắc -->
          <div style="flex: 1; min-width: 150px;">
            <label for="color" style="display: block; margin-bottom: 5px; font-weight: 500;">Màu sắc</label>
            <select id="color" name="color" style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 5px;">
              <c:forEach var="color" items="${colors}">
                <option value="${color.idColor}">${color.name}</option>
              </c:forEach>
            </select>
          </div>

          <!-- Kích cỡ -->
          <div style="flex: 1; min-width: 150px;">
            <label for="size" style="display: block; margin-bottom: 5px; font-weight: 500;">Kích cỡ</label>
            <select id="size" name="size" style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 5px;">
              <c:forEach var="size" items="${sizes}">
                <option value="${size.idSize}">${size.name}</option>
              </c:forEach>
            </select>
          </div>

          <!-- Số lượng trong kho -->
          <div style="flex: 1; min-width: 150px;">
            <label for="stockQuantity" style="display: block; margin-bottom: 5px; font-weight: 500;">Số lượng kho</label>
            <input type="number" id="stockQuantity" name="stockQuantity" placeholder="Nhập số lượng" required min="0"
                   style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 5px;" />
          </div>
        </div>
      </div>

      <!-- Nút hành động -->
      <div class="form-actions">
        <button type="submit" class="save-button">Thêm sản phẩm</button>
        <button type="button" class="cancel-button">Hủy bỏ</button>
      </div>
    </form>

  </div>
</div>
</div>
</div>

<script src="https://cdn.ckeditor.com/4.20.2/standard/ckeditor.js"></script>
<script>
  // Kích hoạt CKEditor cho trường textarea "description"
  CKEDITOR.replace('description', {
    height: 300, // Chiều cao editor
    toolbar: [
      ['Bold', 'Italic', 'Underline', 'Strike', '-', 'Subscript', 'Superscript'],
      ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote'],
      ['Link', 'Unlink', '-', 'Image', '-', 'Table', '-', 'HorizontalRule'],
      ['Undo', 'Redo', '-', 'Cut', 'Copy', 'Paste', '-', 'Find', 'Replace'],
      ['Format', 'Font', 'FontSize', '-', 'TextColor', 'BGColor'],
      ['Source']
    ]
  });
</script>

<%@ include file="/partials/footer-admin.jsp" %>

