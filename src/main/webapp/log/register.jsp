<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<c:url value='/common/assets/log/styles.css'/>">
</head>
<body>
	<div class="login-page">
		<div class="form">
			<form class="register-form" action="/CRUD/account/register" method="post">
				<input type="text" placeholder="name" name="name" /> <input
					type="text" placeholder="password" name="password" /> <input
					type="email" placeholder="email address" name="email" />
				<button type="submit">create</button>
				<p class="message">
					Already registered? <a href="<c:url value='/log/login.jsp'/>">Sign
						In</a>
				</p>
			</form>
		</div>
	</div>
	<script type="text/javascript"
		src="<c:url value='/common/assets/log/script.js'/>"></script>
</body>
</html>