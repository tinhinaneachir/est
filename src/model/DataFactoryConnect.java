package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 * connexion ç la base de données 
 * @author chahinez
 *
 */
public class DataFactoryConnect {
    private String url;
    private String username;
    private String password;

    DataFactoryConnect(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }

    public static DataFactoryConnect getInstance() {
    	
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {

        }

        DataFactoryConnect instance = new DataFactoryConnect(
                "jdbc:mysql://localhost:3306/films", "root", "admin");
        return instance;
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }

    
}