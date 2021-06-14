<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản phẩm</title>
<link rel="stylesheet" href="/css/homeuser.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<script src="https://use.fontawesome.com/036b4f2931.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">ADMIN:</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse nav" id="navbarNav">
				<ul class="navbar-nav ">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="${ pageContext.request.contextPath }/admin/user/"> User</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${ pageContext.request.contextPath }/admin/product/">Sản phẩm</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${ pageContext.request.contextPath }/admin/productype/">Loại sản phẩm</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${ pageContext.request.contextPath }/admin/order/">Order</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${ pageContext.request.contextPath }/logout/">Đăng xuất</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<h2 class="hehehi">
			Quản lí sản phẩm
		</h2>
		<a class="btn btn-outline-danger" href="${ pageContext.request.contextPath }/admin/product/add">
			Thêm sản phẩm
		</a>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Sản phẩm</th>
					<th scope="col">Giá</th>
					<th scope="col">Ngày tạo</th>
					<th scope="col">Trạng thái</th>
					<th scope="col">Ảnh</th>
					<th scope="col">Loại sản phẩm</th>
					<th colspan="2">Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ listProduct }" var="listProduct">
					<tr>
						<th>${ listProduct.id }</th>
						<td>${ listProduct.name }</td>
						<td>${ listProduct.price }</td>
						<td>${ listProduct.createdate }</td>
						<td>${ listProduct.available }</td>
						<td><img height="30" src="/storage/${ listProduct.image }"></td>
						<td>${ listProduct.productype.id }</td>
						<td>
							<a class="icon" href="${ pageContext.request.contextPath }/admin/product/delete/${ listProduct.id }">
								<i class="fa fa-trash" aria-hidden="true"></i>
							</a>
						</td>
						<td>
							<a class="icon" href="${ pageContext.request.contextPath }/admin/product/edit/${ listProduct.id }">
								<i class="fa fa-pencil" aria-hidden="true"></i>
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>