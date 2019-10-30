<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function idOK() {
		opener.document.frm.user_id.value = document.frm.ID.value;
		opener.document.frm.idchecked.value = "YES";
		self.close();
	}
</script>
</head>
<body>
	<h2 align="center">아이디 중복 확인</h2>
	<form action="../idcheck/idcheck.html" name="frm">
		아이디: <input type="text" name="ID" value="${ID }" /> <input
			type="submit" value="중복검사" /><br />
		<c:if test="${DUP == 'YES'}">
			<script type="text/javascript">
				opener.document.frm.user_id.value = '';
				opener.document.frm.idchecked.value = '';
			</script>
${ID }는 이미 사용중입니다.
</c:if>
		<c:if test="${DUP != 'YES'}">
${ID }는 사용 가능합니다.
<input type="button" value="사용" onClick="idOK()" />
		</c:if>
	</form>
</body>
</html>













