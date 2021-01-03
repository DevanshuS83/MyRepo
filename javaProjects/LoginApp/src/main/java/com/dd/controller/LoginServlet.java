package com.dd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dd.dao.EmployeeDAO;
import com.dd.model.Employee;


/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		EmployeeDAO dao = new EmployeeDAO();
		Employee emp = dao.getEmployee(Integer.parseInt(request.getParameter("eid")));
		if(emp!=null && request.getParameter("pwd").equals("password"))
		{
			HttpSession session = request.getSession();
			session.setAttribute("user", emp);
			response.sendRedirect("home.jsp");
		}
		else
		{
			request.setAttribute("message", "failed. Details are not valid!");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}

}
