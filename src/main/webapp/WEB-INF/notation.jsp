<%@page import="bean.Realisateur"%>
<%@page import="bean.Acteur"%>
<%@page import="bean.Film"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.io.*"%>

<%
session = request.getSession();
if (session == null || session.getAttribute("loggedInUser") == null) {
%>
<jsp:forward page="signUp.jsp" />;
<% } %>

<%
Film film = (Film) request.getAttribute("film");
Realisateur realisateur = (Realisateur) request.getAttribute("realisateur");



/*
<?php
session_start();
error_reporting(E_ALL ^ E_NOTICE);

require('connexionBdd.php');
 if(empty($_SESSION['user'])){
      header('Location:signUp.php');
      exit();
    }
   if(!empty($_POST)){
          $note= $_POST['text'];
          $user=$_SESSION['user'];
          $Film=$_SESSION['Film'];
          $req=$database->prepare('INSERT INTO notation (User,Note,Film) VALUES(:iduser,:note,:film)');
          $req->bindValue(':iduser',$user->IdUser,PDO::PARAM_INT);
          $req->bindValue(':note',$note,PDO::PARAM_STR);
          $req->bindValue(':film',$Film->IdFilm,PDO::PARAM_INT);
          $req->execute();
   }
  ?>
*/


%>





