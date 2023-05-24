package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.FilmDAO;
import model.Film;

/**
 * Servlet implementation class deleteFilm
 */
@WebServlet("/deleteFilm")
public class deleteFilm extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		FilmDAO filmDao = FilmDAO.getFilmDao();
		
		//creates a Film object with the id parameter received from the request
		//to delete a film only id parameter is required, the rest of the details are null
		Film film = new Film(
				Integer.valueOf(request.getParameter("id")), 
				"null", 
				0, 
				"null", 
				"null", 
				"null" 
		);
		
		try {
			//calls film dao function to delete a film
			filmDao.deleteFilm(film);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//once the film is deleted an alert confirms the completion of the operation
		//before refreshing the main web page
		PrintWriter out = response.getWriter(); 
		out.println("<script>");
        out.println("alert('Film Deleted');");
        out.println("window.location.replace('./FilmController');");
        out.println("</script>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
