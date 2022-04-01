<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="/css/submit.css">	
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
			rel="stylesheet" >

		<meta charset="ISO-8859-1">
		<meta name="description" content="Cryptodea"/>
		<meta name="google" content="nositelinkssearchbox"/>
		<meta name="keywords" content="Create And Delete Any Cryptocurrency Idea"/>
		<meta name="author" content="Cryptodea Team"/>
		<meta name="viewport" id="viewport" content="width=device-width,user-scalable=yes,initial-scale=1" />
				
		<meta property="og:image" content="/icons&images/Banner.png">
		<meta property="og:image:type" content="image/png">
		<meta property="og:image:width" content="1024">
		<meta property="og:image:height" content="1024">
		
		<link rel="icon" type="image/png" href="/icons&images/Icon.png" sizes="156x156">
	
	<title>Create Idea</title>
</head>
	<body>
		<div id="wrapper" class="text-dark">
		    <h4><a id="logo" href="/">CRYPTODEA</a></h4>
            <p>CREATE A CRYPTOCURRENCY IDEA</p>
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
						<form:input id="input" class="form-control" path="description"></form:input>
					</div>											
					<br>
				    <input id="create" type="submit" value="Create"/>
				</form:form>
	        </div>
		</div>
	</body>
</html>