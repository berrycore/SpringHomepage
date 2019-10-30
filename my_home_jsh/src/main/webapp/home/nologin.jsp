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
		<c:when test="${RESULT == 'nobody' }">
			<h3 align="center">���� �ø����� �α��� �ؾ� �մϴ�.</h3>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${ITEM == 'nobody' }">
			<h3 align="center">��ǰ�� ����Ϸ��� �α����� �ؾ� �մϴ�</h3>
		</c:when>
	</c:choose>
	
	<form:form modelAttribute="user" method="post"
		action="../login/frame.html">
���̵� : <form:input path="user_id" size="12" />
		<font color="red"><form:errors path="user_id" /></font>
�н����� : <form:password path="password" size="12" />
		<font color="red"><form:errors path="password" /></font>
		<br />
		<input type="submit" value="�α���" />
	</form:form>
	<div align="right">
		<a href="../home/userentry.html"> �����ϱ�</a>
	</div>
</body>
</html>













