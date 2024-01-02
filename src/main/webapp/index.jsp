<%@page import="com.db.DBconnect" %>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<%@ include file="Component/allCSSandJS.jsp" %>
	
</head>
<html>
<body>
<%@ include file="Component/indexNav.jsp" %>
<style>


body{
	background-image: url('img/hospital.jpg');
}
.maindiv{
	height: 80%;
	width: 950px;
	position: absolute;
	left: 18%;
	top: 15%;
	transform: transform(-50%,-50%);
	background-image: url('img/doc1.jpg');
	background-size: 200% 100%;
	box-shadow: 1px 2px 10px 10px white;
	animation:slider 20s infinite linear;
}
 @keyframes slider{
 	0%{ background-image: url('img/doc1.jpg'); }
 	10%{ background-image: url('img/doc2.jpg'); }
 	30%{ background-image: url('img/doc3.jpg'); }
 	50%{ background-image: url('img/doc4.jpg'); }
 	40%{ background-image: url('img/doc12.jpg'); }
 	50%{ background-image: url('img/doc6.jpg'); }
 	60%{ background-image: url('img/doc11.jpg'); }
 	70%{ background-image: url('img/doc8.jpg'); }
 	80%{ background-image: url('img/doc9.jpg'); }
 	90%{ background-image: url('img/doc10.jpg'); } 	
 }
</style>

	<div class="maindiv">
	
	</div>
	
<div class="mainAbout" id="about">
	
	

</div>
	
</body>
</html>











