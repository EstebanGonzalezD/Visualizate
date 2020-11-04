
package Entidades;

public class Usuario {
   

    private String nombre;
    private String usuario;
    private  String correo;
    private  String fecha;
    private String contraseña;
    private  String genero;
    private int puntaje;

    public Usuario() {
    }
    
    public Usuario(String nombre, String usuario, String contraseña, String correo, String genero, String fecha, int puntaje) {
        this.nombre = nombre;
        this.usuario = usuario;
        this.correo = correo;
        this.fecha = fecha;
        this.contraseña = contraseña;
        this.genero = genero;
        this.puntaje = puntaje;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String edad) {
        this.fecha = edad;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }
    
    public int getPuntaje() {
        return puntaje;
    }

    public void setPuntaje(int puntaje) {
        this.puntaje = puntaje;
    }
   
    
    

 
    
    
}
