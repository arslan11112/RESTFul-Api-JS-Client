<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Film Database</title>
<link rel="stylesheet"
      href="./css/custom.css"
      type="text/css"/>
</head>
<body>
		<!--  Header Table -->
		<table id="headerT">
			<thead>
				<tr>
					<td colspan="3"> FILM DATABASE
					</td>
				</tr>
			</thead>
			<tr>
				<th>
					<form method="POST" action="./FilmController">
						<input type="submit" value="All Films">
					</form>
				</th>
				<th>
					<form method="POST" action="insertFilm.jsp">
						<input type="submit" value="Insert Film" name="insertFilm">
					</form>
				</th>
				<th> 
					<!--  Form wiht POST method to send parameters to the server-->
					<form method="POST" action="./FilmController">
						 <select id="searchType" name="searchType">
						     <option value="id">ID</option>
						     <option value="title">Title</option>
						     <option value="year">Year</option>
						     <option value="director">Director</option>
						     <option value="stars">Stars</option>
						     <option value="generalSearch">General Search</option>
					    </select>
						<input type="text" placeholder="Search here" name="insertFilm">
						<input type="submit" value="Search" name="insertFilm">
					</form>
				</th>
			</tr>
		</table>
		
		
		<!--  Main Table containing all the films-->
		<table>
			<thead>
				<tr>
					<td>ID</td>
					<td>Title</td>
					<td>Year</td>
					<td>Director</td>
					<td>Stars</td>
					<td>Review</td>
					<td>Update</td>
					<td>Delete</td>
				</tr>
			</thead>
			
			<!--  JSTL forEach loop to retrieve all film details-->
			<c:forEach items="${films}" var="f">
				<tr>
					<th> <b> ${f.id}</b></th>
					<th> <b> ${f.title}</b></th>
					<th> <em>${f.year}</em></th>
					<th> <b> ${f.director}</b></th>
					<th> <b> ${f.stars}</b></th>
					<th> <em>${f.review}</em></th>
					
					<!--  from with POST method to send data to update film page-->
					<th> 
						<form method="POST" action="updateFilm.jsp">
							<input type="hidden" value="${f.id}" name="id">
							<input type="hidden" value="${f.title}" name="title">
							<input type="hidden" value="${f.year}" name="year">
							<input type="hidden" value="${f.director}" name="director">
							<input type="hidden" value="${f.stars}" name="stars">
							<input type="hidden" value="${f.review}" name="review">
							<input type="submit" value="Update" name="update">
						</form>
					</th>
					
					<!-- Form with POST method to send id to delete film page -->
					<th> 
						<form method="POST" action="./deleteFilm">
							<input type="hidden" value="${f.id}" name="id">
							<input type="submit" value="Delete" name="delete">
						</form>
					</th>
				</tr>
			</c:forEach>
		</table>
		
</body>
</html>