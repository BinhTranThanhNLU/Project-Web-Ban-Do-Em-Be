// ----------- Function cho Model Confirm

let currentRow = null; 


function openModal(row) {
    currentRow = row; 
    document.getElementById('confirmModal').style.display = 'flex';
}

function closeModal() {
    document.getElementById('confirmModal').style.display = 'none';
}

function deleteEmployee() {
    if (currentRow) {
        currentRow.remove(); 
        currentRow = null;   
    }
    closeModal(); 
}

document.querySelectorAll('.btn-trash').forEach(button => {
    button.addEventListener('click', function() {
        openModal(this.closest('tr')); 
    });
});

// Model Update
function openEditModal() {
    document.getElementById('editModal').style.display = 'flex';
}

function closeEditModal() {
    document.getElementById('editModal').style.display = 'none';
}

document.querySelectorAll('.btn-edit').forEach(button => {
    button.addEventListener('click', function() {
        openEditModal();
        
    });
});

