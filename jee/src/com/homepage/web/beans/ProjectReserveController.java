package com.homepage.web.beans;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reservation/input")
public class ProjectReserveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] date = {request.getParameter("ID"), request.getParameter("Password")
						, request.getParameter("Birth"), request.getParameter("Movie")
						, request.getParameter("Theater"), request.getParameter("Date")
						, request.getParameter("Time"),request.getParameter("Seat")
						, request.getParameter("Age")};
		request.setAttribute("ID",date[0]);
		request.setAttribute("Password",date[1]);
		request.setAttribute("Birth",date[1]);
		request.setAttribute("Movie",date[1]);
		request.setAttribute("Theater",date[1]);
		request.setAttribute("Date",date[1]);
		request.setAttribute("Time",date[1]);
		request.setAttribute("Seat",date[1]);
		request.setAttribute("Age",date[1]);
		//스트링배열로 받아와서 request.setAttribute("Time",date[1]); 나열해주면돼~~~~ 
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/reservation/nextPage.jsp");
		dispatcher.forward(request, response);
	}


}
