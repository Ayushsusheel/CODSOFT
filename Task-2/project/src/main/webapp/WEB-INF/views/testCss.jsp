<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<title>Search :-)</title>


<style type="text/css">

body{
  background-image: url("<c:url value= "/resources/images/mountain.jpg" />" );
  background-size: cover;
  background-repeat: no-repeat;
}

.error{
color : green;
text-align: center;
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

<h1 class="error">___Welcome to my Search PAGE___</h1>


<!--  <video autoplay loop muted plays-inline class="backVideo">
			
			<source src="<c:url value= "/resources/images/aboutMe.mp4" /> " type="video/mp4"  >	
				
	</video>-->



<!--  <img alt="my image" src="<c:url value= "/resources/images/pic1.jpg" />" >-->

<!--  <img src="<c:url value="/resources/pic1.jpg" />" alt="Idea Factory" />-->

<div class="container">
    
    	<div class= "card mx-auto mt-5 bg-dark" style="width: 60%;"> <!-- mx-auto using this it will come in middle, 500px or 80% also we can write , [ bg-primary :-  this will make this card blue, bg-success :- will make card green, bg-secondary will make grey color card ]   -->
    	
    		<div class= "card-body py-5">
    			
    			<h3 class="text-center text-white" style="text-transform: uppercase" >___my search box___</h3>
    			
    			<form action="search"  class="mt-3">
    				
    				<div class="form-group">
    				
    					<input type="text" 
    					       name="querybox" 
    					       placeholder="Enter Your Query" 
    					       class="form-control"
    					       />
    				 </div>
    				
    				 <div class="container text-center mt-2">
    				 	
    				 	<button class="btn btn-outline-light">Search :-)</button>
    				 
    				 
    				 </div>	
    				
    				
    			</form>	
    				
    		</div>
    	
    	</div>

    </div>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    


</body>
</html>































