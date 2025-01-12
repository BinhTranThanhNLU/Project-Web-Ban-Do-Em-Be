//1. Các chức năng liên quan đến modal Confirm
document.querySelectorAll(".btn-trash").forEach((button) => {
    button.addEventListener("click", function (event) {
        event.stopPropagation(); // Ngăn chặn sự kiện click lan ra ngoài
        openModal("confirmModal"); // Mở modal xác nhận xóa
    });
});

document.querySelectorAll(".btn-cancel").forEach((button) => {
    button.addEventListener("click", function () {
        const modal = button.closest(".modal-confirm");
        if (modal) {
            modal.style.display = "none"; // Đóng modal
        } else {
            console.error("Không tìm thấy modal chứa nút này.");
        }
    });
});

// Gắn sự kiện để đóng modal khi bấm bên ngoài modal
document.addEventListener("click", function (event) {
    const modal = document.getElementById("confirmModal");
    if (modal && modal.style.display === "flex") {
        const isClickInsideModal = modal.querySelector(".modal-content").contains(event.target);
        if (!isClickInsideModal) {
            modal.style.display = "none"; // Đóng modal nếu bấm bên ngoài
        }
    }
});

function toggleModal(modalId, show = true) {
    const modal = document.getElementById(modalId);
    if (modal) {
        modal.style.display = show ? "flex" : "none";
    } else {
        console.error(`Modal với ID '${modalId}' không tồn tại.`);
    }
}

function openModal(modalId) {
    toggleModal(modalId, true);
}

function closeModal(modalId) {
    toggleModal(modalId, false);
}

