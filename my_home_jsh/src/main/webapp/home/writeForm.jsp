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

	<form:form modelAttribute="writing"  action="../write/write.html" method="post" enctype="multipart/form-data">
		<form:hidden path="order_no" value="${writing.order_no + 1 }" />
		<c:if test="${ ! empty writing.group_id }">
			<form:hidden path="groupid" value="${writing.group_id }" />
		</c:if>
		<c:if test="${ ! empty writing.parent_id }">
			<form:hidden path="parentid" value="${param.parent_id }" />
		</c:if>

		<table border="1" width="100%">
			<tr>
				<td>������</td>
				<td><form:input path="title" size="40" value="${title }" />
					<font color="red"><form:errors path="title"/></font></td>
			</tr>
			<tr>
				<td>�г���</td>
				<td><form:input path="writer_name" size="20" /></td>
			</tr>
			<tr>
				<td>�̸���</td>
				<td><form:input path="email" size="20" /></td>
			</tr>
			<tr>
				<td>�� ȣ</td>
				<td><form:password path="password" size="20" />
					<font color="red"><form:errors path="password" /></font></td>
			</tr>
			<tr>
				<td>�̹���</td>
				<td><input type="file" name="image" size="40" /></td>
			</tr>
			<tr>
				<td>�۳���</td>
				<td><form:textarea row="8" cols="40" path="content" ></form:textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="�� ��" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>









