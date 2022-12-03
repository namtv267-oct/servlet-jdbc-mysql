<%@include file="/common/taglib.jsp"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Item - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="<c:url value='/common/assets/favicon.ico'/>" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="<c:url value='/common/static/css/styles.css'/>"
	rel="stylesheet" />
</head>
<body>
	<%@include file="header.jsp"%>
	<section class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">
					<img class="card-img-top mb-5 mb-md-0" src="${product.src }"
						alt="..." />
				</div>
				<div class="col-md-6">
					<div class="small mb-1 text-uppercase fs-3 fw-bolder">
						<c:out value="${product.type }" />
					</div>
					<h1 class="display-5 fw-bolder">
						<c:out value="${product.name }" />
					</h1>
					<div class="fs-5 mb-5">
						<span class="">$<c:out value="${product.price }" /></span>
					</div>
					<p class="lead">
						<c:out value="${product.description }" />
					</p>
					<div class="d-flex">
						<input class="form-control text-center me-3" id="inputQuantity"
							type="number" value="1" style="max-width: 3rem" />
						<button class="btn btn-outline-dark flex-shrink-0" type="button">
							<i class="bi-cart-fill me-1"></i> Add to cart
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@include file="footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
		
	</script>
	<!-- Core theme JS-->
	<script src="<c:url value='/common/static/js/scripts.js'/>">
		
	</script>
</body>
</html>
