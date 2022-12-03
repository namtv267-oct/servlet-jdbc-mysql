<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dash Board Admin</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/common/assets/bootstrap5.0.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/common/assets/admin/dashboard.css">
</head>
<body>
	<%@page import="model.*"%>
<body>
	<header
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#"> </a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<input class="form-control form-control-dark w-100" type="text"
			placeholder="Search" aria-label="Search">
		<div class="navbar-nav">
			<div class="nav-item text-nowrap">
				<a class="nav-link px-3" href="/PRJ321_AS1/logout">Sign out</a>
			</div>
		</div>
	</header>

	<div class="container-fluid">
		<div class="row">
			<%@include file="menu.jsp"%>
			<div class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<form action="/CRUD/admin/create-product" method="post" class="w-75">
					<div class="mb-3 mt-3">
						<label for="name" class="form-label">Name:</label> <input
							type="text" class="form-control" id="name" name="name" required>
					</div>

					<div class="mb-3 mt-3">
						<label for="description" class="form-label">Description:</label> <input
							type="text" class="form-control" id="description"
							name="description" required />
					</div>
					<div class="mb-3 mt-3">
						<label for="price" class="form-label">Price:</label> <input
							type="number" class="form-control" id="price" name="price"
							required>
					</div>
					<div class="mb-3 mt-3">
						<label for="src" class="form-label">Src:</label> <input
							type="text" class="form-control" id="src" name="src" required>
					</div>
					<div class="mb-3 mt-3">
						<input type="hidden" class="form-control" id="type" name="type">
					</div>
					<div class="mb-3 mt-3">
						<input type="hidden" class="form-control" id="brand" name="brand">
					</div>

					<div class="mb-3 mt-3">
						<label for="quantity" class="form-label">Quantity:</label> <input
							type="number" class="form-control" id="quantity" name="quantity"
							required>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="/PRJ321_AS1/common/assets/bootstrap5.0.2/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript"
		src="/PRJ321_AS1/common/assets/admin/dashboard.js"></script>

</body>
</html>