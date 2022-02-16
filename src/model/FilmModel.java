package model;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Acteur;
import bean.Film;
import bean.Notation;
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
		
		Film film = null;
		try {
			Connection connexion = dataBaseConnect.getConnection();
			Statement statement = connexion.createStatement();
			ResultSet resultat = statement.executeQuery("SELECT * FROM film where IdFilm="+idFilm);
			
			while (resultat.next()) {

				int IdFilm = resultat.getInt("IdFilm");
				String Titre = resultat.getString("Titre");
				String Image = resultat.getString("Image");
				long NoteFinal = resultat.getLong("NoteFinal");
				String anneecreation = resultat.getString("anneecreation");
				String duree = resultat.getString("duree");
				String Description = resultat.getString("Description");
				String categorie = resultat.getString("categorie");
				String Qualite = resultat.getString("Qualite");
				String codeIso = resultat.getString("codeIso");
				int Realisateur = resultat.getInt("Realisateur");
                String LienFilm=resultat.getString("LienFilm");
				
				film = new Film(IdFilm, Titre, Image, NoteFinal, anneecreation, duree, Description, categorie,
						Qualite, codeIso, Realisateur,LienFilm);
			}
    
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return film;
	}
	

	@Override
	public List<Film> lister() {

		List<Film> films = new ArrayList();
		try {
			Connection connexion = dataBaseConnect.getConnection();
			Statement statement = connexion.createStatement();
			ResultSet resultat = statement.executeQuery("SELECT * FROM film;");

			while (resultat.next()) {

				int IdFilm = resultat.getInt("IdFilm");
				String Titre = resultat.getString("Titre");
				String Image = resultat.getString("Image");
				long NoteFinal = resultat.getLong("NoteFinal");
				String anneecreation = resultat.getString("anneecreation");
				String duree = resultat.getString("duree");
				String Description = resultat.getString("Description");
				String categorie = resultat.getString("categorie");
				String Qualite = resultat.getString("Qualite");
				String codeIso = resultat.getString("codeIso");
				int Realisateur = resultat.getInt("Realisateur");
				 String LienFilm=resultat.getString("LienFilm");
				Film film = new Film(IdFilm, Titre, Image, NoteFinal, anneecreation, duree, Description, categorie,
						Qualite, codeIso, Realisateur,LienFilm);

				films.add(film);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return films;
	}

	

	@Override
	public Realisateur getRealisateurByIdFilm(int idFilm) {
		
		Realisateur realisateur = null;
		try {
			Film film=getFilmByID(idFilm);
			Connection connexion = dataBaseConnect.getConnection();
			Statement statement = connexion.createStatement();
			ResultSet resultat = statement.executeQuery("SELECT * FROM Realisateur where IdRealisateur="+film.getRealisateur()+";");
			while (resultat.next()) {				
				realisateur=new Realisateur(resultat.getInt("IdRealisateur"), resultat.getString("Nom_prenom"), resultat.getString("Nationalite"), resultat.getString("Photo"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return realisateur;		
	}

	@Override
	public List<Acteur> getListActeurByIdFilm(int idFilm) {
		List<Acteur> listActeurs= new ArrayList();
		try {
			Connection connexion = dataBaseConnect.getConnection();
			Statement statement = connexion.createStatement();
			Statement statement2 = connexion.createStatement();
			ResultSet resultat = statement.executeQuery("SELECT * FROM Acteurfilm where Film="+idFilm+";");

			while (resultat.next()) {
				int idActeur = resultat.getInt("Acteur");				
				ResultSet resultatActeur = statement2.executeQuery("SELECT * FROM Acteur where IdActeur="+idActeur+";");
				while (resultatActeur.next()) {
					Acteur acteur=new Acteur(idActeur,resultatActeur.getString("Nom_Prenom"),resultatActeur.getString("Nationalite"), resultatActeur.getString("Photo"));
					listActeurs.add(acteur);
				}
			}
			
			statement.close();
			statement2.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return listActeurs;
	}

	@Override
	public void noterFilm(Notation notation) {
		Connection connexion;
		PreparedStatement  prepareStatement ;
		try {
			    connexion = dataBaseConnect.getConnection();
			    prepareStatement = connexion.prepareStatement("INSERT INTO Notation(Film,User,Note) VALUES(?,?,?);");
			    prepareStatement.setInt(1, notation.getFilm());
			    prepareStatement.setInt(2, notation.getUser());
			    prepareStatement.setInt(3, notation.getNote());
    		    prepareStatement.executeUpdate();
	
		} catch (SQLException e) {
			System.out.println("======================"+e.getMessage());
			e.printStackTrace();
		}
		
	}

	@Override
	public float getNoteFinalByIdFilm(int idFilm) {
		float noteFinal=0;
		try {
			Connection connexion = dataBaseConnect.getConnection();
			Statement statement = connexion.createStatement();
			ResultSet resultat = statement.executeQuery("SELECT avg(Note) as noteFinal FROM notation where Film="+idFilm);
			while (resultat.next()) {
				
				noteFinal = resultat.getFloat("noteFinal");
			}    
			System.out.println("Note final du film :"+noteFinal);
			return noteFinal;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return noteFinal;
	}

	@Override
	public List<Film> rechercheFilmByLibelle(String libelle) {
		List<Film> films = new ArrayList();
		try {
			Connection connexion = dataBaseConnect.getConnection();
			Statement statement = connexion.createStatement();
			ResultSet resultat = statement.executeQuery("SELECT * FROM film where Titre like '%"+libelle+"%'"+" or Description like '%"+libelle+"%';");

			while (resultat.next()) {

				int IdFilm = resultat.getInt("IdFilm");
				String Titre = resultat.getString("Titre");
				String Image = resultat.getString("Image");
				float NoteFinal = resultat.getFloat("NoteFinal");
				String anneecreation = resultat.getString("anneecreation");
				String duree = resultat.getString("duree");
				String Description = resultat.getString("Description");
				String categorie = resultat.getString("categorie");
				String Qualite = resultat.getString("Qualite");
				String codeIso = resultat.getString("codeIso");
				int Realisateur = resultat.getInt("Realisateur");
				 String LienFilm=resultat.getString("LienFilm");
				Film film = new Film(IdFilm, Titre, Image, NoteFinal, anneecreation, duree, Description, categorie,
						Qualite, codeIso, Realisateur,LienFilm);

				films.add(film);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return films;
	}

	

}
