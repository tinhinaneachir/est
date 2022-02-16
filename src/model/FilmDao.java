package model;

import java.util.List;

import bean.Acteur;
import bean.Film;
import bean.Notation;
import bean.Realisateur;

/**
 * 
 * @author liamf
 *
 */
public interface FilmDao {
	    void ajouter( Film film );
	    List<Film> lister();
	    Film getFilmByID(int idFilm);
	    List<Acteur> getListActeurByIdFilm(int idFilm);
	    Realisateur getRealisateurByIdFilm(int idFilm);
	    void noterFilm(Notation notation);
	    float getNoteFinalByIdFilm(int idFilm);
	    List<Film> rechercheFilmByLibelle(String libelle);
}
