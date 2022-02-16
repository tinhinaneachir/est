package bean;

import java.util.Date;

public class Password_reset {
	private int IdPassword_Result;
	private String Email;
	private String token;
	private Date created_at;

	public Password_reset() {

	}

	public Password_reset(int idPassword_Result, String email, String token, Date created_at) {
		super();
		IdPassword_Result = idPassword_Result;
		Email = email;
		this.token = token;
		this.created_at = created_at;
	}

	public int getIdPassword_Result() {
		return IdPassword_Result;
	}

	public void setIdPassword_Result(int idPassword_Result) {
		IdPassword_Result = idPassword_Result;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

}
