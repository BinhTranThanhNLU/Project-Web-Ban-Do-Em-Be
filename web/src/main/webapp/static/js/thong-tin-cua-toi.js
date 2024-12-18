// Lấy các phần tử cần thiết
const saveBtn = document.getElementById('save-btn');
const modal = document.getElementById('success-modal');
const closeModalBtn = document.getElementById('close-modal');

// Khi bấm nút Save
saveBtn.addEventListener('click', () => {
    modal.style.display = 'flex'; // Hiển thị modal
});

// Khi bấm nút Đóng trong modal
closeModalBtn.addEventListener('click', () => {
    modal.style.display = 'none'; // Ẩn modal
});
