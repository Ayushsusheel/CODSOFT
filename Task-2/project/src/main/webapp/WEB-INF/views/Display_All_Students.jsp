<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>

<%@include file = "./BASE.jsp" %> <!-- ./ means current directory -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
  
<%@page isELIgnored="false" %>    

<%@include file = "./BASE.jsp" %>

<meta charset="ISO-8859-1">


<style type="text/css">

	
	 body{
  			background-image: url("<c:url value= "/resources/images/purple.jpg" />" );
  			background-size: cover;
  			background-repeat: no-repeat;
		}

	
	h2{
		color: black;
		font-size: 300%;
		transition: 0.5s;
	}
	
	h2:hover{
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













<title>${ TITLE}</title>
</head>



<body>

	<!--  <video autoplay loop muted plays-inline class="backVideo">
			
			<source src="<c:url value= "/resources/images/thankyou_video.mp4" /> " type="video/mp4"  >	
				
	</video>-->


		<div class="container mt-3">
			
				<div class = "row">
						
						<div class="col-md-12">
						
							<h2 CLASS= "text-center mb-3 mt-5">WELCOME TO LIST OF STUDENTS :-) </h2><br><br>
						
							<table class="table mt-6">
							
								  <thead class="thead-dark  ">
									    <tr>
									      <th scope="col">ID</th>
									      <th scope="col">Student Name</th>
									      <th scope="col">Roll Number</th>
									      <th scope="col">Email</th>
									      <th scope="col">Phone Number</th>
									      <th scope="col">Grade</th>
									      <th scope="col">City</th>
									      <th scope="col">State</th>
									      <th scope="col">Country</th>
									      <th scope="col">D O B</th>
									      <th scope="col">Subjects Assigned</th>
									      
									      <th scope="col">Action</th>
									      
									    </tr>
								   </thead>
								   
								  <tbody>
									    
									 <c:forEach var = "i" items = "${studentsList }">  
									    <tr>
									    
									      <th scope="row">${i.id }</th>
									    
									      <td>${i.studentName }</td>
									    
									      <td>${i.rollNumber }</td>
									    
									      <td>${i.email }</td>
									      
									      <td>${i.phoneNumber }</td>
									      
									      <td>${i.grade }</td>
									      
									      <td>${i.city }</td>
									      
									      <td>${i.state }</td>
									      
									      <td>${i.country }</td>
									      
									      <td>${i.dob }</td>
									      
									      <td>${i.subjects }</td>
									      
									      <td>
									            <a href ="deleteStudent/${i.id }"> <i class="fas fa-trash-alt text-danger" style="font-size : 26px;"></i> </a><br><br><br><br>
									            
									            <a href ="updateStudent/${i.id }"> <i class="fas fa-user-edit" style="font-size : 26px;"></i> </a>
									      
									      </td>
									      
									      
									       <!--<c:forEach var = "j" items = "${i.subjects }">
									      
									          <td>* ${ j}</td>
									    
									       </c:forEach>-->
									    
									    
									    </tr>
									   
									   </c:forEach>
									    
									 </tbody>
								</table>
										
								<div class="container mt-5 text-center">
			  
			  		                <a href="${pageContext.request.contextPath}/add" class = "btn btn-outline-primary" >Add Student</a>
			  		 
			  		                <a href="${pageContext.request.contextPath}/" class = "btn btn-outline-warning" >Home-Page</a>	
			  		                
			  		                <a href="${pageContext.request.contextPath}/generateEmail" class = "btn btn-outline-success" >Generate Email</a>
			  		
			  		
			 
			 					 </div>		
						 
						
						</div>
						
				 </div>
				 
		</div>












</body>
</html>


























