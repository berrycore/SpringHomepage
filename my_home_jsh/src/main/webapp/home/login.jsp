<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/my.css">
<title>login.jsp</title>
</head>
<body>
<!-- <form action="sessionLogin.jsp" method="post"> -->
<!-- ID : <br/><input type="text" name="ID" size="20" placeholder="아이디를 입력하시오"/><br/> -->
<!-- PW : <br/><input type="password" name="PWD" size="20" placeholder="패스워드를 입력하시오" /><br/> -->
<!-- <input type="submit" value="Login" /> -->
<!-- </form> -->

	<script type="text/javascript">
		function getRandomPassword(){
			window.open(
					'./lesson09/randomPassword.jsp',
					'rand',
					'width=500,height=300'
				);
		} 
	</script>
	<script type="text/javascript">
		function loginCheck() {
			var frm = document.loginFrm;
			if(frm.ID.value == ''){
				alert("아이디를 입력하세요");
				frm.ID.focus();
				return false;
			}
			if(frm.PWD.value == ''){
				alert("패스워드를 입력하세요");
				frm.PWD.focus();
				return false;
			}
		}
	</script>

<c:if test="${param.MSG1 == 'Y' }">
	게시글을 등록하려면, 로그인을 해야 합니다.<br/>
	<form name="loginFrm" action="login.do" method="post" onsubmit="return loginCheck();">
		<table class="blueTable">
			<thead>
				<tr>
					<td colspan="2">Login</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>ID</td>
					<td><input type="text" name="ID" size="20" placeholder="아이디를 입력하시오"/></td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="password" name="PWD" size="20" placeholder="패스워드를 입력하시오" /></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<input type="submit" value="Login"/>
						<input type="button" value="임시암호받기" onclick="getRandomPassword();" />
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</c:if>
<c:if test="${param.RESULT == 'nologin' }">
	구매하시려면 로그인 해야 합니다<br/>
	<form name="loginFrm" action="CartLogin.do" method="post" onsubmit="return loginCheck();">
		<table class="blueTable">
			<thead>
				<tr>
					<td colspan="2">Login</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>ID</td>
					<td><input type="text" name="ID" size="20" placeholder="아이디를 입력하시오"/></td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="password" name="PWD" size="20" placeholder="패스워드를 입력하시오" /></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<input type="submit" value="Login"/>
						<input type="button" value="임시암호받기" onclick="getRandomPassword();" />
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</c:if>
<c:if test="${param.RESULT == null }">
	<form name="loginFrm" action="login.do" method="post" onsubmit="return loginCheck();">
		<table class="blueTable">
			<thead>
				<tr>
					<td colspan="2">Login</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>ID</td>
					<td><input type="text" name="ID" size="20" placeholder="아이디를 입력하시오"/></td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="password" name="PWD" size="20" placeholder="패스워드를 입력하시오" /></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<input type="submit" value="Login"/>
						<input type="button" value="임시암호받기" onclick="getRandomPassword();" />
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</c:if>
</body>
</html>