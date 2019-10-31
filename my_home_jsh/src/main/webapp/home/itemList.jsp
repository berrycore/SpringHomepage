<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">��ǰ ���</h2>
	<table border="1">
		<tr>
			<td width="40">��ǰ�ڵ�</td>
			<td width="150">��ǰ�̸�</td>
			<td width="100">��ǰ����</td>
			<td width="100">������</td>
			<td></td>
		</tr>
		<c:forEach var="item" items="${ITEM_LIST }">
			<tr>
				<td>${item.code }</td>
				<td><a href="../read/readItem.html?CODE=${item.code }">
						${item.name }</a></td>
				<td><fmt:formatNumber groupingUsed="true">
	${item.price }</fmt:formatNumber></td>
				<td>${item.origin }</td>
				<td><a href="#"
					onClick="window.open('../cart/addCart.html?CODE=${item.code}','cart','width=400,height=250').focus()">
						��ٱ��� ���</a></td>
			</tr>
		</c:forEach>
	</table>
	<c:forEach var="page" begin="1" end="${COUNT}">
		<a href="../read/read.html?pageNo=${page }">${page }</a>
	</c:forEach>

</body>
</html>









