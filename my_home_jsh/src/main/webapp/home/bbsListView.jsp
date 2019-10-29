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
<h3 align="center">게시글 목록</h3>
<table border="1">
	<tr><th width="60">글번호</th>
	<th width="300">글제목</th>
	<th width="80">작성자</th>
	<th width="110">작성일</th></tr>
	<c:forEach items="${BBS_LIST }" var="cnt">
	<tr><td>${cnt.seqno }</td>
	<td>${cnt.title }</td>
	<td>${cnt.id }</td><td>${cnt.bbs_date }</td>
	</tr>
	</c:forEach>
</table>
<c:forEach var="page" begin="1" 
					end="${COUNT}">
<a href="BBSReadServlet?PAGE=${page }">${page }</a>
</c:forEach>
</body>
</html>










