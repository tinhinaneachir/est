package model;

import bean.User;

/**
 * 
 * @author liamf
 *
 */
public interface UserDao {
	void ajouter(User user);
	User checkUserConnexion(User user);
	boolean findUserByEmail(String email);
}
