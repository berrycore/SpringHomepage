<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/5-6.css">
<title>update_result_ok.jsp</title>
</head>
<body>
	<c:if test="${ ! empty param.id }">
		<script type="text/javascript">
alert("변경되었습니다."");
location.href="../write/writeList.html?SEQNO="+${param.id};
</script>
	</c:if>
</body>
</html>