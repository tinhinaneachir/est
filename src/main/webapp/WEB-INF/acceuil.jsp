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

        <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
		<link rel="stylesheet" href="css/TEST.css">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="js/stars.js " defer></script>
<script src="js/carrousel.js"></script>
<script language="javascript" type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="js/node_modules/web3/dist/web3.min.js"></script>
<script language="javascript" type="text/javascript" src="js/abi_message.js"></script>

</head>

<body >

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
  
<!--       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal"> -->
<!--            Open modal -->
<!--       </button> -->
      
  
      

      <!-- The Modal -->
      
      <div class="modal hide" id ="myModal" aria-hidden="true">
		   <div class="modal-dialog">
		      <div class="modal-content">
		         <div class="modal-header">
		            <h4 class="modal-title">Alerte</h4>
		         </div>
		         <div class="modal-body">
		            Acceptez-vous d'utiliser votre ordinateur comme noeud de réseau blockChain ??
		         </div>
		         <div class="modal-footer">
		            <button type="button" class="btn btn-info" data-dismiss="modal" onclick="lireSurLeBlockchain()">Accepter</button>
		            <button type="button" class="btn btn-danger" data-dismiss="modal">Refuser</button>
		         </div>
		      </div>
		   </div>
       </div>
       

	<section id='section1'>


		<div id='transp' class='tr'>
			<div class="col-lg-12 col-md-12 col-xs-12 ">
				<h2 class="text-light titre1">Bienvenue sur INFOCINé,</h2>
			</div>
			<div class="col-lg-12 col-md-12 col-xs-12">
				<h4 class="text-light titre2">Des millions de films, séries et
					artistes à découvrir...</h4>
			</div>
			<div class="container-fluid">
				<div class="row">
					<form action="rechercheFilmByLibelle" method="POST">
						<div class="input-group">
							<input name="search" type="text" id="search"
								class="form-control rounded w-75"
								placeholder="rechercher un film" aria-label="Search"
								aria-describedby="search-addon" />
							<button type="submit" class="btn btn-dark">search</button>
						</div>
					</form>
				</div>
			</div>
			<div id="carousel1" class='car'>
		
		
					<c:forEach var="film" items="${ listFilms }">
						<div class="item">
							<div class="container item__image">
								<button href="affiche"  onclick="voirFilm('${film.getIdFilm()}')">
								
								<img src=<c:out value="${ film.getImage() }" /> alt=""></button>
							</div>
							<div class="item__body">
								<div class="item__title">
									<h5 class="text-light">
										<c:out value="${ film.getTitre() }" />
									</h5>
		
									
		
								</div>
							</div>
						</div>
					</c:forEach>
		
		</div>
		</div>

		

	</section>
	
	
	 <script type="text/javascript">
	
		window.addEventListener('load', function() {
			  // Vérifier si web3 a bien été injecté (Mist/MetaMask)
			 var web3 = new Web3(new Web3.providers.HttpProvider('https://rinkeby.infura.io/v3/9aa3d95b3bc440fa88ea12eaa4456161'));
			  if (typeof web3 !== 'undefined') {
			    // Si oui, on peut utiliser l'injection
				  web3js = new Web3(web3.currentProvider);
				 // alert('oui');
			  } else {
				  alert("Merci de télécharger l'extension MetaMask");
			    // si non, on peut ajouter ici un code qui invite à télécharger l'extension
			  }
			  // on peut démarrer l'utilisation de l'application
			  //startApp()
		})
		 
		function lireSurLeBlockchain(){
		
		//Tout d’abord, établir la connexion en récupérant la 
		//session web3 de Metamask avec cette ligne

		// var web3 = new Web3(new Web3.providers.WebsocketProvider("wss://rinkeby.infura.io/v3/9aa3d95b3bc440fa88ea12eaa4456161"));
		 var web3 = new Web3(new Web3.providers.HttpProvider('https://rinkeby.infura.io/v3/9aa3d95b3bc440fa88ea12eaa4456161'));
		 web3js = new Web3(web3.currentProvider);
		 //-----------------------------------------------------------------------------
		 
		 var addressFrom = '0x8790ad6697aD89E354A2F81702efA9dCd4023556';
		 var privKey="89df94787e960f3fe68c0cf5889d62488476b53afb2f1038134119ab8634e10d";
		 
		 
		 var addressTo = '0x5d51A30C118ABD7f277f52Ae570158c8f6B3aA3b';
		 var privKey2='9a8a3801b5bfe3382dee642cd26b0152dfbc193c0f78df7a94857555f1d3ed19';
		
		 		 
		 var contract = new web3.eth.Contract(messageABI,addressTo);		 
		 console.log(contract);		 
		 web3.eth.accounts.wallet.add(privKey);
		 web3.eth.accounts.wallet.add(privKey2);

         console.log('Send transaction');	
		 
         web3.eth.sendTransaction(		 
		   {
	         from: addressFrom,
	         to: addressTo,
	         value: web3.utils.toWei(String(0,01), 'ether'),
	         data: web3.utils.toHex('EN7FQHHVG'),
	         gas: 25000
	      }
		 );
	
		 console.log('End transaction');	
	   }
		
	 
	 
	    $(document).ready(function(){
// 	    	if (window.confirm("")) {
// 	    	   // window.open("fenetre.html", "Nouvelle fenêtre", "");
// 	    	   alert('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
// 	    	}
		});
	
    
	    
	   function voirFilm(arg) {
		 	  
     	    	 window.location.replace("afficheFilm?idfilm="+arg);
        }
	     
	     I = 0 ;
	     x=document.querySelectorAll(".item");
	     Imax = document.querySelectorAll(".item").length-1 ;
	     setTimeout(suivante, 3000) ;
	     function suivante()
	     {
	     if ( I < Imax-2 )
	     {x[I].style.display = "none" ;
	          I++;}
	     else 
	          I=0;    
	     x[I].style.display = "block";
	     setTimeout(suivante, 3000) ;
	     }
	     
	</script>     


</body>
</html>


