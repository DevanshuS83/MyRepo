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
 * Servlet implementation class Delete1Servlet
 */
public class Delete1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
   {
		// TODO Auto-generated method stub
		EmployeeDAO dao = new EmployeeDAO();
		Employee emp = dao.getEmployee(Integer.parseInt(request.getParameter("eid")));
		if(emp!=null)
		{
			request.setAttribute("emp", emp);
			RequestDispatcher rd = request.getRequestDispatcher("confirmDeleteEmployee.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("message", "failed. Employee not found!");
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
   }

}
