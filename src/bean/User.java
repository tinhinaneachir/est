package bean;

import java.util.Date;

public class User {
	private int IdUser;
	private String Email;
	private String Password;
	private String Nom;
	private Date created_at;
	private String Photo;
	private String Prenom;

	public User() {

	}

	public User(int idUser, String email, String password, String nom, Date created_at, String photo, String prenom) {
		IdUser = idUser;
		Email = email;
		Password = password;
		Nom = nom;
		this.created_at = created_at;
		Photo = photo;
		Prenom = prenom;
	}

	public int getIdUser() {
		return IdUser;
	}

	public void setIdUser(int idUser) {
		IdUser = idUser;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getNom() {
		return Nom;
	}

	public void setNom(String nom) {
		Nom = nom;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public String getPhoto() {
		return Photo;
	}

	public void setPhoto(String photo) {
		Photo = photo;
	}

	public String getPrenom() {
		return Prenom;
	}

	public void setPrenom(String prenom) {
		Prenom = prenom;
	}

}
