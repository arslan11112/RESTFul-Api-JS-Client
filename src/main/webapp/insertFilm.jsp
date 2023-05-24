<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		<h1> Insert New Film</h1>
		<table>
			<thead>
				<tr>
					<td>Title</td>
					<td>Year</td>
					<td>Director</td>
					<td>Stars</td>
					<td>Review</td>
					<td>Confirm </td>
				</tr>
			</thead>
				<tr>
					<!--  Form with POST request to send data to the insert servlet -->
					<form action="./insertFilm" method="POST">
						<th><input type="text" name="title"> </th>
						<th> <input type="number" name="year"></th>
						<th> <input type="text" name="director"></th>
						<th> <input type="text" name="stars"></th>
						<th> <input type="text" name="review"></th>
						<th> <input type="submit" value="Insert" name="insertFilm"> </th>
					</form>
				</tr>
			
		</table>


</body>
</html>