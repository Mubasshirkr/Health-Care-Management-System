<%@page import="com.entity.Adoctor"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.AdoctorDao"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<meta charset="UTF-8">
<title>Appointments</title>
</head>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<body>
	<%@include file="../Component/allCSSandJS.jsp" %>
	<%@include file="../Doctor/doctorNav.jsp" %>
	
	<c:if test="${empty doctObj}">
		<c:redirect url="doctorLogin.jsp"></c:redirect>
	</c:if>
	
	<div class="col-md-12">
		<div class="card paint-card">
			<div class="card-body">
				<p class="fs-3 text-center">Patient Details</p>
				
				<c:if test="${not empty errorMsg }">
					<p class="fs-4 text-center text-success">${errorMsg}</p>
				<c:remove var="errorMsg" scope="session"/>
				</c:if>
				
				<c:if test="${not empty succMsg }">
					<p class="fs-4 text-center text-success">${succMsg}</p>
				<c:remove var="succMsg" scope="session"/>
				</c:if>
				
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Age</th>
							<th scope="col">Appointment Date</th>
							<th scope="col">Email</th>
							<th scope="col">Mob No</th>
							<th scope="col">Disease</th>
							<th scope="col">Address</th>
							<th scope="col">Status</th>
							<th scope="col">Action</th>
					</tr>
					</thead>
					
					<tbody>
						<%
						Adoctor d= (Adoctor) session.getAttribute("doctObj");
						AppointmentDAO dao = new AppointmentDAO(DBconnect.getConn());
						List<Appointment> list = dao.getAllAppointmentByLoginDoctor(d.getId());
						for (Appointment ap : list) {
						%>
						<tr>
							<th><%=ap.getFullName()%></th>
							<td><%=ap.getGender() %></td>
							<td><%=ap.getAge() %></td>
							<td><%=ap.getAppoinDate() %></td>
							<td><%=ap.getEmail() %></td>
							<td><%=ap.getPhNo() %></td>
							<td><%=ap.getDiseases() %></td>		
							<td><%=ap.getAddress() %></td>
							<td><%=ap.getStatus() %></td>
							<td>
							
							
							<% if("Panding".equals(ap.getStatus()))
							{%>
								<a href="comment.jsp?id=<%=ap.getId() %>" class="btn btn-success btn-sm">Comment</a>
							<%}else{%>
								<a href="#" class="btn btn-success btn-sm disabled">Comment</a>
								<%}%>
								
							</td>
						</tr>
						<%
						}
						%>


					</tbody>
				</table>

			</div>
		</div>
	</div>
	
</body>
</html>