<!doctype html>
<%@page import="com.dd.model.Employee"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>deleteEmployee</title>
  </head>
  <body>
    <% 	
  		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
		Employee emp = new Employee(); //To prevent NullPointerException
  		if(request.getSession().getAttribute("user")==null)
  		{
  			request.setAttribute("message", "You've been logged out");
  			request.getRequestDispatcher("index.jsp").forward(request, response);
  		}
  		else
  		{
  			emp = (Employee) request.getSession().getAttribute("user");
  		}
  	%>
  	<h1 class="text-secondary">Modify Employee Details</h1>
    <hr>
    <div class="container mt-5 border border-secondary rounded">
    	<h3 class="text-secondary text-center">Details</h3>
    	<hr>
    	<form action="modifyEmployee" method="post">
  			<table class="table table-bordered">
  				<tr>
  					<td><label for="ename">Name</label></td>
  					<td><input type="text" id="ename" name="ename" value= <%=emp.getEname() %> required/></td>
  				</tr>
  				<tr>
  					<td><label for="eid">ID</label></td>
  					<td><input type="text" id="eid" name="eid" value= <%=emp.getEid() %> readonly="readonly"/></td>
  				</tr>
  				<tr>
  					<td><label for="gender">Gender</label></td>
  					<td>male<input type="radio" id="male" name="gender" value="M" <% if(emp.getGender()=='M')out.print("checked");else out.print(""); %>/><br>
  						female<input type="radio" id="female" name="gender" value="F" <% if(emp.getGender()=='F')out.print("checked");else out.print(""); %>/><br>  						
  					</td>
  				</tr>
  				<tr>
  					<td><label for="designation">Designation</label></td>
  					<td>
  						<select name="designation" id="designation">
  							<option value="Manager" <% if(emp.getDesignation().equals("Manager"))out.print("selected"); %>>Manager</option>
  							<option value="Engineer"<% if(emp.getDesignation().equals("Engineer"))out.print("selected"); %>>Engineer</option>
  							<option value="HR"<% if(emp.getDesignation().equals("HR"))out.print("selected"); %>>HR</option>
  						</select>
  					</td>
  				</tr>
  				<tr>
  					<td><label for="salary">Salary</label></td>
  					<td><input type="number" id="salary" name="salary" value=<%=emp.getSalary() %> required/></td>
  				</tr>
  				<tr>
  					<td><label for="city">City</label></td>
  					<td>
  						<select name="city" id="city">
  							<option value="Bareilly"<% if(emp.getCity().equals("Bareilly"))out.print("selected"); %>>Bareilly</option>
  							<option value="Bangalore"<% if(emp.getCity().equals("Bangalore"))out.print("selected"); %>>Bangalore</option>
  							<option value="Hydrabad"<% if(emp.getCity().equals("Hydrabad"))out.print("selected"); %>>Hydrabad</option>
  							<option value="Mumbai"<% if(emp.getCity().equals("Mumbai"))out.print("selected"); %>>Mumbai</option>
  							<option value="Noida"<% if(emp.getCity().equals("Noida"))out.print("selected"); %>>Noida</option>
  						</select>
  					</td>
  				</tr>
  				<tr>
  					<td><label for="email">Email</label></td>
  					<td><input type="email" id="email" name="email" value=<%=emp.getEmail() %> required/></td>
  				</tr>
  				<tr>
  					<td><label for="mobile">Mobile No.</label></td>
  					<td><input type="tel" value=<%=emp.getMobile() %> id="mobile" name="mobile" placeholder="123-45-678" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required/></td>
  				</tr>
  				<tr>
  					<td colspan="2"><input type="submit" class="btn btn-success" value="update"/></td>
  				</tr>
  			</table>
		</form>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>