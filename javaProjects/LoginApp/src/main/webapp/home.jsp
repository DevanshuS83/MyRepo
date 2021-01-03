<!doctype html>
<%@page import="com.dd.model.Employee"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Home</title>
  </head>
  <body>
  	<% 	
  		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
	
  		if(request.getSession().getAttribute("user")==null)
  		{
  			request.setAttribute("message", "You've been logged out");
  			request.getRequestDispatcher("index.jsp").forward(request, response);
  		}
  	%>
  	
    <h1 class="text-success">Home</h1>
    <p>Logged in as <b>
    <%
    		Employee emp = (Employee) request.getSession().getAttribute("user");
    		if(emp!=null) 
    			out.println(emp.getEname());
    %></b></p>
    <%
    	if(request.getAttribute("message")!=null)
    		out.println(request.getAttribute("message"));
    %>
    <hr>
    <div class="container mt-5 border border-success rounded">
    	1.<a href="addEmployee.jsp">ADD Employee</a><br>
    	2.<a href="deleteEmployee.jsp">DELETE Employee</a><br>
    	3.<a href="modifyEmployee.jsp">MODIFY  Personal details</a><br>
    	4.<a href="selectEmployee.jsp">SELECT Employee by Id</a><br>
    	5.<a href="searchAll">SELECT ALL Employee</a><br>
    	<form action="logout" method="post">
    		<input type="submit" value="logout" class="btn btn-success mt-2 mb-2"/>
    	</form>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>