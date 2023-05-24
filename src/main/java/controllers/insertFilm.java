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
 * Servlet implementation class insertFilm
 */
@WebServlet("/insertFilm")
public class insertFilm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		FilmDAO filmDao = FilmDAO.getFilmDao();
		
		//creates a Film object with the parameters received from the request
		Film film = new Film(
				String.valueOf(request.getParameter("title")), 
				Integer.valueOf(request.getParameter("year")), 
				String.valueOf(request.getParameter("director")), 
				String.valueOf(request.getParameter("stars")), 
				String.valueOf(request.getParameter("review"))
		);
		
		try {
			//calls film dao function to insert the new film
			filmDao.insertFilm(film);	      
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//once the film is inserted an alert confirms the completion of the operation
		//before refreshing the main web page
		PrintWriter out = response.getWriter(); 
		out.println("<script>");
        out.println("alert('Film Inserted');");
        out.println("window.location.replace('./FilmController');");
        out.println("</script>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
