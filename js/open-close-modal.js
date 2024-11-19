// Hàm chung để mở hoặc đóng modal
function toggleModal(modalId, show = true) {
  const modal = document.getElementById(modalId);
  if (modal) {
    modal.style.display = show ? "flex" : "none";
  } else {
    console.error(`Modal với ID '${modalId}' không tồn tại.`);
  }
}

// Hàm mở modal (sử dụng toggleModal)
function openModal(modalId) {
  toggleModal(modalId, true);
}

// Hàm đóng modal (sử dụng toggleModal)
function closeModal(modalId) {
  toggleModal(modalId, false);
}

// Ví dụ thêm sự kiện cho nút chỉnh sửa và xóa
document.querySelectorAll(".btn-edit").forEach((button) => {
  button.addEventListener("click", function () {
    openModal("editModal"); // Mở modal chỉnh sửa (sử dụng ID của modal)
  });
});

document.querySelectorAll(".btn-trash").forEach((button) => {
  button.addEventListener("click", function () {
    openModal("confirmModal"); // Mở modal xác nhận xóa (sử dụng ID của modal)
  });
});

openModal("editModal");
openModal("confirmModal");
closeModal("editModal");
closeModal("confirmModal");

// Hàm chung để đóng modal
function toggleModal(modalId, show = true) {
  const modal = document.getElementById(modalId);
  if (modal) {
    modal.style.display = show ? "flex" : "none";
  } else {
    console.error(`Modal với ID '${modalId}' không tồn tại.`);
  }
}

// Tìm tất cả các nút đóng modal
document.querySelectorAll(".close-edit-modal").forEach((button) => {
  button.addEventListener("click", function () {
    const modal = button.closest(".edit-modal"); // Tìm modal gần nhất chứa nút
    if (modal) {
      modal.style.display = "none"; // Đóng modal
    } else {
      console.error("Không tìm thấy modal chứa nút này.");
    }
  });
});

// Tìm tất cả các nút có class 'btn-cancel' và gắn sự kiện
document.querySelectorAll(".btn-cancel").forEach((button) => {
  button.addEventListener("click", function () {
    // Tìm modal gần nhất chứa nút này
    const modal = button.closest(".modal-confirm, .edit-modal");
    if (modal) {
      modal.style.display = "none"; // Đóng modal
    } else {
      console.error("Không tìm thấy modal chứa nút này.");
    }
  });
});

// danh them cho product
// Hàm xử lý chọn dropdown
function setupDropdown(buttonId, menuClass) {
  const button = document.getElementById(buttonId);
  const menu = document.querySelector(`.${menuClass}`);

  // Khi người dùng nhấp vào mục trong dropdown
  menu.addEventListener("click", function (event) {
    event.preventDefault(); // Ngăn chặn hành vi mặc định
    const selectedText = event.target.textContent; // Lấy nội dung đã chọn
    button.textContent = selectedText; // Cập nhật nút hiển thị
    menu.style.display = "none"; // Ẩn menu sau khi chọn
  });

  // Khi người dùng nhấp vào nút, hiển thị menu
  button.addEventListener("click", function (event) {
    event.preventDefault(); // Ngăn chặn hành vi mặc định
    const isMenuVisible = menu.style.display === "block";
    menu.style.display = isMenuVisible ? "none" : "block";
  });

  // Ẩn menu nếu người dùng nhấp ra ngoài
  document.addEventListener("click", function (event) {
    if (!button.contains(event.target) && !menu.contains(event.target)) {
      menu.style.display = "none";
    }
  });
}
// Lấy checkbox "Chọn tất cả" và tất cả các checkbox dòng
const selectAllCheckbox = document.getElementById('select-all');
const rowCheckboxes = document.querySelectorAll('.row-checkbox');

if (selectAllCheckbox) {
    selectAllCheckbox.addEventListener('click', () => {
        rowCheckboxes.forEach((checkbox) => {
            checkbox.checked = selectAllCheckbox.checked;
        });
    });
}
// Hàm cập nhật thời gian hiện tại
function updateTime() {
    const now = new Date();
    const dayNames = ['Chủ Nhật', 'Thứ Hai', 'Thứ Ba', 'Thứ Tư', 'Thứ Năm', 'Thứ Sáu', 'Thứ Bảy'];
    const day = dayNames[now.getDay()];
    const date = now.toLocaleDateString('vi-VN');
    const time = now.toLocaleTimeString('vi-VN');
    document.getElementById('current-time').innerText = `${day}, ${date} - ${time}`;
}

// Cập nhật thời gian mỗi giây
setInterval(updateTime, 1000);

// Gọi ngay khi trang tải
updateTime();

// Gọi hàm thiết lập dropdown cho từng phần
setupDropdown("selectedCategory", "dropdown-content-danhmuc"); // Danh Mục
setupDropdown("selectedSupplier", "dropdown-content-nhacungcap"); // Nhà Cung Cấp
setupDropdown("selectedStatus", "dropdown-content-tinhtrang"); // Tình Trạng
