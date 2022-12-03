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
			<form class="login-form" action="/CRUD/account/login" method="post">
				<input type="email" placeholder="email" name="email" required /> <input
					type="password" placeholder="password" name="password" required />
				<button type="submit">login</button>
				<p class="message">
					Not registered? <a href="<c:url value='/log/register.jsp'/>">Create
						an account</a>
				</p>
			</form>
		</div>
	</div>
	<script type="text/javascript"
		src="<c:url value='/common/assets/log/script.js'/>"></script>
</body>
</html>