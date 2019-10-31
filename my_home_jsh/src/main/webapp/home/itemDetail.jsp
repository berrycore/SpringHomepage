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
<h2 align="center">상품 상세 정보</h2>
[상품번호] : ${ITEM.code }<br/>
[상품이름] : ${ITEM.name }<br/>
[상품가격] : <fmt:formatNumber groupingUsed="true">
${ITEM.price }</fmt:formatNumber><br/>
[원산지] : ${ITEM.origin }<br/>
***************************************<br/>
<textarea rows="5" cols="20">${ITEM.info }</textarea>
</body>
</html>












