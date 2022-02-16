package com.sdzee.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Acteur;
import bean.Film;
import bean.Notation;
import bean.Realisateur;
import model.DataFactoryConnect;
import model.FilmModel;

import java.io.IOException;
import java.util.List;



public class AfficheFilmControleur extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	FilmModel modelfilm;
	@Override
	public void init() throws ServletException {
		
		DataFactoryConnect data=DataFactoryConnect.getInstance();
		modelfilm=new FilmModel(data);
		
	}
	
	public void doGet( HttpServletRequest request, HttpServletResponse
			response ) throws ServletException, IOException {
   
		    int idFilm= Integer.parseInt(request.getParameter("idfilm"));
		    System.out.println(idFilm);
		    Film film = modelfilm.getFilmByID(idFilm);
		    //Recuperer la note finale 
		    float noteFinale=modelfilm.getNoteFinalByIdFilm(idFilm);
		    film.setNoteFinal(noteFinale);
		    
		    List<Acteur> listActeurs=modelfilm.getListActeurByIdFilm(idFilm);
		    Realisateur realisateur=modelfilm.getRealisateurByIdFilm(idFilm);
		    request.setAttribute("film", film);		
		    request.setAttribute("listActeurs", listActeurs);	
		    request.setAttribute("realisateur", realisateur);	
		    request.getSession().setAttribute("idFilm", idFilm);
	
			this.getServletContext().getRequestDispatcher( "/WEB-INF/film.jsp").forward( request, response );
	}
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Film> listFilms = modelfilm.rechercheFilmByLibelle(request.getParameter("search"));
		System.out.println("--------------- +"+listFilms.size());
		request.setAttribute("listFilms", listFilms);	
		this.getServletContext().getRequestDispatcher("/WEB-INF/acceuil.jsp").forward(request, response);
	}
	
	

}