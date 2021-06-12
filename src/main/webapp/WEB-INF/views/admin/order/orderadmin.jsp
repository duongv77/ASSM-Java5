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
					<th colspan="3">Thao tác</th>
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
							<a class="icon" href="${ pageContext.request.contextPath }/admin/product/delete/${ listProduct.id }">
								<i class="fa fa-trash" aria-hidden="true"></i>
							</a>
						</td>
						<td>
							<a class="icon" href="${ pageContext.request.contextPath }/admin/product/edit/${ listProduct.id }">
								<i class="fa fa-pencil" aria-hidden="true"></i>
							</a>
						</td>
						<td>
							<a class="icon" href="${ pageContext.request.contextPath }/admin/product/edit/${ listProduct.id }">
								<i class="fa fa-eye" aria-hidden="true"></i>
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>