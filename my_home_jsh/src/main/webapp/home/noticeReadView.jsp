<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
<table >
	<thead>
		<tr>
			<td>글번호</td>
			<td>${NOTICE.NOTICE_SEQNO }</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${NOTICE.NOTICE_TITLE }</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${NOTICE.NOTICE_WRITER }</td>
		</tr>
		<tr>
			<td>작성일</td>
			<td>${NOTICE.NOTICE_REGIST_DATE }</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<!-- <td colspan="3">${NOTICE.NOTICE_CONTENT }</td>  -->
			<td colspan="3">${NOTICE.NOTICE_CONTENT }</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="3">
				<input type="button" value="목록으로" onClick="location.href='ViewNoticeList.do'">
			</td>
		</tr>
	</tfoot>
</table>
</body>
</html>