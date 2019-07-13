<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  				
<title>Sign up Page</title>
</head>
<body>
<div id=body padding = "20px">
<nav class="navbar navbar-dark bg-dark">
  <div class="container">
  
  
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
    						aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
        
   
</nav>
<br>  
    
<div class="container-fluid">
<h2 align = "center">SIGN UP</h2>
  <br>
</div>


<div id=reg align = "left">

 <form:form action="saveUser" method="post" modelAttribute="user">
 
  

<div class="form-row">
  
    <div class="form-group col-md-6">
          <label>First Name</label>
      	  <input type="text" class="form-control" id="fname" placeholder="Enter your first name">
    </div>
    
    <div class="form-group col-md-6">
     	 <label>Last Name</label>
      	 <input type="text" class="form-control" id="lname" placeholder="Enter your last name">
    </div>
</div>
  
	<div class="form-group">
	    <label>Address Line 1</label>
    	<input type="text" class="form-control" id="addline1" placeholder="House/Flat No.">
  </div>
  
	<div class="form-group">
	  	<label for="inputAddress2">Address 2</label>
    	<input type="text" class="form-control" id="addline2" placeholder="Street/Locality">
	</div>
  
<div class="form-row">
    <div class="form-group col-md-6">
      	<label>City</label>
      	<input type="text" class="form-control" id="city">
    </div>
    
<div class="form-group col-md-4">
      <label>State</label>
      <select id="state" class="form-control">
 <option selected>Choose...</option>
     
		<option>Andhra Pradesh</option>
		<option>Arunachal Pradesh</option> 
		<option>Assam </option>
		<option>Bihar </option>
		<option>Chhattisgarh </option>
		<option>Goa </option>
		<option>Gujarat </option>
		<option>Haryana </option>
		<option>Himachal Pradesh </option>
		<option>Jammu & Kashmi</option>
		<option>Jharkhand </option>
		<option>Karnataka </option>
		<option>Kerala </option>
		<option>Madhya Pradesh </option>
		<option>Maharashtra </option>
		<option>Manipur </option>
		<option>Meghalaya </option>
		<option>Mizoram </option>
		<option>Nagaland </option>
		<option>Orissa </option>
		<option>Punjab </option>
		<option>Rajasthan </option>
		<option>Sikkim </option>
		<option>Tamil </option>
		<option>Telangana </option>
		<option>Tripura </option>
		<option>Uttar Pradesh </option>
		<option>Uttarakhand </option>
		<option>West Bengal </option>
</option>
      </select>
    </div>
    
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
    
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Sign in</button>
</form>



<form action = "index.jsp">
<br><input type="submit" value="Cancel" >
</form>
</form:form>



</div>
</div>
</body>
</html>