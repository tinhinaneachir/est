package bean;
/**
 * Acteur
 */
public class Acteur {
	
	private int IdActeur;
	private String  Nom_Prenom;
	private String  Nationalite;
	private String Photo;

	public Acteur(int idActeur, String nom_Prenom, String nationalite, String photo) {
		IdActeur = idActeur;
		Nom_Prenom = nom_Prenom;
		Nationalite = nationalite;
		Photo = photo;
	}

	public int getIdActeur() {
		return IdActeur;
	}

	public void setIdActeur(int idActeur) {
		IdActeur = idActeur;
	}

	public String getNom_Prenom() {
		return Nom_Prenom;
	}

	public void setNom_Prenom(String nom_Prenom) {
		Nom_Prenom = nom_Prenom;
	}

	public String getNationalite() {
		return Nationalite;
	}

	public void setNationalite(String nationalite) {
		Nationalite = nationalite;
	}

	public String getPhoto() {
		return Photo;
	}

	public void setPhoto(String photo) {
		Photo = photo;
	}
}
