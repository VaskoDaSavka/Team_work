function validateForm() {
    let isValid = true;
    const author = document.getElementById('author').value.trim();
    const description = document.getElementById('description').value.trim();
    const date = document.getElementById('date').value.trim();
    const phone = document.getElementById('phone').value.trim();

    // Clear previous client-side errors
    document.querySelectorAll('.client-error').forEach(el => el.textContent = '');

    // Author validation
    if (!author) {
        document.getElementById('author-error').textContent = 'Author name is required.';
        isValid = false;
    } else if (author.length > 50) {
        document.getElementById('author-error').textContent = 'Author name must be 50 characters or less.';
        isValid = false;
    }

    // Description validation
    if (!description) {
        document.getElementById('description-error').textContent = 'Description is required.';
        isValid = false;
    } else if (description.length > 500) {
        document.getElementById('description-error').textContent = 'Description must be 500 characters or less.';
        isValid = false;
    }

    // Date validation
    const datePattern = /^\d{2}\.\d{2}\.\d{4}$/;
    if (!date) {
        document.getElementById('date-error').textContent = 'Date is required.';
        isValid = false;
    } else if (!datePattern.test(date)) {
        document.getElementById('date-error').textContent = 'Date must be in DD.MM.YYYY format.';
        isValid = false;
    } else {
        const [day, month, year] = date.split('.').map(Number);
        const dateObj = new Date(year, month - 1, day);
        if (isNaN(dateObj.getTime()) || dateObj.getDate() !== day || dateObj.getMonth() + 1 !== month || dateObj.getFullYear() !== year) {
            document.getElementById('date-error').textContent = 'Invalid date.';
            isValid = false;
        }
    }

    // Phone validation
    const phonePattern = /^\+7\(\d{3}\)\d{3}-\d{2}-\d{2}$/;
    if (!phone) {
        document.getElementById('phone-error').textContent = 'Phone number is required.';
        isValid = false;
    } else if (!phonePattern.test(phone)) {
        document.getElementById('phone-error').textContent = 'Phone must be in +7(XXX)XXX-XX-XX format.';
        isValid = false;
    }

    return isValid;
}
