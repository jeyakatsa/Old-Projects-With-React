<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/index.css">	
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
	<title>Cryptodea</title>
</head>
	<body>
		<div id="wrapper" class="text-dark">
			<h2 id="logo">CRYPTODEA</h2>
			<h4 id="heading">CREATE AND DELETE ANY CRYPTOCURRENCY IDEA</h4>
            <form action="/create">
				<input id="create" type="submit" value="Create"/>
            </form>
            <hr id="horizontal-line">
			<table id="table">
				<thead>
					<th>CURRENCY</th>
			        <th>ACRONYM</th>
			        <th>CREATOR</th>
				</thead>
				<tbody>
				<c:forEach items="${idea}" var="idea">
					<tr id="tr">
						<td>
							<a id="view" href="/${idea.id}">
							${idea.currency}</a>
						</td>
						<td>
							<a id="view" href="/${idea.id}">
							${idea.acronym}</a>
						</td>
						<td>
							<a id="view" href="/${idea.id}">
							${idea.creator}</a>
						</td>
						<td><a id="delete" href="/delete/${idea.id}">Delete</a></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
</html>