<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
			prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${sessionScope.loginUser != null}">
	�α��� �Ǿ����ϴ�.<br/>
	ȯ���մϴ�. ${sessionScope.loginUser }��~
	</c:when>
	<c:otherwise>
	�α��� ���� �ʾҽ��ϴ�.<br/>
	������ ��ȣ�� Ȯ���ϼ���.
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${param.CART == 'YES' }">
	<script type="text/javascript">
	self.close();opener.window.location.reload();
	</script>
	</c:when>
</c:choose>
</body>
</html>












