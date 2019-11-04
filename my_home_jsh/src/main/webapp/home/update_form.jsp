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
	<script type="text/javascript">
		function validate(form) {
			if (form.title.value == '') {
				alert("������ �Է��ϼ���.");
				return false;
			}
			if (form.name.value == '') {
				alert("�ۼ��ڸ� �Է��ϼ���.");
				return false;
			}
			if (form.password.value == '') {
				alert("��ȣ�� �Է��ϼ���.");
				return false;
			}
			if (form.content.value == '') {
				alert("�� ������ �Է��ϼ���.");
				return false;
			}
			var result = confirm("������ �����Ͻðڽ��ϱ�?");
			if (result == false)
				return false;
		}
	</script>
	<form:form modelAttribute="writing" action="../write/updateDo.html" method="post" enctype="multipart/form-data"
		onSubmit="return validate(this)">
		<form:hidden path="writing_id" value="${writing.writing_id }" />
		<table border="1">
			<tr>
				<th>������</th>
				<td><form:input path="title" size="20" value="${writing.title }" /></td>
			</tr>
			<tr>
				<th>�ۼ���</th>
				<td><form:input path="writer_name" size="20" value="${writing.writer_name }" /></td>
			</tr>
			<tr>
				<th>�̸���</th>
				<td><form:input path="email" size="30" value="${writing.email }" /></td>
			</tr>
			<tr>
				<th>�� ȣ</th>
				<td><form:password path="password" name="password" size="20" /></td>
			</tr>
			<tr>
				<th>�̹���</th>
				<td><input type="file" name="image" /><br />
				<img alt="" width="350" border="0" src="${pageContext.request.contextPath}/upload/${writing.image_name }"></td>
			</tr>
			<tr>
				<th>�۳���</th>
				<td><form:textarea rows="8" cols="40" path="content" value="${writing.content}"></form:textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="�� ��" /> 
					<input type="button" value="�� ��" onClick="javascript:history.go(-1)" />
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>