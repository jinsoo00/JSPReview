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
	
	//(3) myforward Ŭ���� ������ �����ؼ� �������� ��, ����ڷκ��� "����������" num1�� num2�� �Է¹�����, 
	//		�� ������ request�� �Ǿ myjspexample3.jsp�� "forward"��Ű���� myforward Ŭ������ �����ϰ�,
	
	/*
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("myjspexample3.jsp");
		rd.forward(req, resp); 
	}
	*/
	
	//(2) myforward Ŭ���� ������ �����ؼ� �������� ��, myjspexample5.jsp�� "forward"��Ű���� myforward Ŭ������ �����ϰ�,
	//    myforward �������� �� ����ڷκ��� "	����������" num1�� num2�� �Է¹�����, �� ������ request�� �Ǿ �ش� ������ myjspexample5.jsp�� �����Ͽ�
	//    num1�� num2�� ���� ���� ���� ���â�� ������ �� �ֵ��� �����غ���
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("num1", req.getParameter("num1"));
		req.setAttribute("num2", req.getParameter("num2"));
		RequestDispatcher rd = req.getRequestDispatcher("myjspexample5.jsp");
		rd.forward(req, resp); 
	}

}
