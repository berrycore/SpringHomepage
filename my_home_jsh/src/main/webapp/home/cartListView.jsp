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
	<h3 align="center">��ٱ��� ����</h3>
	<c:choose>
		<c:when test="${CART_LIST == null || SIZE == 'NO'}">
	��ٱ��ϰ� ������ϴ�.
	</c:when>
		<c:otherwise>
			<table border="1">
				<tr>
					<th width="70">��ǰ�ڵ�</th>
					<th width="250">��ǰ�̸�</th>
					<th width="80">��ǰ����</th>
					<th width="50">��ǰ����</th>
					<th width="100">�ݾ�</th>
					<th width="80">����/����</th>
				</tr>
				<c:forEach var="cnt" items="${CART_LIST}">
					<form action="modify-cart" method="post">
						<input type="hidden" name="CODE" value="${cnt.code}" />
						<tr>
							<td>${cnt.code}</td>
							<td>${cnt.name}</td>
							<td><fmt:formatNumber groupingUsed="true">
		${cnt.price}</fmt:formatNumber></td>
							<td><input type="text" name="NUMBER" value="${cnt.num}"
								size="3" /></td>
							<td><fmt:formatNumber groupingUsed="true">
	${cnt.price * cnt.num}
		</fmt:formatNumber></td>
							<td><input type="submit" value="����" name="BTN" /> <input
								type="submit" value="����" name="BTN" /></td>
						</tr>
					</form>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
	<br />
	<form action="" method="post">
		�� �� :
		<fmt:formatNumber groupingUsed="true">
${totalAmount}</fmt:formatNumber>
		<input type="submit" value="�����ϱ�" /> <input type="reset" value="�� ��" />
	</form>
</body>
</html>















