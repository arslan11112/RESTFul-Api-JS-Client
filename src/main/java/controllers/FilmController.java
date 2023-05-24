package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.FilmDAO;
import model.Film;

@WebServlet("/FilmController")
public class FilmController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		FilmDAO filmDao = FilmDAO.getFilmDao();
		String searchStr = request.getParameter("insertFilm");
		
		//sends the result to the index page to be displayed
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		
		//checks if there is any parameter for a parameterised search
		if(searchStr != "" && searchStr != null) {
			String searchType = request.getParameter("searchType");
			
			//calls database function to retrieve films based on the parameters
			ArrayList<Film> searchedFilms = filmDao.searchFilms(searchStr, searchType);
			request.setAttribute("films", searchedFilms);
			
			rd.include(request, response);
		}
		//if not true, then all films are retrieved from that database
		else {
		ArrayList<Film> allFilms = filmDao.getAllFilms();
		request.setAttribute("films", allFilms);
		
		rd.include(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
