<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QL Order</title>
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
			Quản lí Order
		</h2>
		<a class="btn btn-outline-danger" href="${ pageContext.request.contextPath }/admin/order/add">
			Thêm order
		</a>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">User order</th>
					<th scope="col">Thời gian order</th>
					<th scope="col">Địa chỉ</th>
					<th scope="col">Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ listOrder }" var="listOrder">
					<tr>
						<th>${ listOrder.id }</th>
						<td>${ listOrder.user.username }</td>
						<td>${ listOrder.createDate }</td>
						<td>${ listOrder.address }</td>
						<td>
							<a class="icon" href="${ pageContext.request.contextPath }/admin/order/delete/${ listOrder.id }">
								<i class="fa fa-trash" aria-hidden="true"></i>
							</a>
						</td>
						<td>
							<a class="icon" href="${ pageContext.request.contextPath }/admin/order/edit/${ listOrder.id }">
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