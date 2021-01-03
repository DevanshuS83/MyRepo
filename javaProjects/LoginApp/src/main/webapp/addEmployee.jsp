<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>addEmployee</title>
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
    <h1 class="text-warning">Employee Registration</h1>
    <hr>
    <div class="container mt-5 border border-warning rounded">
    	<h3 class="text-primary text-center">Form</h3>
    	<hr>
    	<form action="addEmployee" method="post">
  			<table class="table table-bordered">
  				<tr>
  					<td><label for="ename">Name</label></td>
  					<td><input type="text" id="ename" name="ename" required/></td>
  				</tr>
  				<tr>
  					<td><label>ID</label></td>
  					<td><label><i>Will be auto generated...</i></label></td>
  				</tr>
  				<tr>
  					<td><label for="gender">Gender</label></td>
  					<td>male<input type="radio" id="male" name="gender" value="M"/><br>
  						female<input type="radio" id="female" name="gender" value="F"/><br>  						
  					</td>
  				</tr>
  				<tr>
  					<td><label for="designation">Designation</label></td>
  					<td>
  						<select name="designation" id="designation">
  							<option value="Manager">Manager</option>
  							<option value="Engineer">Engineer</option>
  							<option value="HR">HR</option>
  						</select>
  					</td>
  				</tr>
  				<tr>
  					<td><label for="salary">Salary</label></td>
  					<td><input type="number" id="salary" name="salary" required/></td>
  				</tr>
  				<tr>
  					<td><label for="city">City</label></td>
  					<td>
  						<select name="city" id="city">
  							<option value="Bareilly">Bareilly</option>
  							<option value="Bangalore">Bangalore</option>
  							<option value="Hydrabad">Hydrabad</option>
  							<option value="Mumbai">Mumbai</option>
  							<option value="Noida">Noida</option>
  						</select>
  					</td>
  				</tr>
  				<tr>
  					<td><label for="email">Email</label></td>
  					<td><input type="email" id="email" name="email" required/></td>
  				</tr>
  				<tr>
  					<td><label for="mobile">Mobile No.</label></td>
  					<td><input type="tel" id="mobile" name="mobile" placeholder="123-45-678" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required></td>
  				</tr>
  				<tr>
  					<td><input type="submit" class="btn btn-success" value="add"/></td>
  					<td><input type="reset" class="btn btn-danger"/></td>
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