package com.dd.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.query.Query;

import com.dd.model.Employee;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class EmployeeDAO 
{
	SessionFactory sf;

	public EmployeeDAO() 
	{
		Configuration con = new Configuration().configure().addAnnotatedClass(Employee.class);
		sf = con.buildSessionFactory();
	}
	
	public String addEmployee(Employee emp)
	{
		String message="Oops...something went wrong :(";
		
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		if(session.get(Employee.class, emp.getEid())==null)
		{
			session.save(emp);
			message = "success. Employee added successfully with EID: "+emp.getEid();
		}
		transaction.commit();
		session.close();
		return message;
	}
	
	public Employee getEmployee(int eid)
	{
		Employee emp;
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		emp = session.get(Employee.class, eid);
		transaction.commit();
		session.close();
		return emp;
	}
	
	public String deleteEmployee(Employee emp)
	{
		String message = "Oops...something went wrong :(";
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		try
		{
			session.delete(emp);
			message = "success. Deleted Employee with EID: "+emp.getEid();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			transaction.commit();
			session.close();
		}
		return message;
	}
	
	public String updateEmployee(Employee emp)
	{
		String message = "Oops...something went wrong :(";
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		try 
		{
			session.update(emp);
			message = "success. Employee details updated successfully!";
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			transaction.commit();
			session.close();
		}
			return message;
	}
	
	@SuppressWarnings("unchecked")
	public List<Employee> getAllEmployees()
	{
		List<Employee> employees = new ArrayList<Employee>();
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		Query<Employee> query = session.createQuery("from Employee");
		employees = query.getResultList();
		transaction.commit();
		session.close();
		return employees;
	}
}
