<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${RESULT == 'nocart' }">
			<h3 align="center">상품을 담으려면 로그인을 해야 합니다.</h3>
		</c:when>
	</c:choose>
	<form:form modelAttribute="user" action="../cart/login.html"
		method="post">
아이디 : <form:input path="user_id" size="12" />
		<font color="red"><form:errors path="user_id" /></font>
		<br />
패스워드 : <form:password path="password" size="12" />
		<font color="red"><form:errors path="password" /></font>
		<br />
		<input type="submit" value="로그인" />
	</form:form>
</body>
</html>












