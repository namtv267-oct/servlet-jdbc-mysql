<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin</title>
<link href="<c:url value='/common/admin/css/styles.css'/> "
	rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<%@include file="menu.jsp"%>
		</div>
		<div id="layoutSidenav_content">
			<%@include file="body.jsp"%>
			<%@include file="footer.jsp"%>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/common/admin/js/scripts.js'/> "></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script
		src="<c:url value='/common/adminassets/demo/chart-area-demo.js'/> "></script>
	<script
		src="<c:url value='/common/adminassets/demo/chart-bar-demo.js'/> "></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script
		src="<c:url value='/common/admin/js/datatables-simple-demo.js'/> "></script>
</body>
</html>




