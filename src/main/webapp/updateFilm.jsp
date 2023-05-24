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
		<h1> Update Film</h1>
		<table>
			<thead>
				<tr>
					<td>ID</td>
					<td>Title</td>
					<td>Year</td>
					<td>Director</td>
					<td>Stars</td>
					<td>Review</td>
					<td>Confirm</td>
				</tr>
			</thead>
				<tr>
				<!--  Form with POST request to send data to the update servlet -->
					<form action="./updateFilm" method="POST">
						<th><input readonly type="number" name="id" class="idReadonly" value="${param.id}"> </th>
						<th><input required type="text" name="title" value="${param.title}"> </th>
						<th> <input required type="number" name="year" value="${param.year}"></th>
						<th> <input required type="text" name="director" value="${param.director}"></th>
						<th> <input required type="text" name="stars" value="${param.stars}"></th>
						<th> <input requytype="text" name="review" value="${param.review}" ></th>
						<th> <input type="submit" value="Update" name="insertFilm"> </th>
					</form>
				</tr>
			
		</table>


</body>
</html>