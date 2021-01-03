package com.dd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dd.dao.EmployeeDAO;
import com.dd.model.Employee;

/**
 * Servlet implementation class SearchAllServlet
 */
public class SearchAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		EmployeeDAO dao = new EmployeeDAO();
		List<Employee> employees = dao.getAllEmployees();
		if(employees.size()==0)
		{
			request.setAttribute("message", "No employees in the database");
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("employees", employees);
			RequestDispatcher rd = request.getRequestDispatcher("showAllEmployee.jsp");
			rd.forward(request, response);
		}
	}

}
