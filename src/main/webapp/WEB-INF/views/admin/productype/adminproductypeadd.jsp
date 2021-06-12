<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm loại sản phẩm</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/036b4f2931.js"></script>
</head>
<body>
    <div class="container">
        <h2>Thêm loại sản phẩm</h2>
        <form class="col-7"
			method="POST"
			action="${ pageContext.request.contextPath }/admin/productype/store">

			<div class="form-group mt-4">
				<label for="name">Loại sản phẩm</label>
			    <input type="text" class="form-control" id="name" name="name" autocomplete="off">
			    <small id="username_error" class="form-text text-danger"></small>
			</div>
			<div class="form-group mt-4">
				<button class="btn btn-primary">Submit</button>
				<button type="reset" class="btn btn-danger">Clear</button>
			</div>
		</form>
    </div>
</body>
</html>