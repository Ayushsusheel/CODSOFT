<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@page isELIgnored="false" %>    
    
<!DOCTYPE html>
<html lang="en">

    <head>
    	<meta charset="ISO-8859-1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Success :-))</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body style="background-color:powderblue;">

<!--  <h1>${ all_users.name}</h1>-->



		<c:forEach var="i" items="${studentsList}">
		
				<h6>* ${i}<br></h6><hr><br>
		
		</c:forEach> 
		
		<div class="container mt-5 text-center">
			  
			  		 <a href="${pageContext.request.contextPath}/add" class = "btn btn-outline-danger" >BACK</a>

			  		  <a href="${pageContext.request.contextPath}/" class = "btn btn-outline-success" >HOME-PAGE</a>	
			  		
			  		
			 
			  </div>


</body>
</html>