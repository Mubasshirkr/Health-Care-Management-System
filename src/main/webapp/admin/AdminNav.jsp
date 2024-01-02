<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<meta charset="UTF-8">
<title>Admin Nav</title>
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
        <a class="nav-item nav-link active" href="AdminIndex.jsp" aria-current="page">Home</a>
        <a class="nav-item nav-link" href="admin/Adoctor.jsp">Doctor</a>
        <a class="nav-item nav-link" href="admin/patient.jsp">Patient</a>
      </div>
      <!-- Example single danger button -->
<div class="btn-group">
  <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Admin
  </button>
  <ul class="dropdown-menu">
	<li><a class="dropdown-item" href="adminLogout">Logout</a></li>
  </ul>
</div>
      <!-- Action -->
      <div class="d-flex align-items-lg-center mt-3 mt-lg-0">

      </div>
    </div>
  </div>
</nav>


</body>
</html>