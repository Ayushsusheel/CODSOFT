

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
    
<!DOCTYPE html>
<html>
<head>


    <!-- Required meta tags -->
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="<c:url value="/resources/js/script.js" />"></script>


<style type="text/css">

	
	 body{
  			background-image: url("<c:url value= "/resources/images/forest.jpg" />" );
  			background-size: cover;
  			background-repeat: no-repeat;
		}

	
	
	h1{
		color: black;
		font-size: 300%;
		transition: 0.5s;
		text-align: center;
	}
	
	h1:hover{
		-webkit-text-stroke: 2px #fff;
		color: aqua;
	}

</style>





<title>U P L O A D </title>

 </head>
  
  
 <body>
   
   <hr>
    <h1>__FILE UPLOADER___</h1><hr>

	<div class="container p-5">
		
		<h1>!!!---------Upload Your File---------!!!</h1><br><br><br><br><br>	
	
	
		<form action="uploadFile" method="post" enctype="multipart/form-data">
 			 
 			 <div class="form-group">
    			<label for="exampleFormControlFile1">SELECT YOUR FILE FOR UPLOADING...</label>
    			
    			<input type="file" 
    				   class="form-control-file" 
    				   id="exampleFormControlFile1"
    				   name="uploadedFile"
    				   >
    		 </div>
    		 
    		 <button class="btn btn-outline-success">Upload</button>
    		 
    		 <div class="container mt-5 text-center">
			  
			  		 <a href="http://localhost:8080/Student_Management_System/" class = "btn btn-outline-danger" >HOME-PAGE</a><br><br><br><br>	
			  		
			  		<a href="http://localhost:8080/Student_Management_System/enterText" class = "btn btn-outline-warning" >Enter TEXT for COUNTING</a>
			 
			  	</div>
				 
    		 
    		 
		</form>
	
	</div>




























    </body>
</html>




    