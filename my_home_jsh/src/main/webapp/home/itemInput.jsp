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
	<h2 align="center">��ǰ���� ���</h2>
	<form:form action="../product/entry.html" method="post"
		modelAttribute="item">
��ǰ�ڵ�: <form:input path="code" maxlength="20" />
		<font color="red"><form:errors path="code" /></font>
		<br />
��ǰ�̸�: <form:input path="name" maxlength="20" />
		<font color="red"><form:errors path="name" /></font>
		<br />
��ǰ����: <form:input path="price" maxlength="20" />
		<font color="red"><form:errors path="price" /></font>
		<br />
��ǰ����: <br />
		<form:textarea rows="5" cols="20" path="info"></form:textarea>
		<br />
������: <form:input path="origin" maxlength="20" />
		<br />
		<input type="submit" value="�� ��" />
		<input type="reset" value="�� ��" />
	</form:form>
</body>
</html>











