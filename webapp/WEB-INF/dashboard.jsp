<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>dashboard</title>
</head>
<body>
<div style="background-image:url('https://wallpaperaccess.com/full/6897524.jpg'); height: 800px">
	<div class="Container">
		<div class="d-flex justify-content-around">
			<h1>hi <c:out value="${user.userName}" />! welcome to chirpit.</h1>
		</div>
			<div>
				<a href="/myChirps">your profile</a>
				<a href="/logout">logout</a>
			</div>
			<div class="form-group">
				<form:form action="/createChirp" method="post" modelAttribute="chirp">
					<form:input type="hidden" path="user" value="${user.id}"  />
						<p>
						<form:label path="newChirp">post new chirp: </form:label>
						<form:errors path="newChirp" class="text-danger" />
						<form:input path="newChirp" class="form-control" />
						</p>
						<input type="submit">
				</form:form>
			</div>
			<div>
				<h3>latest chirps:</h3>
			</div>
			<div>
				<c:forEach items="${allChirps}" var="chirp">
					<p>
					<a href="${chirp.getUser().id}/memberPage"><c:out value="${chirp.user.getUserName()}" /></a>:
					<c:out value="${chirp.newChirp}" />
					</p>
				</c:forEach>
			</div>
	</div>
</div>
</body>
</html>