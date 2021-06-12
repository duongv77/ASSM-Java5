<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Sửa</title>
    <link rel="stylesheet" href="/css/homeuser.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/036b4f2931.js"></script>
</head>

<body>
    <div class="container">
        <div class="row">
            <form:form modelAttribute="orderDTO" method="POST"
                action="${ pageContext.request.contextPath }/admin/order/update/${ productype.id }">

                <div class="form-group mt-3 col-7">
                    <label for="address">Địa chỉ</label>
                    <form:input path="address" cssClass="form-control" />
                    <form:errors path="address" element="span" cssClass="text-danger" />
                </div>
                <a href="" type="submit" class="btn btn-outline-success mt-2"> Lưu địa chỉ</a>
            </form:form>
        </div>
    </div>
</body>

</html>