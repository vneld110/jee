package com.homepage.web.beans;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reservation/input.do")
public class ProjectReservationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] input = {request.getParameter("movie"),request.getParameter("theater")
				,request.getParameter("date"),request.getParameter("time")};
			
		request.setAttribute("movie",input[0]);
		request.setAttribute("theater",input[1]);
		request.setAttribute("date",input[2]);
		request.setAttribute("time",input[3]);
		
		//스트링배열로 받아와서 request.setAttribute("Time",date[1]); 나열해주면돼~~~~ 
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/reservation/nextPage.jsp");
		dispatcher.forward(request, response);
	}


}