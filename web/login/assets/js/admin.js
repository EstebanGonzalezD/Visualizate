$('#ValidatedForm').click(function () {
    if ($('#admin_user').val().trim() === '' || $('#admin_pass').val().trim() === '') {
        alert('Los campos están vacios');
    } else {
        
    }
});

function ValidateAdminPassword() {
    var pasador;
    
    if (admin_pass = document.getElementById('admin_pass').value == '12345') {
        alert("Acceso Permitido");
        pasador = true;
    } else {
        alert("Acceso Denegado");
        pasador = false;
    }
    
    return false;
}

$(".toggle-password").click(function () {
    $(this).toggleClass("fa-eye fa-eye-slash");
    var input = $($(this).attr("toggle"));
    if (input.attr("type") == "password") {
        input.attr("type", "text");
    } else {
        input.attr("type", "password");
    }
});