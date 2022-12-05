<%@include file="/common/taglib.jsp"%>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Dashboard</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item active">Dashboard</li>
		</ol>
		<form class="row w-75" action="/CRUD/admin/create-product"
			method="post">
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">Product
					name: </span> <input type="text" class="form-control"
					placeholder="Product name" aria-label="Username"
					aria-describedby="basic-addon1" name="name">
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">Price: </span> <input
					type="number" class="form-control" placeholder="Price"
					aria-label="Username" aria-describedby="basic-addon1" name="price">
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">Image link:
				</span> <input type="text" class="form-control" placeholder="Link"
					aria-label="Username" aria-describedby="basic-addon1" name="src">
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">Type: </span> <input
					type="text" class="form-control" placeholder="Type"
					aria-label="Username" aria-describedby="basic-addon1" name="type">
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">Brand: </span> <input
					type="text" class="form-control" placeholder="Brand"
					aria-label="Username" aria-describedby="basic-addon1" name="brand">
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">Quantity: </span> <input
					type="number" class="form-control" placeholder="Quantity"
					aria-label="Username" aria-describedby="basic-addon1"
					name="quantity">
			</div>
			<div class="input-group">
				<span class="input-group-text">Description</span>
				<textarea class="form-control" aria-label="With textarea"
					name="description"></textarea>
			</div>

			<button type="submit" class="btn btn-secondary my-3">Submit</button>
		</form>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> Product Table
			</div>
			<div class="card-body">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Price</th>
							<th scope="col">Type</th>
							<th scope="col">Brand</th>
							<th scope="col">Quantity</th>
							<th scope="col">Tools</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${products}">
							<tr>
								<th scope="row"><c:out value="${item.id }" /></th>
								<td><c:out value="${item.name }" /></td>
								<td><c:out value="${item.price }$" /></td>
								<td><c:out value="${item.type }" /></td>
								<td><c:out value="${item.brand }" /></td>
								<td><c:out value="${item.quantity }" /></td>
								<td><a
									href="/CRUD/admin/edit-product?id=<c:out value='${item.id }' />"
									class="px-4"><i class="fa-sharp fa-solid fa-pen-to-square"></i></a><a
									href="/CRUD/admin/delete-product?id=<c:out value='${item.id }' />"
									class="px-4"><i class="fa-solid fa-trash"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</main>