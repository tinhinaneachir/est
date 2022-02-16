<%@page import="bean.Film"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.io.*"%>
<%
session = request.getSession();
if (session == null || session.getAttribute("loggedInUser") == null) {%>
     <jsp:forward page="signUp.jsp" />;
<%	   
} 
%>
<!DOCTYPE html>
<html>
	<head>
		<title>InfoCiné</title>       
	    <meta name="viewport"  content="width=device-width,initial-scale=1">
	    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
	    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	    <link href="http://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext" rel="stylesheet" type="text/css">   
	    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"/>
		<link rel="stylesheet" href="css/acceuil.css">
	    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
	
	
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="js/stars.js " defer></script>
		<script src="js/carrousel.js"></script>
		<script language="javascript" type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script language="javascript" type="text/javascript" src="js/abi_message.js"></script>
				  <style> 
            #leftbox {
                float:left; 
                width:40%;
            }
            #rightbox{
                float:right;
                width:60%;
            }
        </style>
	</head>

	<body >

		<nav class="navbar navbar-expand-lg navbar-dark bg-black">
			<div class="container-fluid">
				<a class="navbar-brand" href="listFilms">VS </a>
				<div class="collapse navbar-collapse" id="navbarScroll">
					<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
						style="-bs-scroll-height: 100px;">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="SignIn">Accueil</a></li>
						<li class="nav-item"><a class="nav-link" href="deconnexion">Déconnexion</a></li>
					</ul>
	
				</div>
			</div>

				<div class="container-fluid" >
						<div class="row">
							<form action="acceuil.php " method="POST">
								<div class="input-group">
									<input name="search" type="text" id="search"
										class="form-control rounded w-75"
										placeholder="rechercher un film" aria-label="Search"
										aria-describedby="search-addon" />
									<button type="submit" class="btn btn-dark">search</button>
									<button type="button" class="btn btn-info" >preferences</button>
								</div>
							</form>
						</div>
						
					</div>
	
	
		</nav>
		
	  	<!--  button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
	           Open modal
	     </button-->
	      
	      

      <!-- The Modal -->
      
		<div class="modal hide" id ="myModal" aria-hidden="true">
			<div class="modal-dialog">
			   <div class="modal-content">
			      <div class="modal-header">
			         <h4 class="modal-title">Disclaimer</h4>
			      </div>
			      <div class="modal-body">
			         Blockchaine en cours de développement
			      </div>
			      <div class="modal-footer">
			         <button type="button" class="btn btn-info" data-dismiss="modal">Oui</button>
			         <button type="button" class="btn btn-danger" data-dismiss="modal">Non</button>
			      </div>
			   </div>
			</div>
		</div>
		


		<section id='section1'>
			<div id='transp' class='tr'>
			
				<div class="item__title" style="float:none;clear:both; padding-top: 60px; padding-left:60px; margin-bottom: -80px;">
					<h2 class="text-light"> videos à la une </h2>
				</div>

				<div id="carousel1" class='car'>

					<c:forEach var="film" items="${ listFilms }">
						<div class="item">
							<div class="container item__image">
								<button href="affiche" onclick="voirFilm('${film.getIdFilm()}')">
	
									<img src=<c:out value="${ film.getImage() }" /> alt="">
								</button>
							</div>
							<div class="item__body" >
								<div class="item__title">
									<h5 class="text-light" style="">
										<c:out value="${ film.getTitre() }" />
									</h5>
	
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				
				<div class="item__title" style="float:none;clear:both; padding-left:60px; margin-bottom: -80px;">
					<h2 class="text-light"> mes videos visionnées </h2>
				</div>
				
				<div id="carousel2" class='car'>

					<c:forEach var="film" items="${ listFilms }">
						<div class="item">
							<div class="container item__image">
								<button href="affiche" onclick="voirFilm('${film.getIdFilm()}')">
	
									<img src=<c:out value="${ film.getImage() }" /> alt="">
								</button>
							</div>
							<div class="item__body">
								<div class="item__title">
									<h5 class="text-light">
										<c:out value="${ film.getTitre() }" />
									</h5>
									<button type="button" class="btn btn-info" data-dismiss="modal">Noter</button>	
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				
				<div class="item__title" style="float:none;clear:both;  padding-left:60px; margin-bottom: -80px;">
					<h2 class="text-light"> mes videos favorites </h2>
				</div>
				
				<div id="carousel3" class='car'>

					<c:forEach var="film" items="${ listFilms }">
						<div class="item">
													<div class="item__body">
							<div class="container item__image">
								<button href="affiche" onclick="voirFilm('${film.getIdFilm()}')">
	
									<img src=<c:out value="${ film.getImage() }" /> alt="">
								</button>
							</div>

								<div class="item__title">
									<h5 class="text-light">
										<c:out value="${ film.getTitre() }" />
									</h5>
									<button type="button" class="btn btn-info" data-dismiss="modal">Supprimer</button>	
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
	
	
		 <script type="text/javascript">
		 /*
		 window.addEventListener('load', function() {
			  // Vérifier si web3 a bien été injecté (Mist/MetaMask)
			 var web3 = new Web3(new Web3.providers.WebsocketProvider("wss://mainnet.infura.io/ws/v3/9aa3d95b3bc440fa88ea12eaa4456161"));
			  if (typeof web3 !== 'undefined') {
			    // Si oui, on peut utiliser l'injection
				  web3js = new Web3(web3.currentProvider);
				 // alert('oui');
			  } else {
				  alert('non');
			    // si non, on peut ajouter ici un code qui invite à télécharger l'extension
			  }
			  // on peut démarrer l'utilisation de l'application
			  //startApp()
			})
			     
			function lireSurLeBlockchain(){
			
			//Tout d’abord, établir la connexion en récupérant la 
			//session web3 de Metamask avec cette ligne
			 var web3 = new Web3(new Web3.providers.WebsocketProvider("wss://mainnet.infura.io/ws/v3/9aa3d95b3bc440fa88ea12eaa4456161"));
			 web3js = new Web3(web3.currentProvider);
			 console.log(web3);
			 
			 //console.log(messageABI);	
			 var privKey='9a8a3801b5bfe3382dee642cd26b0152dfbc193c0f78df7a94857555f1d3ed19';
			 var addressFrom = '0x5d51A30C118ABD7f277f52Ae570158c8f6B3aA3b';
			 var addressTo = '0x52afe3d3d38df16662729127950dee63f702f281';
			 var contract = new web3.eth.Contract(messageABI,addressFrom);		 
			 console.log(contract);		 
			 web3.eth.accounts.wallet.add(privKey);
			 var balance=web3.eth.getBalance(addressFrom);
			 console.log(balance);
			 web3.eth.sendTransaction({from: addressFrom,addressTo, value: 300000});
			
		    }
			 */
		 
		 
		    $(document).ready(function(){
				 
			});
		
		    
		   function voirFilm(arg) {
	     	    	 window.location.replace("afficheFilm?idfilm="+arg);
	        }
		     
		     I1 = 0 ;
		     items1 = $("#carousel1 .item");
		     Imax1 = items1.length-1 ;
		     setTimeout(suivanteCarousel1, 3000) ;
		     function suivanteCarousel1() {
			     if ( I1 < Imax1-2 ){
			    	 items1[I1].style.display = "none" ;
			          I1++;
			     }
			     else {
			          I1=0; 
			     }
			     items1[I1].style.display = "block";
			     setTimeout(suivanteCarousel1, 3000) ;
		     }
		     
		     I2 = 0 ;
		     items2 = $("#carousel2 .item");
		     Imax2 = items2.length-1 ;
		     setTimeout(suivanteCarousel2, 3000) ;
		     function suivanteCarousel2() {
			     if ( I2 < Imax2-2 ){
			    	 items2[I2].style.display = "none" ;
			          I2++;
			     }
			     else {
			          I2=0; 
			     }
			     items2[I2].style.display = "block";
			     setTimeout(suivanteCarousel2, 3000) ;
		     }
		     
		     I3 = 0 ;
		     items3 = $("#carousel3 .item");
		     Imax3 = items3.length-1 ;
		     setTimeout(suivanteCarousel3, 3000) ;
		     function suivanteCarousel3() {
			     if ( I3 < Imax3-2 ){
			    	 items3[I3].style.display = "none" ;
			          I3++;
			     }
			     else {
			          I3=0; 
			     }
			     items3[I3].style.display = "block";
			     setTimeout(suivanteCarousel3, 3000) ;
		     }
		     
		</script>     


	</body>
</html>


