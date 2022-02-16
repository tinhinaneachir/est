package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.cj.util.StringUtils;

import bean.User;

public class UserModel implements UserDao {

	DataFactoryConnect dataBaseConnect;

	public UserModel(DataFactoryConnect dataBaseConnect) {
		this.dataBaseConnect = dataBaseConnect;
	}

	@Override
	public void ajouter(User user) {

		Connection connexion;
		PreparedStatement prepareStatement;
		try {
			connexion = dataBaseConnect.getConnection();
			prepareStatement = connexion.prepareStatement(
					"INSERT INTO User(Email,Password,Nom,created_at,Photo,Prenom) VALUES(?,?,?,?,?,?);");

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
	public boolean checkUserConnexion(User user) {



		return true;
	}

}
