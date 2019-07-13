<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
				<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
				<meta charset="utf-8">  
  				<meta name="viewport" content="width=device-width, initial-scale=1">  
  				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  
  				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
  				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>  
  				<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  
<title>Login Page</title>

</head>
<body>
<nav class="navbar navbar-dark bg-dark">
  <div class="container">
  
  
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
        
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
     
        <li class="nav-item">
          <a class="nav-link" href="contactus.html">Contact Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="signup.jsp">Sign Up</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<br>  
    
<div class="container-fluid">
  <h2 align = "center">Login</h2>
  <br>
</div>

<div id = "form" align = "center" method = "post" >
<form   action = "/dashboard.jsp">
		
			<table  cellpadding= "15px" border = "1">

				<tr>
					<td align = "left">Email:</td>
					<td colspan = "1"><input type="text" name="email"><br></td>
				</tr>
		
				<tr>
					<td align = "left">Password:</td>
					<td colspan = "1"><input type="password" name="password"><br></td>
				</tr>
						
			</table>
					<br>
					<input type="checkbox" name="remember_me" value="remember me">Remember Me<br>
					<br>
					<a href = "/forgotpassword.jsp">Forgot Password</a><br>
					<br>
			
<input type="submit" name="Submit">
</form>

<br>

<form action = "/index.jsp">
<input type="submit" value="Cancel" >
</form>




</div>

</body>
</html>


