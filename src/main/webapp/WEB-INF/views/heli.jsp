<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="${ pageContext.request.contextPath }/hehe/upload" method="POST" enctype="multipart/form-data"> 
		<input type="file" name="uploadimg">
		<button type="submit">OK</button>
	</form>
</body>
</html>