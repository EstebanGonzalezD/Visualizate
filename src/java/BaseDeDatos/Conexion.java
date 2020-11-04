package BaseDeDatos;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private static Connection conn = null;
    private static String user = "visualizate";
    private static String password = "poli20";
    private static String url = "jdbc:oracle:thin:@localhost:1521:orcl";

    public static Connection getConnection() {
        
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, user, password);
            conn.setAutoCommit(false);
            if (conn != null) {
                System.out.println("Se ha conectado correctamente");
            } else {
                System.out.println("La conexión es erronea");
            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Conexion Erronea "+ e.getMessage());
        }

        return conn;
    }

    public void desconexion() {
        try {
            conn.close();
        } catch (Exception e) {
            System.out.println("Error al desconectar"+e.getMessage());
        }
    }
    
    public static void main(String[] args) {
        Conexion c = new Conexion();
        c.getConnection();
    }

}
