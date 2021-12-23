<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>your profile</title>
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
			<h3>your profile:</h3>
			
				<h4>user name: <c:out value="${user.getUserName()}" /></h4>
				<h4>first name: <c:out value="${user.getFirstName()}" /></h4>
				<h4>last name: <c:out value="${user.getLastName()}" /></h4>
				<h4>email: <c:out value="${user.getEmail()}" /></h4>
				<h5>total number of posts: </h5>
				<h5>total number of likes: </h5>
			
		</div>
		<div>
			<h3><c:out value="${user.getUserName()}" />'s chirps:</h3>
		</div>
		<div>
			<c:forEach items="${chirps}" var="chirp">
			<c:if test="${chirp.getUser().id == user.id}">
				<div>
					<c:out value="${chirp.newChirp}" />
				</div>
				<div>
					<a href="/${chirp.id}/editChirp">edit</a>
				</div>
			</c:if>
			</c:forEach>
		</div>
	</div>
	</div>
</body>
</html>