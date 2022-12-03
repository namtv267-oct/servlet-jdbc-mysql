<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/common/assets/web/css/styles.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/common/assets/bootstrap5.0.2/css/bootstrap.min.css" />
<body>
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 py-5">
			<c:forEach var="item" items="${products}">
				<div class="col p-3">
					<div class="card" style="width: 350px">
						<img class="card-img-top" src="${ item.src}" alt="Card image">
						<div class="card-body">
							<h4 class="card-title">${item.name}</h4>
							<p class="card-text">${item.description}</p>
							<p class="card-text fs-3 fst-italic text-danger">${item.price}$</p>
							<a href="/PRJ321x-A3/infor-product?id=${item.id}"
								class="btn btn-primary">See Profile</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>
	</div>
	<%@include file="footer.jsp"%>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/common/assets/bootstrap5.0.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
