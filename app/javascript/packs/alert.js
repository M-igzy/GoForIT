window.onload = function() {
    const closeAlert = document.querySelector('.alert-success')
    document.querySelector('.alert-success').onclick = function() {
        console.log('alert success button clicked');
        closeAlert.style.display = 'none';
    }
}