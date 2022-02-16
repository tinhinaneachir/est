package bean;

public class Acteurfilm {
	private int IdActeurFilm;
	private int Film;
	private int Acteur;

	public Acteurfilm() {
		
	}

	public Acteurfilm(int idActeurFilm, int film, int acteur) {
		super();
		IdActeurFilm = idActeurFilm;
		Film = film;
		Acteur = acteur;
	}

	public int getIdActeurFilm() {
		return IdActeurFilm;
	}

	public void setIdActeurFilm(int idActeurFilm) {
		IdActeurFilm = idActeurFilm;
	}

	public int getFilm() {
		return Film;
	}

	public void setFilm(int film) {
		Film = film;
	}

	public int getActeur() {
		return Acteur;
	}

	public void setActeur(int acteur) {
		Acteur = acteur;
	}

}
