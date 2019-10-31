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
				alert("ID를 입력하세요.");
				frm.ID.focus();
				return false;
			}
			if (frm.PWD.value == '') {
				alert("암호를 입력하세요.");
				frm.PWD.focus();
				return false;
			}
		}
	</script>
	<div align="right">
		<a href="../home/userentry.html"> 회원가입</a>
	</div>
	<c:if test="${param.MSG1 == 'Y' }">
게시글을 등록하려면, 로그인 해야 합니다.<br />
		<form action="login.do" method="post" name="loginFrm"
			onSubmit="return check();">
			아이디 : <input type="text" name="ID" placeholder="아이디를 입력하세요." /><br />
			패스워드 : <input type="password" name="PWD" placeholder="암호를 입력하세요." /><br />
			<input type="submit" value="로그인" />
		</form>

	</c:if>
	<c:if test="${param.RESULT == 'nologin' }">
구매하시려면, 로그인 해야 합니다.<br />
		<form action="cartLogin.do" method="post" name="loginFrm"
			onSubmit="return check();">
			아이디 : <input type="text" name="ID" placeholder="아이디를 입력하세요." /><br />
			패스워드 : <input type="password" name="PWD" placeholder="암호를 입력하세요." /><br />
			<input type="submit" value="로그인" />
		</form>
	</c:if>
	<c:if test="${param.RESULT == null }">
		<form:form modelAttribute="guest" action="../login/frame.html"
			method="post">
아이디 : <form:input path="user_id" size="12" placeholder="아이디를 입력하세요." />
			<font color="red"><form:errors path="user_id" /> </font>
			<br />
패스워드 : <form:password path="password" size="12" placeholder="암호를 입력하세요." />
			<font color="red"><form:errors path="password" /> </font>
			<br />
			<input type="submit" value="로그인" />
		</form:form>
	</c:if>
	<input type="button" value="임시 암호 받기" />
</body>
</html>










