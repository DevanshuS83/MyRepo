package com.dd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dd.dao.EmployeeDAO;
import com.dd.model.Employee;

/**
 * Servlet implementation class SearchServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		EmployeeDAO dao = new EmployeeDAO();
		Employee emp = dao.getEmployee(Integer.parseInt(request.getParameter("eid")));
		RequestDispatcher rd;
		if(emp!=null)
		{
			request.setAttribute("emp", emp);
			rd = request.getRequestDispatcher("showEmployee.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("message", "failed. Employee not found!");
			rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
	}

}
