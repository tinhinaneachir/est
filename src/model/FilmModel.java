package model;

import java.sql.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Acteur;
import bean.Film;
import bean.Realisateur;

public class FilmModel implements FilmDao {

	DataFactoryConnect dataBaseConnect;

	public FilmModel(DataFactoryConnect dataBaseConnect) {
		this.dataBaseConnect = dataBaseConnect;
	}

	@Override
	public void ajouter(Film film) {

	}
	
	@Override
	public Film getFilmByID(int idFilm) {

		String test  = "test" + idFilm;
		String Titre = test;
		String Image = test;
		long NoteFinal = idFilm;
		String anneecreation = "2012";
		String duree = ""+idFilm;
		String Description = test;
		String categorie = test;
		String Qualite = test;
		String codeIso = test;
		int Realisateur = idFilm;
		 String LienFilm= "test";
		Film film = new Film(idFilm, Titre, Image, NoteFinal, anneecreation, duree, Description, categorie,
				Qualite, codeIso, Realisateur,LienFilm);
		
		return film;
	}
	

	@Override
	public List<Film> lister() {

		List<Film> films = new ArrayList();
		for(int i =1; i<5; i++) {
			int IdFilm = i;
			String test  = "test" + i;
			String Titre = test;
			String Image = test;
			long NoteFinal = i;
			String anneecreation = "2012";
			String duree = ""+i;
			String Description = test;
			String categorie = test;
			String Qualite = test;
			String codeIso = test;
			int Realisateur = i;
			 String LienFilm= "test";
			Film film = new Film(IdFilm, Titre, Image, NoteFinal, anneecreation, duree, Description, categorie,
					Qualite, codeIso, Realisateur,LienFilm);

			films.add(film);
		}
		return films;
	}

	

	@Override
	public Realisateur getRealisateurByIdFilm(int idFilm) {
		
		return new Realisateur(1, "Nom_Prenom_"+idFilm+"_1", "Nationalite"+idFilm+"_1", "PhotosActeur/AbrilVictoria.jpg");
		
	}

	@Override
	public List<Acteur> getListActeurByIdFilm(int idFilm) {
		List<Acteur> listActeurs= new ArrayList();
		for(int i =1; i<2; i++) {
			Acteur acteur=new Acteur(i,"Nom_Prenom_"+idFilm+"_"+i,"Nationalite_"+idFilm+"_"+i, "PhotosRealisateur/BenhZeitlin.jpg");
			listActeurs.add(acteur);
		}
		
		return listActeurs;
	}

	

}
