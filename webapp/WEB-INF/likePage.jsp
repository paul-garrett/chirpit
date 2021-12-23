<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>post likes</title>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-around">
			<h1>chirpit.</h1>
		</div>
		<div>
			<a href="/home">dashboard</a>
			<a href="/logout">logout</a>
		</div>
		<div>
			<h3><c:out value="${chirp.user.getName()}" /> chirped:  </h3>
		</div>
	</div>
</body>
</html>