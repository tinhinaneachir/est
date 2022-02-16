package com.sdzee.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserDeconnexionControleur extends HttpServlet {

	private static final long serialVersionUID = 1L;


	@Override
	public void init() throws ServletException {


	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("deconnexion");
		request.getSession().removeAttribute("loggedInUser");
		request.getSession().removeAttribute("ErrorConnexion");
		request.getSession().removeAttribute("ErrorInscription");
        request.getSession().removeAttribute("SuccesInscription");
		this.getServletContext().getRequestDispatcher("/WEB-INF/signUp.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}