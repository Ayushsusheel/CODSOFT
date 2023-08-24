<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
    
<%@ page isELIgnored="false" %>    
    
    
<!DOCTYPE html>
<html lang="en">

    <head>
    	<meta charset="ISO-8859-1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        
        
  <style type="text/css">

	
	
	 body{
  			background-image: url("<c:url value= "/resources/images/bike.jpg" />" );
  			background-size: cover;
  			background-repeat: no-repeat;
		}

	
	
	h1{
		color: black;
		font-size: 300%;
		transition: 0.5s;
	}
	
	h1:hover{
		-webkit-text-stroke: 2px #fff;
		color: aqua;
	}
	
	h3{
		color: black;
		font-size: 314%;
		transition: 0.5s;
	}
	
	h3:hover{
		-webkit-text-stroke: 2px #fff;
		color: aqua;
	}
	
	h5{
		color: black;
		font-size: 287%;
		transition: 0.5s;
	}
	
	h5:hover{
		-webkit-text-stroke: 2px #fff;
		color: aqua;
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
 
        <title>Success :-))</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
    
    
    
    
    
    
    
    
    
    
    <h3 class="text-center"><br><br><b>Email Sent Successfully :-)</b></h3><hr><br>
    
    <h5 class="text-center"><br><br><b>Username :- ${USERNAME}</b> <br><br><b>Email-ID :- ${TO}</b></h5>
    
    
    
    
        <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-4">
                <div class="border border-3 border-success"></div>
                <div class="card  bg-white shadow p-5">
                    <div class="mb-4 text-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="text-success" width="75" height="75"
                            fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                            <path
                                d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
                        </svg>
                    </div>
                    <div class="text-center">
                        <h1>Success :-)</h1><br><hr>
                        <p>Email Sent Successfully !</p>
                       <!--   <button class="btn btn-outline-success">Home</button> -->
                    </div>
                </div>
            </div>
        </div> 
        
        <div class="container mt-3 text-center">
			  
			  		 <a href="${pageContext.request.contextPath}/generateEmail" class = "btn btn-outline-primary" >Generate Email</a>
			  		 
			  		  <a href="${pageContext.request.contextPath}/displayStudents" class = "btn btn-outline-success" >Display All Students</a>
			  		  
			  		  <a href="${pageContext.request.contextPath}/add" class = "btn btn-outline-success" >Add Student</a>
			  		  
			  		  <a href="${pageContext.request.contextPath}/" class = "btn btn-outline-warning" >HOME-PAGE</a>	
			  		
			  		
			 
			  </div>
        
    </body>

</html>