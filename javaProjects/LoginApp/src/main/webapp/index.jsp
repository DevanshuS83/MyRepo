<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Login</title>
  </head>
  <body>
    <h1 class="text-primary">Admin Login</h1>
    <%
    	if(request.getAttribute("message")!=null)
    		out.println(request.getAttribute("message"));
    %>
    <hr>
    <div class="container mt-5 border border-primary rounded">
    	<h3>Please enter your details</h3>
    	<form action="login" method="post">
    		<table class="table table-bordered">
    			<tr>
    				<td><label for="eid">EID</label></td>
    				<td><input type="number" id="eid" name="eid" required/></td>
    			</tr>
    			<tr>
    				<td><label for="password">Password</label></td>
    				<td><input type="password" id="pwd" name="pwd" required/></td>
    			</tr>
    			<tr>
    				<td colspan="2">
    					<input type="submit" class="btn btn-primary" value="login"/>
    				</td>
    			</tr>
    		</table>
    	</form>
    	<p><i>Hint: password= password</i></p>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>