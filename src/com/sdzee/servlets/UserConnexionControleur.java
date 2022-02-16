package com.sdzee.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Film;
import bean.User;
import model.DataFactoryConnect;
import model.FilmModel;
import model.UserModel;

public class UserConnexionControleur extends HttpServlet {

	private static final long serialVersionUID = 1L;

	UserModel userModel;
	FilmModel filmModel;

	@Override
	public void init() throws ServletException {
		
		DataFactoryConnect data = DataFactoryConnect.getInstance();
		userModel = new UserModel(data);
		filmModel = new FilmModel(data);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get user");
		this.getServletContext().getRequestDispatcher("/WEB-INF/signUp.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		User utilisateur = new User();
		utilisateur.setEmail(request.getParameter("email"));
		utilisateur.setPassword(request.getParameter("password"));

		User user = userModel.checkUserConnexion(utilisateur);

		if (user!=null) {
			List<Film> listFilms = filmModel.lister();
			request.setAttribute("listFilms", listFilms);
			request.getSession().setAttribute("loggedInUser", utilisateur.getEmail());
			request.getSession().setAttribute("IdUser", user.getIdUser());
			System.out.println("Utilisateur connecter");
			this.getServletContext().getRequestDispatcher("/WEB-INF/acceuil.jsp").forward(request, response);
		}else
		{
			request.getSession().setAttribute("ErrorConnexion", "L'émail ou le mot de passe est incorrect ");
			System.out.println("Utilisateur non connecter");
			request.getSession().setAttribute("loggedInUser", null);
			this.getServletContext().getRequestDispatcher("/WEB-INF/signUp.jsp").forward(request, response);
		}

	}

}