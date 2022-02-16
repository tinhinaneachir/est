package com.sdzee.servlets;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Acteur;
import bean.Film;

import model.DataFactoryConnect;
import model.FilmModel;

import java.io.IOException;



public class FilmControleur extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	FilmModel modelfilm;
	@Override
	public void init() throws ServletException {
		
		DataFactoryConnect data=DataFactoryConnect.getInstance();
		modelfilm=new FilmModel(data);
		
	}
	
	public void doGet( HttpServletRequest request, HttpServletResponse
			response ) throws ServletException, IOException {
		
		    List<Film> listFilms = modelfilm.lister();
		    		    
		    request.setAttribute("listFilms", listFilms);		
		    
		    for(Film film:listFilms) {    	
		      	System.out.println("====================== : "+film.getIdFilm()+" ----------- "+film.getTitre());
		     }
		    
			this.getServletContext().getRequestDispatcher( "/WEB-INF/acceuil.jsp").forward( request, response );
	}
	
	

}