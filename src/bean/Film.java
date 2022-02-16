package bean;

/**
 * film
 *
 */
public class Film {

	private int IdFilm;
	private String Titre;
	private String Image;
	private float NoteFinal;
	private String anneecreation;
	private String duree;
	private String Description;
	private String categorie;
	private String Qualite;
	private String codeIso;
	private int Realisateur;
	private String LienFilm;

	public Film() {

	}

	public Film(int idFilm, String titre, String image, float NoteFinal, String anneecreation, String duree,
			String description, String categorie, String qualite, String codeIso, int realisateur,String LienFilm) {
		IdFilm = idFilm;
		Titre = titre;
		Image = image;
		this.NoteFinal = NoteFinal;
		this.anneecreation = anneecreation;
		this.duree = duree;
		Description = description;
		this.categorie = categorie;
		Qualite = qualite;
		this.codeIso = codeIso;
		Realisateur = realisateur;
		this.LienFilm=LienFilm;
	}

	public int getIdFilm() {
		return IdFilm;
	}

	public void setIdFilm(int idFilm) {
		IdFilm = idFilm;
	}

	public String getTitre() {
		return Titre;
	}

	public void setTitre(String titre) {
		Titre = titre;
	}

	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}

	public float getNoteFinal() {
		return NoteFinal;
	}
	public String getAnneecreation() {
		return anneecreation;
	}

	public void setAnneecreation(String anneecreation) {
		this.anneecreation = anneecreation;
	}

	public String getDuree() {
		return duree;
	}

	public void setDuree(String duree) {
		this.duree = duree;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public String getQualite() {
		return Qualite;
	}

	public void setQualite(String qualite) {
		Qualite = qualite;
	}

	public String getCodeIso() {
		return codeIso;
	}

	public void setCodeIso(String codeIso) {
		this.codeIso = codeIso;
	}

	public int getRealisateur() {
		return Realisateur;
	}

	public void setRealisateur(int realisateur) {
		Realisateur = realisateur;
	}
		
	
	public String getLienFilm() {
		return LienFilm;
	}

	public void setLienFilm(String lienFilm) {
		LienFilm = lienFilm;
	}

	public void setNoteFinal(float noteFinal) {
		NoteFinal = noteFinal;
	}

	@Override
		public String toString() {
			
			return super.toString();
		}

}
