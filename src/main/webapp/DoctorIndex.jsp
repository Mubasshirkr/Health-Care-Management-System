<%@page import="com.entity.Adoctor"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.AdoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Doctor</title>
<%@ include file="../Component/allCSSandJS.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@ include file="Doctor/doctorNav.jsp" %>
	
	<c:if test="${empty doctObj }">
		<c:redirect url="doctorLogin.jsp"></c:redirect>
	</c:if>


<% 
	Adoctor d= (Adoctor) session.getAttribute("doctObj");	
	AdoctorDao dao=new AdoctorDao(DBconnect.getConn()); 
	%>


	<div class="row"></div>
	<div class="col-md-15">
	<div class="card paint-card">
	<div class="card-body text-center text-success"> 
	<i class="fas fa-user-md fa-3x"></i><br> 
	<p class="fs-4 text-center">
	</p>
	Total Appointments <%= dao.countAppointmentByDoctorId(d.getId()) %> <br>
		Name: ${doctObj.fullName } <br>
		Date of birth: ${doctObj.dob } <br>
		Qualification: ${doctObj.qualification }<br> 
		Specialist: ${doctObj.specialist} <br>
		Email id: ${doctObj.email}<br>
		Contact number: ${doctObj.mobNo}
</div>
</div>
</div>






</body>
</html>