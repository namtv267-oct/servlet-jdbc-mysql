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
			<%@include file="/common/taglib.jsp"%>
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">Dashboard</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">Edit product id :<c:out
								value="${product.id }" /></li>
					</ol>
					<form class="row w-75" action="/CRUD/admin/edit-product"
						method="post">
						<input name="id" type="hidden"
							value="<c:out value='${product.id }'/>">
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">Product
								name: </span> <input type="text" class="form-control"
								value="${product.name }" aria-label="Username"
								aria-describedby="basic-addon1" name="name">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">Price: </span> <input
								type="number" class="form-control" value="${product.price }"
								aria-label="Username" aria-describedby="basic-addon1"
								name="price">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">Image
								link: </span> <input type="text" class="form-control"
								value="${product.src }" aria-label="Username"
								aria-describedby="basic-addon1" name="src">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">Type: </span> <input
								type="text" class="form-control" value="${product.type }"
								aria-label="Username" aria-describedby="basic-addon1"
								name="type">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">Brand: </span> <input
								type="text" class="form-control" value="${product.brand }"
								aria-label="Username" aria-describedby="basic-addon1"
								name="brand">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">Quantity:
							</span> <input type="number" class="form-control" value="${product.quantity }"
								aria-label="Username" aria-describedby="basic-addon1"
								name="quantity">
						</div>
						<div class="input-group">
							<span class="input-group-text">Description</span>
							<textarea class="form-control" aria-label="With textarea"
								placeholder="<c:out value='${product.description }'/>"
								name="description"></textarea>
						</div>

						<button type="submit" class="btn btn-secondary my-3">Submit</button>
					</form>
				</div>
			</main>
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




