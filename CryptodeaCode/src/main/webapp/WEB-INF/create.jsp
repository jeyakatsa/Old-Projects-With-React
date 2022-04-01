<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="/css/create.css">	
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
			rel="stylesheet" >

		<meta charset="UTF-8">
		
<!-- Below information for social media sharing and search-engine/browser optimization -->		
		<meta name="title" content="Cryptodea">
		<meta name="description" content="Create and delete any cryptocurrency idea.">
		<meta name="google" content="nositelinkssearchbox">
		<meta name="keywords" content="Create Cryptocurrency, Cryptocurrency, Currency, Cryptocyrrency Idea.">
		<meta name="author" content="Cryptodea Team">
		<meta name="viewport" id="viewport" content="width=device-width,user-scalable=yes,initial-scale=1" >
		
		<link rel="icon" type="image/x-icon" href="/icons&images/Icon.ico" sizes="156x156">
		<link rel="canonical" href="https://cryptodea.com">
		
		<meta property="og:image" content="https://user-images.githubusercontent.com/51394348/100407550-8ba58f00-301d-11eb-9982-e7243ab2b60d.jpg">	
		<meta property="og:site_name" content="Cryptodea">	
		<meta property="og:type" content="object">				
		<meta property="og:title" content="Cryptodea">
		<meta propety="og:url" content="https://cryptodea.com">
		<meta property="og:description" content="Create and delete any cryptocurrency idea.">
		<meta property="og:image:type" content="image/jpg">
		<meta property="og:image:width" content="700">
		<meta property="og:image:height" content="400">
		
		<meta name="twitter:title" content="Cryptodea: Create and delete any cryptocurrency idea.">
		<meta name="twitter:image" content="https://user-images.githubusercontent.com/51394348/100407550-8ba58f00-301d-11eb-9982-e7243ab2b60d.jpg">
		<meta name="twitter:url" content="https://cryptodea.com">
		<meta name="twitter:card" content="summary">
		<meta name="twitter:description" content="Create and delete any cryptocurrency idea.">
		<meta name="description" content="Create and delete any cryptocurrency idea.">
<!-- Above information for social media sharing and search-engine/browser optimization -->		
	
	<title>Create Idea</title>
</head>
	<body>
		<div id="wrapper" class="text-dark">
		    <h4><a id="logo" href="/">CRYPTODEA</a></h4>
            <p id="heading">CREATE A CRYPTOCURRENCY IDEA</p>
	        <div id="container">
	        	<form:form  action="/create" method="post" modelAttribute="idea">
					<div class="form-group" id="enter-content">
						<form:label id="label" path="currency">Currency</form:label>
						<form:errors id="errors" path="currency"></form:errors>
						<form:input id="input" class="form-control" path="currency"></form:input>
					</div>
					<div class="form-group" id="enter-content">
						<form:label id="label" path="acronym">Acronym</form:label>					
						<form:errors id="errors" path="acronym"></form:errors>
						<form:input id="input" class="form-control" path="acronym"></form:input>
					</div>
					<div class="form-group" id="enter-content">
						<form:label id="label" path="creator">Creator</form:label>						
						<form:errors id="errors" path="creator"></form:errors>
						<form:input id="input" class="form-control" path="creator"></form:input>
					</div>
					<div class="form-group" id="enter-content">
						<form:label id="label" path="description">Description</form:label>						
						<form:errors id="errors" path="description"></form:errors>
						<form:input id="inputdescription" class="form-control" path="description"></form:input>
					</div>											
					<br>
				    <input id="create" type="submit" value="Create"/>
				</form:form>
	        </div>
		</div>
	</body>
</html>