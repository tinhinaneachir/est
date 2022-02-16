package com.sdzee.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Film;
import bean.Notation;
import bean.User;
import model.DataFactoryConnect;
import model.FilmModel;

public class NotationControleur extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	FilmModel modelfilm;

	@Override
	public void init() throws ServletException {
		DataFactoryConnect data = DataFactoryConnect.getInstance();
		modelfilm = new FilmModel(data);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("begin ----savenote");
		
		 
        int idUser = (int) request.getSession().getAttribute("IdUser");
        System.out.println("IdUser:"+idUser);
		
        int idFilm = (int) request.getSession().getAttribute("idFilm");
        System.out.println("idFilm :"+idFilm);
  
		System.out.println("Note text :"+request.getParameter("text"));
		
		int note=Integer.parseInt(request.getParameter("text"));
   	   	Notation notation=new Notation();
		notation.setFilm(idFilm);
		notation.setUser(idUser);
		notation.setNote(note);
		
		modelfilm.noterFilm(notation);
		System.out.println("end ----savenote");
		//this.getServletContext().getRequestDispatcher("/WEB-INF/acceuil.jsp").forward(request, response);
	}

}
