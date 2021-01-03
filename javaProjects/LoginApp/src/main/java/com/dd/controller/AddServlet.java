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
 * Servlet implementation class AddServlet
 */
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Employee emp = new Employee();
		emp.setEname(request.getParameter("ename"));
		emp.setGender(request.getParameter("gender").charAt(0));
		emp.setDesignation(request.getParameter("designation"));
		emp.setSalary(Integer.parseInt(request.getParameter("salary")));
		emp.setCity(request.getParameter("city"));
		emp.setEmail(request.getParameter("email"));
		emp.setMobile(request.getParameter("mobile"));
		response.getWriter().println(emp);
		
		EmployeeDAO dao = new EmployeeDAO();
		String message = dao.addEmployee(emp);
		request.setAttribute("message", message);
		
		//dispatcher
		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);
		
	}

}
