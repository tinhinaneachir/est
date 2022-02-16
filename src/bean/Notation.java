package bean;

public class Notation {
	private int IdNotation;
	private int Film;
	private int User;
	private int Note;
	
	public Notation() {
	
	}

	public Notation(int idNotation, int film, int user, int note) {
		super();
		IdNotation = idNotation;
		Film = film;
		User = user;
		Note = note;
	}

	public int getIdNotation() {
		return IdNotation;
	}

	public void setIdNotation(int idNotation) {
		IdNotation = idNotation;
	}

	public int getFilm() {
		return Film;
	}

	public void setFilm(int film) {
		Film = film;
	}

	public int getUser() {
		return User;
	}

	public void setUser(int user) {
		User = user;
	}

	public int getNote() {
		return Note;
	}

	public void setNote(int note) {
		Note = note;
	}
	
	
}
