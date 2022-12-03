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
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div class="chartjs-size-monitor">
					<div class="chartjs-size-monitor-expand">
						<div class=""></div>
					</div>
					<div class="chartjs-size-monitor-shrink">
						<div class=""></div>
					</div>
				</div>
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">Dashboard</h1>
				</div>
				<canvas class="my-4 w-100 chartjs-render-monitor" id="myChart"
					width="1000" height="422"
					style="display: block; width: 1000px; height: 422px;"></canvas>

				<h2>Section title</h2>
				<div class="table-responsive w-75">
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th scope="col">Name</th>
								<th scope="col">Description</th>
								<th scope="col">Price</th>
								<th scope="col">Src</th>
								<th scope="col">Type</th>
								<th scope="col">Brand</th>
								<th scope="col">Quantity</th>
								<th scope="col">Tool</th>
							</tr>
						</thead>
						<c:forEach var="item" items="${products}">
							<tbody>
								<tr>
									<td>${item.name }</td>
									<td>${item.description }</td>
									<td>${item.price }</td>
									<td>${item.src }</td>
									<td>${item.type }</td>
									<td>${item.brand }</td>
									<td>${item.quantity }</td>
									<td><a
										href="<c:url value='/admin/edit-product.jsp?id=${item.id}'/>">Edit</a>
										<a
										href="<c:url value='/admin/delete-product?id=${item.id}'/>">Delete</a></td>
								</tr>
							</tbody>

						</c:forEach>
					</table>

				</div>
			</main>
		</div>
	</div>
	<script type="text/javascript"
		src="/PRJ321_AS1/common/assets/bootstrap5.0.2/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript"
		src="/PRJ321_AS1/common/assets/admin/dashboard.js"></script>

</body>




</html>