<%@include file="/common/taglib.jsp"%>
<div
	class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center ">
	<div class="col-md-5 p-lg-5 mx-auto my-5">
		<h1 class="display-4 fw-normal">Punny headline</h1>
		<p class="lead fw-normal">And an even wittier subheading to boot.
			Jumpstart your marketing efforts with this example based on Apple’s
			marketing pages.</p>
		<a class="btn btn-outline-secondary" href="#">Coming soon</a>
	</div>
	<div class="product-device shadow-sm d-none d-md-block"></div>
	<div
		class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
</div>
<!-- Related items section-->
<section class="py-5 bg-light">
	<div class="container px-4 px-lg-5 mt-5">
		<h2 class="fw-bolder mb-4">Related products</h2>
		<div
			class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
			<c:forEach var="item" items="${products }">
				<div class="col mb-5">
					<div class="card h-100">
						<a class="text-decoration-none"
							href="<c:url value='/detail?id=${item.id }'/>"> <img
							class="card-img-top py-1" src="${item.src }" alt="..." />
						</a>
						<div class="card-body p-4">
							<div class="text-center">
								<h5 class="fw-bolder ">${item.name }</h5>
								<p class="red">$${item.price }</p>
							</div>
						</div>

						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
							</div>
						</div>
					</div>
				</div>


			</c:forEach>

		</div>
	</div>
</section>