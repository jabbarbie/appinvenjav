import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//import com.mysql.jdbc.Driver
public class config {
    private static Connection koneksi;
    public static Connection configDB()throws SQLException{
        try {
            String url="jdbc:mysql://localhost:3306/appinven"; //url database
            String user="root"; //user database
            String pass=""; //password database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            koneksi=DriverManager.getConnection(url, user, pass);            
        } catch (Exception e) {
            System.err.println("koneksi gagal " + e.getMessage()); //perintah menampilkan error pada koneksi
        }
        return koneksi;
    }    
    public static String satekambing;
    
}