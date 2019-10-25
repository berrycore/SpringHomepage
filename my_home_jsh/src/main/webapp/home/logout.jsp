<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout.jsp</title>
</head>
<body>
<!-- <form action="sessionLogout.jsp"> -->
<%-- Greeting! ${sessionScope.LOGIN_ID } <br/> --%>
<!-- <input type="submit" value="Logout" /><br/> -->
<!-- </form> -->

<form action="logout.do">
Greeting! ${sessionScope.LOGIN_ID } <br/>
<input type="submit" value="Logout" /><br/>
</form>
</body>
</html>