<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>selectEmployee</title>
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
    <h1 class="text-primary">Select Employee</h1>
    <hr>
    <div class="container mt-5 border border-primary rounded">
    	<h3 class="text-primary text-center">Form</h3>
    	<hr>
    	<form action="searchEmployee" method="post">
  			<table class="table table-bordered">
  				<tr>
  					<td><label for="eid">ID</label></td>
  					<td><input type="text" id="eid" name="eid" required/></td>
  				</tr>
   				<tr>
  					<td><input type="submit" class="btn btn-primary" value="search"/></td>
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