<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3 align="center">�Խ��� �۾���</h3>
	<form:form modelAttribute="bbs" action="../home/write.html"
		method="post">
		<h4>
			����
			<form:input path="title" placeholder="���� �ø����� �ۼ��ؾ� �մϴ�." />
		</h4>
		<font color="red"><form:errors path="title" /></font>
		<br />
		<form:textarea rows="5" cols="30" path="content"
			placeholder="�� ������ �Է��ϼ���."></form:textarea>
		<br />
		<font color="red"><form:errors path="content" /></font>
		<input type="submit" value="�� �ø���" />&nbsp;
<input type="reset" value="�� ��" />
	</form:form>
</body>
</html>










