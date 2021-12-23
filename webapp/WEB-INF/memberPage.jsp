<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>member page</title>
</head>
<body>
<div style="background-image:url('https://wallpaperaccess.com/full/6897524.jpg'); height: 800px">
	<div class="container">
		<div class="d-flex justify-content-around">
			<h1>chirpit.</h1>
		</div>
		<div>
			<a href="/home">dashboard</a>
			<a href="/logout">logout</a>
		</div>
		<div>
			<h3><c:out value="${member.getUserName()}" />'s chirps:</h3>
				<c:forEach items="${member.chirps}" var="chirp">
					<p>
					<c:out value="${chirp.newChirp}" />
					</p>
				</c:forEach>
			
			<br />
			<h5>total number of posts: </h5>
			<h5>total number of likes: </h5>
		</div>
	</div>
</div>	
</body>
</html>