<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	
		<link rel="stylesheet" type="text/css" href="/css/index.css">	
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
			rel="stylesheet" >			
		<meta charset="UTF-8">
		
<!-- Below information for social media sharing and search-engine/browser optimization -->		
		<meta name="title" content="Bitruism">
		<meta name="description" content="Donate Bitcoin to Charities">
		<meta name="google" content="nositelinkssearchbox">
		<meta name="keywords" content="Donate Bitcoin, Donate, Bitcoin, Donate Crypto, Donate Cryptocurrency">
		<meta name="author" content="Jeremy Akatsa">
		<meta name="viewport" id="viewport" content="width=device-width,user-scalable=yes,initial-scale=1" >
		
		<link rel="icon" type="image/x-icon" href="/icons&images/Icon.ico" sizes="156x156">
		<link rel="canonical" href="https://bitruism.com">
		
		<meta property="og:image" content="https://user-images.githubusercontent.com/51394348/100551628-bae31880-3236-11eb-8c53-b9249ab0248b.jpg">	
		<meta property="og:site_name" content="Bitruism">	
		<meta property="og:type" content="object">				
		<meta property="og:title" content="Bitruism">
		<meta propety="og:url" content="https://bitruism.com">
		<meta property="og:description" content="Donate Bitcoin to Charities">
		<meta property="og:image:type" content="image/jpg">
		<meta property="og:image:width" content="700">
		<meta property="og:image:height" content="400">
		
		<meta name="twitter:title" content="Bitruism: Donate Bitcoin to Charities">
		<meta name="twitter:image" content="https://user-images.githubusercontent.com/51394348/100551628-bae31880-3236-11eb-8c53-b9249ab0248b.jpg">
		<meta name="twitter:url" content="https://bitruism.com">
		<meta name="twitter:card" content="summary">
		<meta name="twitter:description" content="Donate Bitcoin to Charities">
		<meta name="description" content="Donate Bitcoin to Charities">
<!-- Above information for social media sharing and search-engine/browser optimization -->	

	<title>Bitruism</title>
</head>
	<body>
			<div id="wrapper" class="text-dark">
            <h2 id="logo">bitruism</h2>
            <br>
			<form action="/charities">
				<input id="submit" type="submit" value="Donate Bitcoin"/>
			</form>
			<br>
			<form action="/submit">
				<input id="submit" type="submit" value="Submit Charity"/>
			</form>
			<br>
			<a id="about" href="/about">About</a>
		</div>
	</body>
</html>