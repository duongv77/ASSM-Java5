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