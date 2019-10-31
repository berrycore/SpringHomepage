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
	<h2 align="center">상품정보 등록</h2>
	<form:form action="../product/entry.html" method="post"
		modelAttribute="item">
상품코드: <form:input path="code" maxlength="20" />
		<font color="red"><form:errors path="code" /></font>
		<br />
상품이름: <form:input path="name" maxlength="20" />
		<font color="red"><form:errors path="name" /></font>
		<br />
상품가격: <form:input path="price" maxlength="20" />
		<font color="red"><form:errors path="price" /></font>
		<br />
상품설명: <br />
		<form:textarea rows="5" cols="20" path="info"></form:textarea>
		<br />
원산지: <form:input path="origin" maxlength="20" />
		<br />
		<input type="submit" value="등 록" />
		<input type="reset" value="취 소" />
	</form:form>
</body>
</html>











