<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark px-0 py-3">
  <div class="container-xl">
    <!-- Navbar toggle -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <!-- Collapse -->
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <!-- Nav -->
      <div class="navbar-nav mx-lg-auto">
        <a class="nav-item nav-link active" href="Appointment.jsp" aria-current="page">Appointment</a>
        <a class="nav-item nav-link" href="view_appointment.jsp">Appointment Status</a>
      </div>
      <!-- Example single danger button -->
      <c:if test="${not empty patientObj }">
		<div class="btn-group">
	  	<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
	  		${patientObj.name}
  		</button>
  		<ul class="dropdown-menu">
		<li><a class="dropdown-item" href="patientLogout">Logout</a></li>
 		<li><a class="dropdown-item" href="#">Change Password</a></li> 
  		</ul>
	</div>
      <!-- Action -->
      <div class="d-flex align-items-lg-center mt-3 mt-lg-0">  </div>    
      
      </c:if>


      </div>
    </div>
</nav>
</body>
</html>