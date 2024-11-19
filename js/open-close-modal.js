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
document.querySelectorAll('.btn-edit').forEach(button => {
    button.addEventListener('click', function () {
        openModal('editModal'); // Mở modal chỉnh sửa (sử dụng ID của modal)
    });
});

document.querySelectorAll('.btn-trash').forEach(button => {
    button.addEventListener('click', function () {
        openModal('confirmModal'); // Mở modal xác nhận xóa (sử dụng ID của modal)
    });
});


openModal('editModal'); 
openModal('confirmModal');
closeModal('editModal'); 
closeModal('confirmModal');


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
document.querySelectorAll('.close-edit-modal').forEach(button => {
    button.addEventListener('click', function () {
        const modal = button.closest('.edit-modal'); // Tìm modal gần nhất chứa nút
        if (modal) {
            modal.style.display = 'none'; // Đóng modal
        } else {
            console.error("Không tìm thấy modal chứa nút này.");
        }
    });
});

// Tìm tất cả các nút có class 'btn-cancel' và gắn sự kiện
document.querySelectorAll('.btn-cancel').forEach(button => {
    button.addEventListener('click', function () {
        // Tìm modal gần nhất chứa nút này
        const modal = button.closest('.modal-confirm, .edit-modal'); 
        if (modal) {
            modal.style.display = 'none'; // Đóng modal
        } else {
            console.error("Không tìm thấy modal chứa nút này.");
        }
    });
});



