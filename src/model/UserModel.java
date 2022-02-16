package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.cj.util.StringUtils;

import bean.Film;
import bean.User;

public class UserModel implements UserDao {

	DataFactoryConnect dataBaseConnect;
	
	public UserModel(DataFactoryConnect dataBaseConnect) {
		this.dataBaseConnect=dataBaseConnect;
	}
	
	@Override
	public void ajouter(User user) {
		
		Connection connexion;
		PreparedStatement  prepareStatement ;
		try {
			    connexion = dataBaseConnect.getConnection();
			    prepareStatement = connexion.prepareStatement("INSERT INTO User(Email,Password,Nom,created_at,Photo,Prenom) VALUES(?,?,?,?,?,?);");

			    prepareStatement.setString(1, user.getEmail());
			    prepareStatement.setString(2, user.getPassword());
			    prepareStatement.setString(3, user.getNom());
			    prepareStatement.setString(4, null);
			    prepareStatement.setString(5, null);
			    prepareStatement.setString(6, user.getPrenom());

    		    prepareStatement.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	}

	@Override
	public User checkUserConnexion(User user) {
		
		try {
			
			Connection connexion = dataBaseConnect.getConnection();
			Statement statement = connexion.createStatement();
			System.out.println("checkUserConnexion email :"+user.getEmail());
			System.out.println("checkUserConnexion password :"+user.getPassword());
			System.out.println("SELECT * FROM user where Email='"+user.getEmail()+"' and Password='"+user.getPassword()+"';");
            ResultSet resultat = statement.executeQuery("SELECT * FROM user where Email='"+user.getEmail()+"' and Password='"+user.getPassword()+"';");
            
            User userConnecter=null;
            
            while (resultat.next()) {
            	userConnecter=new User();
            	userConnecter.setIdUser(resultat.getInt("IdUser"));
            	userConnecter.setEmail(resultat.getString("Email"));
                break;
			}
          
//			String res = resultat.getString(1);
//			
//			if(! StringUtils.isNullOrEmpty(res)) {
//				System.out.println("utilsateur existe ========================");
//				
//			}
            
            return userConnecter;
            
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public boolean findUserByEmail(String email) {
		
		Connection connexion;
		try {
			connexion = dataBaseConnect.getConnection();
			Statement statement = connexion.createStatement();			
	        ResultSet resultat = statement.executeQuery("SELECT * FROM user where Email='"+email+"';");
	        while (resultat.next()) {
            	return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}

}
