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
		function check() {
			var frm = document.loginFrm;
			if (frm.ID.value == '') {
				alert("ID�� �Է��ϼ���.");
				frm.ID.focus();
				return false;
			}
			if (frm.PWD.value == '') {
				alert("��ȣ�� �Է��ϼ���.");
				frm.PWD.focus();
				return false;
			}
		}
	</script>
	<div align="right">
		<a href="../home/userentry.html"> ȸ������</a>
	</div>
	<c:if test="${param.MSG1 == 'Y' }">
�Խñ��� ����Ϸ���, �α��� �ؾ� �մϴ�.<br />
		<form action="login.do" method="post" name="loginFrm"
			onSubmit="return check();">
			���̵� : <input type="text" name="ID" placeholder="���̵� �Է��ϼ���." /><br />
			�н����� : <input type="password" name="PWD" placeholder="��ȣ�� �Է��ϼ���." /><br />
			<input type="submit" value="�α���" />
		</form>

	</c:if>
	<c:if test="${param.RESULT == 'nologin' }">
�����Ͻ÷���, �α��� �ؾ� �մϴ�.<br />
		<form action="cartLogin.do" method="post" name="loginFrm"
			onSubmit="return check();">
			���̵� : <input type="text" name="ID" placeholder="���̵� �Է��ϼ���." /><br />
			�н����� : <input type="password" name="PWD" placeholder="��ȣ�� �Է��ϼ���." /><br />
			<input type="submit" value="�α���" />
		</form>
	</c:if>
	<c:if test="${param.RESULT == null }">
		<form:form modelAttribute="guest" action="../login/frame.html"
			method="post">
���̵� : <form:input path="user_id" size="12" placeholder="���̵� �Է��ϼ���." />
			<font color="red"><form:errors path="user_id" /> </font>
			<br />
�н����� : <form:password path="password" size="12" placeholder="��ȣ�� �Է��ϼ���." />
			<font color="red"><form:errors path="password" /> </font>
			<br />
			<input type="submit" value="�α���" />
		</form:form>
	</c:if>
	<input type="button" value="�ӽ� ��ȣ �ޱ�" />
</body>
</html>










