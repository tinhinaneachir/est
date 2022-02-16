package bean;

/**
 * Realisateur 
 */
public class Realisateur {

	private int IdRealisateur;
	private String Nom_prenom;
	private String Nationalite;
	private String Photo;

	public Realisateur(int idRealisateur, String nom_prenom, String nationalite, String photo) {
		
		IdRealisateur = idRealisateur;
		Nom_prenom = nom_prenom;
		Nationalite = nationalite;
		Photo = photo;
	}

	public int getIdRealisateur() {
		return IdRealisateur;
	}

	public void setIdRealisateur(int idRealisateur) {
		IdRealisateur = idRealisateur;
	}

	public String getNom_prenom() {
		return Nom_prenom;
	}

	public void setNom_prenom(String nom_prenom) {
		Nom_prenom = nom_prenom;
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
