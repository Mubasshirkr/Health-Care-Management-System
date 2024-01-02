<%@page import="com.dao.AdoctorDao"%>
<%@page import="com.entity.Adoctor"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<meta charset="UTF-8">
<title>Doctor</title>
<%@include file="../Component/allCSSandJS.jsp" %>
<style type="text/css">
	.paint-card{ box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0, 3)}
</style>
</head>
<body>

	<%@include file="AdminNav.jsp"  %>
<div class="container-fluid p-3"> <div class="row">
<div class="col-md-4 offset-md-4">
<div class="card paint-card"> <div class="card-body">
<p class="fs-3 text-center">Edit Doctor</p>

					<%--<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>--%>


<%
	int id = Integer.parseInt(request.getParameter("id"));
	AdoctorDao dao2 = new AdoctorDao(DBconnect.getConn());
	Adoctor d=dao2.getDoctorById(id);
%>

<form action="../updateDoctor" method="post">
<div class="mb-3">
<label class="form-Label ">Full Name</label> <input type="text" required name="fullName" class="form-control" value="<%=d.getFullName()%>">
</div>
<div class="mb-3">
<label class="form-Label ">DOB</label> <input type="date" required name="dob" class="form-control" value="<%=d.getDob() %>">
</div>
﻿

<div class="mb-3">
<label class="form-Label ">Qualification</label> <input required name="qualification" type="text" class="form-control" value="<%=d.getQualification()%>">
</div>
<div class="mb-3">
<label class="form-Label ">Specialist</label> <select name="specialist" required class="form-control">
<option><%=d.getSpecialist()%></option>
<% 
	SpecialistDao dao = new SpecialistDao(DBconnect.getConn());
	List<Specialist> list = dao.getAllSpecialist();
	for(Specialist s: list){
	%>
	<option><%=s.getSepcialistName() %></option>
<%
	}
%>

</select>
</div>
<div class="mb-3">
<label class="form-Label ">Email</label> <input type="text" required name="email" class="form-control" value="<%=d.getEmail()%>">
</div>
<div class="mb-3">
<label class="form-Label ">Mob No</label> <input type="text" required name="mobNo" class="form-control" value="<%=d.getMobNo()%>">
</div>
<div class="mb-3">
<label class="form-Label ">Password</label> <input required name="password" type="txt" class="form-control" value="<%=d.getPassword()%>">
</div>
<input type="hidden" name="id" value="<%=d.getId()%>">
<button type="submit" class="btn btn-primary col-md-12">Update</button>
</form>
</div>
</div>
</div>

﻿


</div>
</div>

</body>
</html>