package com.sdzee.servlets;

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

import java.io.IOException;



public class UserControleur extends HttpServlet {

	
	private static final long serialVersionUID = 1L;
	
	UserModel userModel;
	@Override
	public void init() throws ServletException {
		
		DataFactoryConnect data=DataFactoryConnect.getInstance();
		userModel=new UserModel(data);
		
	}
	
	public void doGet( HttpServletRequest request, HttpServletResponse
			response ) throws ServletException, IOException {
		
			this.getServletContext().getRequestDispatcher( "/WEB-INF/SignIn.jsp").forward( request, response );
	}
	
	
	
	 public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
	        User utilisateur = new User();
	        
	        System.out.println("save utilisateur");
	        
	        utilisateur.setNom(request.getParameter("nom"));
	        utilisateur.setPrenom(request.getParameter("prenom"));
	        utilisateur.setEmail(request.getParameter("email"));
	        utilisateur.setPassword(request.getParameter("password"));
	        
	        System.out.println(utilisateur.getNom());
	        System.out.println(utilisateur.getPrenom());
	        System.out.println(utilisateur.getPassword());
	        System.out.println(utilisateur.getEmail());
	        
	        if(userModel.findUserByEmail(utilisateur.getEmail())) {
	          request.getSession().setAttribute("ErrorInscription", "L'adresse e-mail existe déjà");
    
          }
	        else {
	          userModel.ajouter(utilisateur);
	          request.getSession().setAttribute("SuccesInscription", "Votre compte a été créé avec succès ");
	        }
	        
	        System.out.println("End save utilisateur");
	        
	        this.getServletContext().getRequestDispatcher("/WEB-INF/SignIn.jsp").forward(request, response);
	    }
	

	
	

}