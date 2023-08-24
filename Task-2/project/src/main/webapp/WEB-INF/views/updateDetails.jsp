<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<%@page isELIgnored="false" %>       
    
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
<%@include file = "./BASE.jsp" %> <!-- ./ means current directory -->


<style type="text/css">
.error{
color : red;
}

body{
  			/*background-image: url("<c:url value= "/resources/images/thankyou.jpg" />" );*/
  			background-size: cover;
  			background-repeat: no-repeat;
		}

h1{
		color: black;
		font-size: 350%;
		transition: 0.5s;
	}
	
	h1:hover{
		-webkit-text-stroke: 2px #fff;
		color: navy;
	}
	
	
	label{
		color: navy;
		font-size: 150%;
		transition: 0.5s;
	}
	
    label:hover{
		-webkit-text-stroke: 2px #fff;
		color: transparent;
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






<body style="background-color:powderblue;">
 
 		<video autoplay loop muted plays-inline class="backVideo">
			
			<source src="<c:url value= "/resources/images/movingclouds.mp4" /> " type="video/mp4"  >	
				
		</video>
 
 
  		<div class="alert alert-info" role="alert"> 
   		
   			<form:errors path = "student.*"  cssClass="error"/>  
   		
   		 </div> 
 
 	
	  
	 
	 
	  <h1 class="text-center mt-5"> UPDATE DETAILS HERE :-) </h1> <br>
   
   	  
  	 <div class="container mt-5">
	    
	    <form action="${pageContext.request.contextPath}/processForm" method ="post">
	    
	    
	  <!--    <label for="studentName">Student ID</label>-->
	    <input type = "hidden" value = "${DETAILS.id }" name = "id"  class="form-control col-sm-7 "  placeholder="ID (Don't change this leave it as it is else someone else record will be affected !!!)"> 
	    
	    <!-- if my input type = text then it will print on web... but say muje id hide krni h therefore use <input type = "hidden"> -->
	    
	    
	    
	
			 <div class="form-group">
			    <label for="studentName">Student Name</label>
			    <input type="text" 
			    	   class="form-control" 
			    	   id="studentName" 
			    	   aria-describedby="emailHelp" 
			    	   placeholder="Enter Name"
			    	   name="studentName"
			    	   value= "${DETAILS.studentName}"
			    	   
			    	   >
			    	   
			  </div>
	
	
			<div class="form-group">
			    <label for="rollNumber">Roll Number</label>
			    <input type="text" 
			    	   class="form-control" 
			    	   id="rollNumber"
			    	   placeholder="Enter Roll Number"
			    	   name="rollNumber"
			    	   value= "${DETAILS.rollNumber}"
			    	   >
			  </div>
	
	
	
			  <div class="form-group">
			    <label for="exampleInputEmail1">Email Address</label>
			    <input type="email" 
			    	   class="form-control" 
			    	   id="exampleInputEmail1" 
			    	   aria-describedby="emailHelp" 
			    	   placeholder="Enter Email"
			    	   name="email"
			    	   value= "${DETAILS.email}"
			    	   >
			        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else...</small>
			  </div>
	  
			  
			  
			  <div class="form-group">
			    <label for="phoneNumber">Phone Number</label>
			    <input type="text" 
			    	   class="form-control" 
			    	   id="userPhoneNumber"
			    	   placeholder="Enter Phone Number"
			    	   name="phoneNumber"
			    	   value= "${DETAILS.phoneNumber}"
			    	   >
			    	   
			    	   
			  </div>
			  
			  
			  <div class="form-group">
			    <label for="grade">Student Grade</label>
			    <input type="text" 
			    	   class="form-control" 
			    	   id="grade" 
			    	   aria-describedby="emailHelp" 
			    	   placeholder="Enter Grade"
			    	   name="grade"
			    	   value= "${DETAILS.grade}"
			    	   >
			  </div>
			  
			  
			  <div class="form-group">
			    <label for="city">City</label>
			    <input type="text" 
			    	   class="form-control" 
			    	   id="city" 
			    	   aria-describedby="emailHelp" 
			    	   placeholder="Enter City"
			    	   name="city"
			    	   value= "${DETAILS.city}"
			    	   >
			  </div>
			  
			  
			  <div class="form-group">
			    <label for="state">State</label>
			    <input type="text" 
			    	   class="form-control" 
			    	   id="state" 
			    	   aria-describedby="emailHelp" 
			    	   placeholder="Enter State"
			    	   name="state"
			    	   value= "${DETAILS.state}"
			    	   >
			  </div>
			  
			  <div class="form-group">
			    <label for="country">Country</label>
			    <input type="text" 
			    	   class="form-control" 
			    	   id="country" 
			    	   aria-describedby="emailHelp" 
			    	   placeholder="Enter Country"
			    	   name="country"
			    	   value= "${DETAILS.country}"
			    	   >
			    	
			  </div>
			  
			  
			  <div class="form-group">
			    <label for="dob">Date Of Birth</label>
			    <input type="text" 
			            class="form-control"  
			            id="dob"
			            aria-describedby="emailHelp" 
			            placeholder="yyyy-mm-dd" 
			            name="dob" 
			            value= "${DETAILS.dob}"
			            />
			          
			  </div>
			  
			  
			  
			  
			  
			   <div class="form-group">
			  		  <label for="subjects">Select Subjects</label>
					  <select name="subjects[]" 
					          id="subjects" 
					          class="form-control"
					          id="subjects"
			                  aria-describedby="emailHelp" 
					          multiple>
					          
					    <option value = "Core Java">Core Java</option>
					    <option value = "Spring MVC">Spring MVC</option>
					    <option value = "Spring Boot">Spring Boot</option>
					    <option value = "Python">Python</option>
					    <option value = "C">C</option>
					    <option value = "C++">C++</option>
					    <option value = "PHP">PHP</option>
					    <option value = "Basics of Big Data">Basics of Big Data</option>
					    <option value = "Theory of Oil and Gas">Theory of Oil and Gas</option>
					    <option value = "Scala">Scala</option>
					    <option value = "DSA">DSA</option>
					    <option value = "DBMS">DBMS</option>
					   </select>
					   
					  
					   
					   <small id="emailHelp" class="form-text text-muted">please make ensure to assign at least 1 subject...</small>
					   
					   <!-- <br><br><br> -->
		        </div>	  
			  
	  
			  <div class="container mt-5 text-center">
			  
			  		 <a href="${pageContext.request.contextPath}/" class = "btn btn-outline-danger" >BACK</a>	
			  		
			  		 <button type="submit" class="btn btn-warning">Update</button>
			  		 
			  		 <a href="${pageContext.request.contextPath}/displayStudents" class = "btn btn-outline-success" >Display All Students</a>
			 
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