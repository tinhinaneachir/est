<%@page import="bean.Film"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.io.*"%>


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
<link rel="stylesheet" href="css/SignUpIn.css" />


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
			<a class="navbar-brand" href="#">InfoCiné </a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarScroll"
				aria-controls="navbarScroll" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarScroll">
				<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
					style="-bs-scroll-height: 100px;">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="SignIn">SIgnIn</a></li>
					<li class="nav-item"><a class="nav-link" href="SignUp">SignUp</a></li>

				</ul>

			</div>
		</div>
	</nav>
	


	<div class="container-fluid" id="SignUpIN">

			<div id='transp'>
			
				<form action="SignIn" method="post">
				
						<div class="container">
						
						   <%
							session = request.getSession();
							if (session.getAttribute("ErrorInscription") != null) {
							%>
							<h5 class="text-danger">
								<%=session.getAttribute("ErrorInscription")%>
							</h5>
							<%
							}else{%>								
								<%=session.getAttribute("SuccesInscription")%>
							<%}
							%>
						
							<div class="row">
								<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<h4 class="text-light">
										<label for="nom">Nom</label> <input style="width: 80%;"
											type="text" name="nom" class="form-control" id="prenom"
											placeholder="votre prénom" required>
									</h4>
								</div>
								<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<h4 class="text-light">
										<label for="prenom">Prénom</label> 
										<input style="width: 80%;"
											type="text" name="prenom" class="form-control" id="nom"
											placeholder="votre nom" required >
									</h4>
								</div>


								<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<h4 class="text-light">
										<label for="email">Email</label> <input style="width: 80%;"
											type="email" name="email" class="form-control" id="email"
											placeholder="name@example.com">
									</h4>
								</div>
								<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<h4 class="text-light">
										<label for="password">Password</label>
									</h4>
									<input style="width: 80%;" type="password" name="password"
										class="form-control" id="password"
										placeholder="votre mot de passe" required>
								</div>
								<div id="divcenter">
									<div class="  col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
										<button style="width: 100%;" type="submit"
											class="btn btn-outline-light">enregistrer</button>
									</div>
								</div>
					
				</form>
			</div>
		</div>


</body>
</html>

