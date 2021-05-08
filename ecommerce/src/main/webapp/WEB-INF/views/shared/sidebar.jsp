<div class="col-lg-3">
	<h1 class="my-4">B2C STORE</h1>
	<div class="list-group">
	<c:forEach items="${categories}" var="category">
			<a class="list-group-item" href="${contextRoot}/show/category/${category.id}/products" id="a_${category.id}">${category.name}</a>
	</c:forEach>
	</div>
</div>