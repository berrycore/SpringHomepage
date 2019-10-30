<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeRead.jsp</title>
</head>
<body>
<h1>[공지사항 목록]</h1>


	<table border="1">
		<thead>
			<tr>
				<td>공지번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${NOTICE_LIST }" var="cnt">
				<tr>
					<td>${cnt.notice_seqno }</td>
					<td><a href="../read/readNoticeDetail.html?SEQNO=${cnt.notice_seqno}">${cnt.notice_title }</a></td>
					<td>${cnt.notice_writer }</td>
					<td>${cnt.notice_regist_date }</td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4">
					<c:forEach var="page" begin="1" end="${COUNT}">
						<a href="../read/readNotice.html?pageNo=${page }">${page }</a>
					</c:forEach>
				</td>
			</tr>
		</tfoot>
	</table>
	

</body>
</html>