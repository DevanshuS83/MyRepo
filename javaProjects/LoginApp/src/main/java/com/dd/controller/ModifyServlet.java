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
 * Servlet implementation class ModifyServlet
 */
public class ModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		EmployeeDAO dao = new EmployeeDAO();
		Employee emp = new Employee();
		emp.setEid(Integer.parseInt(request.getParameter("eid")));
		emp.setEname(request.getParameter("ename"));
		emp.setDesignation(request.getParameter("designation"));
		emp.setCity(request.getParameter("city"));
		emp.setGender(request.getParameter("gender").charAt(0));
		emp.setEmail(request.getParameter("email"));
		emp.setSalary(Integer.parseInt(request.getParameter("salary")));
		emp.setMobile(request.getParameter("mobile"));
		
		String message = dao.updateEmployee(emp);
		request.setAttribute("message", message);
		
		//Updating employee details in session
		if(message.substring(0, 7).equals("success"))
		{
			HttpSession session = request.getSession();
			session.setAttribute("user", emp);
		}
		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);
	}

}
