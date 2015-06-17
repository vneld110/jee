package com.homepage.web.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.serviceimpls.ReservationServiceImpl;
import com.homepage.web.services.ReservationService;

/**
 * @ Date : 2015.06.16
 * @ Author : ;
 * @ Story : 예약 요청을 jsp에서 받아 처리하는 컨트롤러
 */
@WebServlet({"/reservation/inputCheck.do"
		   	, "/reservation/checkIn.do"
		   	,"/reservation/checkOut.do"
		   	, "/reservation/showStatus.do"})
public class ReservationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ReservationService service = new ReservationServiceImpl();
    String[][] seat = new String[3][5];
   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int floor = Integer.parseInt(request.getParameter("floor"))-1;
		int row = Integer.parseInt(request.getParameter("row"))-1;
		String id = request.getParameter("id");
		String path = request.getServletPath();
		
		switch (path) {
		case "/reservation/checkIn.do":
			String msg = service.checkIn(floor, row, id); // checkIn.do 형태로 바꿈.
			seat[floor][row] = id;
			request.setAttribute("msg", msg);
			request.setAttribute("seat", seat);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/reservationForm.jsp");
			dispatcher.forward(request, response);
			break; // 체크인
		case "/reservation/checkOut.do":
			String msg2 = service.checkOut(floor, row, id);
			seat[floor][row] = null;
			request.setAttribute("msg", msg2);
			request.setAttribute("seat", seat);
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("/views/model2/reservationForm.jsp");
			dispatcher2.forward(request, response);
			break; // 체크아웃
		case "/reservation/showStatus.do":
			String[][] seat = service.showStatus();
			RequestDispatcher dispatcher3 = request.getRequestDispatcher("");
			dispatcher3.forward(request, response);
			break;
		default: service.showStatus(); 
		RequestDispatcher dispatcher4 = request.getRequestDispatcher("");
		dispatcher4.forward(request, response);
		break;
		}

	}
}
