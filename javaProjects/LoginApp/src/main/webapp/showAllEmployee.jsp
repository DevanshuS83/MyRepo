<!doctype html>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.wipro.model.Employee"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>showEmployee</title>
  </head>
  <body>
    <% 	
  		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
		if(request.getSession().getAttribute("user")==null)
  		{
  			request.setAttribute("message", "You've been logged out");
  			request.getRequestDispatcher("index.jsp").forward(request, response);
  		}
  		List<Employee> employees = new ArrayList<Employee>();
		if(request.getAttribute("employees")!=null)
			employees = (ArrayList<Employee>) request.getAttribute("employees");
		
  	%>
  	<h1 class="text-secondary">Employee Details</h1>
    <hr>
    <div class="container mt-5 border border-secondary rounded table-responsive">
    	<h3 class="text-secondary text-center">Employees</h3>
    	<hr>
    		<table class="table table-bordered">
    			<tr>
	    			<th>NAME</th>
	    			<th>EID</th>
	    			<th>GENDER</th>
	    			<th>DESIGNATION</th>
	    			<th>SALARY</th>
	    			<th>CITY</th>
	    			<th>EMAIL ID</th>
	    			<th>MOBILE NO</th>
    			</tr>
    			<%
    				for(Employee emp:employees)
    				{
    					out.println("<tr>");
    					out.print("<td>"+emp.getEname()+"</td>");
    					out.print("<td>"+emp.getEid()+"</td>");
    					out.print("<td>"+emp.getGender()+"</td>");
    					out.print("<td>"+emp.getDesignation()+"</td>");
    					out.print("<td>"+emp.getSalary()+"</td>");
    					out.print("<td>"+emp.getCity()+"</td>");
    					out.print("<td>"+emp.getEmail()+"</td>");
    					out.print("<td>"+emp.getMobile()+"</td>");
    					out.println("</tr>");
    				}
    			%>
  		  	</table>
  		  	<a href="home.jsp" class="btn btn-secondary mt-2 mb-2">home</a>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>