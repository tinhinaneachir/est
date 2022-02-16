<%@page import="bean.Realisateur"%>
<%@page import="bean.Acteur"%>
<%@page import="bean.Film"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.io.*"%>

<%
session = request.getSession();
boolean userConnect=false;
if (session == null || session.getAttribute("loggedInUser") == null) {%>
     <jsp:forward page="signUp.jsp" />;
<%	   
} else{
	 userConnect=true;
}
%>

<%
Film film = (Film) request.getAttribute("film");
Realisateur realisateur = (Realisateur) request.getAttribute("realisateur");
%>

<html>

<head>
<title>Détail film</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link
	href="http://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />

<link rel="stylesheet" href="css/main.css" />

<link rel="stylesheet" href="css/film.css" />

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="js/stars.js " defer></script>
<script src="js/carrousel.js"></script>

</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-black">
		<div class="container-fluid">
			<a class="navbar-brand" href="listFilms">InfoCiné </a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarScroll"
				aria-controls="navbarScroll" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarScroll">
				<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
					style="-bs-scroll-height: 100px;">
					<%
                    if (userConnect) {%>
					<li class="nav-item"><a class="nav-link" href="deconnexion">Déconnexion</a></li>
					<%} else{ %>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="SignIn">SIgnIn</a></li>
					<li class="nav-item"><a class="nav-link" href="SignUp">SignUp</a></li>
					<%} %>
				</ul>
			</div>
		</div>
	</nav>

	<section class="section1">
		<div class=" transp">
			<section>
				<div class="container">
					<div class="row">
						<div class=" imgetoile col-xl-4 col-lg-5  col-md-6  col-sm-12 ">
							<div class="img ">
								<video controls width="350">										
									<source src=<%=film.getLienFilm()%> type="video/mp4">										
								</video>
								

							</div>
							<div>
								<div classe="etoile checked ">
									<span class="fas fa-star" data-star="1"></span> <span
										class="fa fa-star" data-star="2"></span> <span
										class="fas fa-star" data-star="3"></span> <span
										class="fas fa-star" data-star="4"></span> <span
										class="fas fa-star" data-star="5"></span> &nbsp; <span
										style="color: rgb(163, 163, 163);">rating: <span
										class="rating ">-</span><span>
								</div>
								
								<br><br>
								
								
							</div>
						</div>
						<div class="info col-xl-7 col-lg-7  col-md-6 col-sm-12 ">
							<div>
								<span class="text"> Titre : </span><span class="grey"><%=film.getTitre()%></span>
							</div>
							<div>
								<span class="text"> Année :</span> <span class="grey"><%=film.getAnneecreation()%></span>
							</div>
							<div>
								<span class="text"> Durée :</span> <span class="grey"><%=film.getDuree()%></span>
							</div>

							<!-- <HR color="darkgrey" width="100%"   >  -->
							<div>
								<span class="text"> Catégorie :</span> <span class="grey"><%=film.getCategorie()%></span>
							</div>
							<div>
								<span class="text"> Note Finale :</span> </span><span class="grey "><%=film.getNoteFinal()%></span>
							</div>

							<div>
								<span class="text"> Description :</span> <span class="grey"><br><%=film.getDescription()%></span>
							</div>

							<div>
								<span class="text">Réalisateurs :</span> <span class="grey">
									<div class="container-fluid">
										<div class="row">
											<div classe="col-lg-12">
												<%--                                                   <img class="image" src="<?php echo $realisateur->Photo?>"> --%>
											</div>
											<div class="col-lg-12 padding">
												<div>
													<span class="petittext"><%=realisateur.getNom_prenom()%></span>
												</div>
												<div>
													<span class="petittext"><%=realisateur.getNationalite()%>
													</span>
												</div>
											</div>
										</div>
									</div>

									<div>
										<span class="text"> Acteurs : </span>
									</div>

									<div class="container-fluid">
										<div class=row>
											<c:forEach var="acteur" items="${ listActeurs }">
												<div style="margin-right: 10px;">
													<img src=<c:out value="${ acteur.getPhoto() }" /> alt="">
													<div>
														<span class="petittext"><c:out
																value="${ acteur.getNom_Prenom() }" /></span>
													</div>
													<div>
														<span class="petittext"><c:out
																value="${ acteur.getNationalite() }" /> </span>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
							</div>
						</div>
					</div>
				</div>
				
			</section>
		</div>
	</section>
</body>
</html>

