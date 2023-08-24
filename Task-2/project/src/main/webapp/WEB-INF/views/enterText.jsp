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

	
	
	label{
		color: white;
		font-size: 300%;
		transition: 0.5s;
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


<title>Enter Text :-) </title>


</head>






<body>


<video autoplay loop muted plays-inline class="backVideo">
			
			<source src="<c:url value= "/resources/images/aboutMe.mp4" /> " type="video/mp4"  >	
				
	</video>
	



<div class="container mt-5">
	    
	    <form action="countText">
	
			 <div class="form-group">
			    <br><br><label for="textQuery">Enter Text</label>
			    <input type="text" 
			    	   class="form-control" 
			    	   id="textQuery" 
			    	   aria-describedby="emailHelp" 
			    	   placeholder="Enter Text"
			    	   name="query">
			    	   
			  </div>

				  <div class="container mt-5 text-center">
			  
			  		 <a href="${pageContext.request.contextPath}/" class = "btn btn-outline-success" >HOME-PAGE</a><br><br><br><br>	
			  		
			  		 <button type="submit" class="btn btn-primary">Submit</button><br><br><br><br>	
			  		 
			  		 
			  		 
			  		 <a href="${pageContext.request.contextPath}/fileUpload" class = "btn btn-outline-warning" >UPLOAD FILE</a>
			 
			  	</div>
				 
				 
				 
				 
				 
				 
				 
				 
		
 		
 		</form>
    </div> 
    
   

</body>
</html>