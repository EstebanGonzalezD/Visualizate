function ubicacion(id) {
    if (id === "medellin") {
        document.getElementById('mapa').src = "https://www.google.com/maps/embed?pb=!1m12!1m8!1m3!1d126931.36092383244!2d-75.6575808!3d6.1835834!3m2!1i1024!2i768!4f13.1!2m1!1scomprar%20te%20de%20manzanilla!5e0!3m2!1ses-419!2sco!4v1602768148821!5m2!1ses-419!2sco";
        document.getElementById('dropdownMenuButton').innerHTML = "Medell&iacute;n";
    } else if (id === "bogota") {
        document.getElementById('mapa').src = "https://www.google.com/maps/embed?pb=!1m12!1m8!1m3!1d254513.30666130222!2d-74.1677264!3d4.6350014!3m2!1i1024!2i768!4f13.1!2m1!1scomprar%20te%20de%20manzanilla!5e0!3m2!1ses-419!2sco!4v1602772475025!5m2!1ses-419!2sco";
        document.getElementById('dropdownMenuButton').innerHTML = "Bogot&aacute;";
    } else if (id === "cali") {
        document.getElementById('mapa').src = "https://www.google.com/maps/embed?pb=!1m12!1m8!1m3!1d509776.6199349941!2d-76.6294492!3d3.4398915!3m2!1i1024!2i768!4f13.1!2m1!1scomprar%20te%20de%20manzanilla!5e0!3m2!1ses-419!2sco!4v1602772498079!5m2!1ses-419!2sco";
        document.getElementById('dropdownMenuButton').innerHTML = "Cali";
    }
}