<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Location VTC</title>
<link href="CSS/Conducteur.css" rel="stylesheet" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
 	crossorigin="anonymous">
</head>
		<!--Liens du Menu  -->
 		<c:url value ="/conducteur" var="conducteur"/>
	    <c:url value ="/vehicule" var="vehicule"/>
	    <c:url value ="/association" var="association"/>
		<!-- fin Liens du Menu  -->
		
<body class= "container">
	<nav class="navbar navbar-expand-lg navbar-light bg-secondary">
  		<div class="container-fluid">
			  <a class="navbar-brand" style="width: 50px" href="${conducteur}"><img class= "mw-100" alt="logo" src="img/logo.png"></a>		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarSupportedContent" >
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" style= color:white;  href="${conducteur}">Conducteur</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" style= color:white; href="${vehicule}">Véhicule</a>
		        </li>
		         <li class="nav-item">
		          <a class="nav-link" style= color:white; href="${association}">Association</a>
		        </li>
		      </ul>
		   
		    </div>
		  </div>
	</nav>