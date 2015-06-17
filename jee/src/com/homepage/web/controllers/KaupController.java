package com.homepage.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.print.resources.serviceui;

import com.homepage.web.beans.KaupBean;
import com.homepage.web.serviceimpls.KaupServiceImpl;
import com.homepage.web.services.KaupService;

/**
 * @ Date : 2015.06.15
 * @ Author : ;
 * @ Story : 키와 몸무게가 입력되면 카우푸지수와 메시지를 웹 브라우저에 랜더링하는 역할;
 */

@WebServlet("/model2/kaup.do")
public class KaupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		KaupService service = new KaupServiceImpl();
		String heightParam = request.getParameter("height");
		String weightParam = request.getParameter("weight");
		double height = Double.parseDouble(heightParam);
		double weight = Double.parseDouble(weightParam);
		//KaupBean bean = new KaupBean(height, weight); >>DB
		
		int idx = service.getKaupIndex(height, weight);
		String msg = service.getResultMsg(idx);
		request.setAttribute("height", height);
		request.setAttribute("weight", weight);
		request.setAttribute("idx", idx);
		request.setAttribute("msg", msg);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/kaup.jsp");
		dispatcher.forward(request, response);
		
//		RequestDispatcher dispatcher2 = request.getRequestDispatcher("");
//		dispatcher2.forward(request, response);
	}

}
