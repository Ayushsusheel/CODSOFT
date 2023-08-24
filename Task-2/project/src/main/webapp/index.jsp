<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%@page isELIgnored="false" %>        
    
    
    
 <head>   
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" >   
    
 
    
<link rel="stylesheet" 
     
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
     
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
     
      crossorigin="anonymous">
    
    

    
    
    
    
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" 
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" 
        crossorigin="anonymous">
</script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" 
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" 
		crossorigin="anonymous">
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" 
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" 
		crossorigin="anonymous">
</script>    
    
<style type="text/css">

	.profile{
			
			border-radius:50%;
			
			/*position: absolute;*/ 
			
			
			width: 600px;
			top: 0;
			left: 0;
			margin-left: 30%;
			padding: 20px 8%;
			display: flex;
			align-items: center;
			justify-content: space-between;
			
			
		}
	
	 body{
  			/*background-image: url("<c:url value= "/resources/images/mountain.jpg" />" );*/
  			background-size: cover;
  			background-repeat: no-repeat;
		}

	.test{
			color : green;
		}
	
	h1{
		color: white;
		font-size: 300%;
		transition: 0.5s;
	}
	
	h1:hover{
		-webkit-text-stroke: 2px #fff;
		color: transparent;
	}
	
	h3{
		color: black;
	}

    h4{
		color: red;
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


<title>ABOUT ME :-) </title>


</head>






 <body style="background-color:powderblue">
	
	
	<video autoplay loop muted plays-inline class="backVideo">
			
			<source src="<c:url value= "/resources/images/aboutMe.mp4" /> " type="video/mp4"  >	
				
	</video>
	
	
	
	
	<img alt="my image"  class="profile" src="<c:url value= "/resources/images/pic1.jpg" /> " />
	
	
	<h1 class="text-center mt-5" >Hi Guyzz, Welcome to my HOME-PAGE</h1><hr>
	
	<!--  <h1 class="test">HI TESTING CSS</h1>-->
		
	<h1 class="text-center mt-5">This is a Project where you can do some cool stuff :-)</h1><hr>

	<h1 class="text-center mt-5">Also You Can Check-Out My Social Profiles :-)</h1><hr>
	
	<div class="container mt-4">
		
		 <form action="linkeDin" >
				<br><br>
				<div class="container mt-3 text-center">
					<button type="submit" class="btn btn-outline-primary">1. LinkeDin</button>
			 	</div>
		</form>
		
		
		
		<form action="github">
				<br><br>
				<div class="container mt-3 text-center">
			 		<button type="submit" class="btn btn-outline-light">2. GitHub</button> <!-- mene button success wale die but chlee ni :- (( -->
			 	</div>
		</form>
		
		
		<form action="searchAnything">
				<br><br>
				<div class="container mt-3 text-center">
			 		<button type="submit" class="btn btn-outline-danger">3. Search Anything</button>
			 	</div>
		</form>
		
		
		<form action="count">
				<br><br>
				<div class="container mt-3 text-center">
			 		<button type="submit" class="btn btn-outline-warning">4. Word Counter</button>
			 	</div>
		</form>
		
		
		
		<form action="add">
				<br><br>
				<div class="container mt-3 text-center">
			 		<button type="submit" class="btn btn-outline-success">5. STUDENT MANAGEMENT SYSTUMMM</button>
			 	</div>
		</form>
		
		
    </div>   

</body>
</html>