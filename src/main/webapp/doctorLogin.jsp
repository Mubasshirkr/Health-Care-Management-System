<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<meta charset="UTF-8">
<title>Doctor Login</title>
</head>
<body>

	<style> 
	@import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');
	
	* {
		box-sizing: border-box;
	}
	
	body {
		background: #f6f5f7;
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
		font-family: 'Montserrat', sans-serif;
		height: 100vh;
		margin: -20px 0 50px;
	}
	
	h1 {
		font-weight: bold;
		margin: 0;
	}

	
	span {
		font-size: 12px;
	}
	
	a {
		color: #333;
		font-size: 14px;
		text-decoration: none;
		margin: 15px 0;
	}
	
	button {
		border-radius: 20px;
		border: 1px solid #FF4B2B;
		background-color: #FF4B2B;
		color: #FFFFFF;
		font-size: 12px;
		font-weight: bold;
		padding: 12px 45px;
		letter-spacing: 1px;
		text-transform: uppercase;
		transition: transform 80ms ease-in;
	}
	
	button:active {
		transform: scale(0.95);
	}
	
	button:focus {
		outline: none;
	}
	
	button.ghost {
		background-color: transparent;
		border-color: #FFFFFF;
	}
	
	form {
		background-color: #FFFFFF;
		display: flex;
		align-items: center;
		justify-content: center;
		flex-direction: column;
		padding: 0 50px;
		height: 100%;
		text-align: center;
	}
	
	input {
		background-color: #eee;
		border: none;
		padding: 12px 15px;
		margin: 8px 0;
		width: 100%;
	}
	
	.container {
		background-color: #fff;
		border-radius: 10px;
	  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
				0 10px 10px rgba(0,0,0,0.22);
		position: relative;
		overflow: hidden;
		width: 768px;
		max-width: 100%;
		min-height: 550px;
	}
	
	.form-container {
		position: absolute;
		top: 0;
		height: 100%;
		transition: all 0.6s ease-in-out;
	}
	
	.sign-in-container {
		left: 0;
		width: 50%;
		z-index: 2;
	}
	
	.container.right-panel-active .sign-in-container {
		transform: translateX(100%);
	}
	
	.sign-up-container {
		left: 0;
		width: 50%;
		opacity: 0;
		z-index: 1;
	}
	
	
	@keyframes show {
		0%, 49.99% {
			opacity: 0;
			z-index: 1;
		}
		
		50%, 100% {
			opacity: 1;
			z-index: 5;
		}
	}
	
	.overlay-container {
		position: absolute;
		top: 0;
		left: 50%;
		width: 50%;
		height: 100%;
		overflow: hidden;
		transition: transform 0.6s ease-in-out;
		z-index: 100;
	}
	
	.container.right-panel-active .overlay-container{
		transform: translateX(-100%);
	}
	
	.overlay {
		background: #FF416C;
		background: -webkit-linear-gradient(to right, #FF4B2B, #FF416C);
		background: linear-gradient(to right, #FF4B2B, #FF416C);
		background-repeat: no-repeat;
		background-size: cover;
		background-position: 0 0;
		color: #FFFFFF;
		position: relative;
		left: -100%;
		height: 100%;
		width: 200%;
	  	transform: translateX(0);
		transition: transform 0.6s ease-in-out;
	}
	
	.container.right-panel-active .overlay {
	  	transform: translateX(50%);
	}
	
	.overlay-panel {
		position: absolute;
		display: flex;
		align-items: center;
		justify-content: center;
		flex-direction: column;
		padding: 0 40px;
		text-align: center;
		top: 0;
		height: 100%;
		width: 50%;
		transform: translateX(0);
		transition: transform 0.6s ease-in-out;
	}
	
	.overlay-left {
		transform: translateX(-20%);
	}
	
	.container.right-panel-active .overlay-left {
		transform: translateX(0);
	}
	
	.overlay-right {
		right: 0;
		transform: translateX(0);
	}
	
	.container.right-panel-active .overlay-right {
		transform: translateX(20%);
	}
	
	
	footer {
	    background-color: #222;
	    color: #fff;
	    font-size: 14px;
	    bottom: 0;
	    position: fixed;
	    left: 0;
	    right: 0;
	    text-align: center;
	    z-index: 999;
	}
	
	footer p {
	    margin: 10px 0;
	}
	
	footer i {
	    color: red;
	}
	
	footer a {
	    color: #3c97bf;
	    text-decoration: none;
	}
	</style> 
	</head>  
	<body>  
	    
	<div class="container" id="container">
		<div class="form-container sign-in-container">
			<c:if test="${not empty succMsg }">
				<h2 class="text-center text-success fs-3">${succMsg}</h2>
				<c:remove var="succMsg" scope="session"/>
			</c:if>
			
			<c:if test="${empty errorMsg }">
				<h2 class="text-center text-success fs-3">${errorMsg}</h2>
				<c:remove var="errorMsg" scope="session"/>
			</c:if>
			<form action="doctorLogin" method="post">
			<h1>Login Here...</h1>
				<input type="email" placeholder="Email" id="email" name="email" />
				<input type="password" placeholder="Password" id="password" name="password"/>
				<button type="submit">Login</button>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-right">
					<h1>Welcome!</h1>
					<h2>Doctor...</h2>
				</div>
			</div>
		</div>
	</div>
	</body>>
</html>