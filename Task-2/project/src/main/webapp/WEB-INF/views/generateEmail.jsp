<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<title>Send Email :-)</title>


<style type="text/css">

body{
  			/*background-image: url("<c:url value= "/resources/images/city.jpg" />" );*/
  			background-size: cover;
  			background-repeat: no-repeat;
		}

h1{
		color: #00FFFF;
		font-size: 250%;
		transition: 0.5s;
		text-align: center;
	}
	
	h1:hover{
		-webkit-text-stroke: 2px #fff;
		color: black;
	}


label{
		color: #00FFFF;
		font-size: 150%;
		transition: 0.5s;
		text-align: center;
	}

label:hover{
		-webkit-text-stroke: 2px #fff;
		color: black;
	}

.backVideo{
			position: fixed;
			right: 0;
			bottom: 0;
			z-index: -1;
	
	}
	
	@media (min-aspect-ratio: 16/9)
	{
		.backVideo{
		
			width: 100%;
			height: auto;
		}
	}
	
	@media (max-aspect-ratio: 16/9)
	{
		.backVideo{
		
			width: auto;
			height: 100%;
		}
	}
	






</style>

</head>



<body>


<video autoplay loop muted plays-inline class="backVideo">
			
			<source src="<c:url value= "/resources/images/tab.mp4" /> " type="video/mp4"  >	
				
	</video>

<h1>PLEASE PROVIDE THE DETIALS BELOW :-)</h1>

<div class="container mt-5">
	    
	    <form action="sendEmail" method ="post">
	
			 <div class="form-group">
			    <label for="Username">Username</label>
			    <input type="text" 
			    	   class="form-control" 
			    	   id="Username" 
			    	   aria-describedby="emailHelp" 
			    	   placeholder="Enter Name"
			    	   name="Username">
			    	   
			  </div>
	
			  <div class="form-group">
			    <label for="exampleInputEmail1">Email Address</label>
			    <input type="email" 
			    	   class="form-control" 
			    	   id="exampleInputEmail1" 
			    	   aria-describedby="emailHelp" 
			    	   placeholder="Enter Email"
			    	   name="emailID">
			        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else...</small>
			  </div>
	  
			  
			  
			  	  
	  
			  <div class="container mt-5 text-center">
			  
			  		 <a href="http://localhost:8080/Student_Management_System/" class = "btn btn-outline-danger" >HOME-PAGE</a>	
			  		
			  		 <a href="http://localhost:8080/Student_Management_System/displayStudents" class = "btn btn-outline-success" >Display All Students</a>
			  		
			  		 <button type="submit" class="btn btn-primary">SEND-EMAIL :-)</button>
			  		 
			  		 
			  		 
			  		 
			 
			  </div>
			  
			 
			  
			  
			
	  
 	   </form>
    </div>   
	    
	    
	    
	    
	    
	    
	    	
		    
	    
	    
	    
	    
	
	    <!-- Optional JavaScript -->
	    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>