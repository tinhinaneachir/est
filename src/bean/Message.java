package bean;

import java.sql.Date;

public class Message {
	private int IdMessage;
	private int User;
	private String contenue;
	private Date created_at;
	private int Film;

	public Message() {

	}

	public Message(int idMessage, int user, String contenue, Date created_at, int film) {
		super();
		IdMessage = idMessage;
		User = user;
		this.contenue = contenue;
		this.created_at = created_at;
		Film = film;
	}

	public int getIdMessage() {
		return IdMessage;
	}

	public void setIdMessage(int idMessage) {
		IdMessage = idMessage;
	}

	public int getUser() {
		return User;
	}

	public void setUser(int user) {
		User = user;
	}

	public String getContenue() {
		return contenue;
	}

	public void setContenue(String contenue) {
		this.contenue = contenue;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public int getFilm() {
		return Film;
	}

	public void setFilm(int film) {
		Film = film;
	}

}
