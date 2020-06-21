package com.hanshin.database.web;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forward")
public class myforward extends HttpServlet{ 
	
	//(3) myforward 클래스 파일을 생성해서 실행했을 때, 사용자로부터 "쿼리문으로" num1과 num2를 입력받으면, 
	//		그 값들을 request에 실어서 myjspexample3.jsp로 "forward"시키도록 myforward 클래스를 수정하고,
	
	/*
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("myjspexample3.jsp");
		rd.forward(req, resp); 
	}
	*/
	
	//(2) myforward 클래스 파일을 수정해서 실행했을 때, myjspexample5.jsp로 "forward"시키도록 myforward 클래스를 수정하고,
	//    myforward 실행했을 때 사용자로부터 "	쿼리문으로" num1과 num2를 입력받으면, 그 값들을 request에 실어서 해당 정보를 myjspexample5.jsp가 수신하여
	//    num1과 num2를 더한 값이 계산기 결과창에 보여질 수 있도록 수정해보자
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("num1", req.getParameter("num1"));
		req.setAttribute("num2", req.getParameter("num2"));
		RequestDispatcher rd = req.getRequestDispatcher("myjspexample5.jsp");
		rd.forward(req, resp); 
	}

}
