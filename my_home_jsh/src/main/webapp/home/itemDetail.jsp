<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" 
			prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">��ǰ �� ����</h2>
[��ǰ��ȣ] : ${ITEM.code }<br/>
[��ǰ�̸�] : ${ITEM.name }<br/>
[��ǰ����] : <fmt:formatNumber groupingUsed="true">
${ITEM.price }</fmt:formatNumber><br/>
[������] : ${ITEM.origin }<br/>
***************************************<br/>
<textarea rows="5" cols="20">${ITEM.info }</textarea>
</body>
</html>












