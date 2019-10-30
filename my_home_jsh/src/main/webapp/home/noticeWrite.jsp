<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeWrite.jsp</title>
</head>
<body>
<script type="text/javascript">
	function dataCheck() {
		var frm = document.noticeFrm;
		if(frm.NOTICE_TITLE.value == ''){
			alert("제목입력하시요");
			frm.NOTICE_TITLE.focus();
			return false;
		}
		if(frm.NOTICE_CONTENT.value == ''){
			alert("내용을 입력하세요");
			frm.NOTICE_CONTENT.focus();
			return false;
		}
		if( confirm("정말로 올리겠습니까?")){
			return true;
		}else {
			return false;
		}
	}
</script>
<h2>공지사항 작성하기</h2>
<form name="noticeFrm" action="NoticeWrite.do" method="post" onsubmit="return dataCheck();">
<table>
	<thead>
		<tr>
			<td>제목</td>
			<td><input type="text" size="34" name="NOTICE_TITLE" /></td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>작성자</td>
			<td>${sessionScope.LOGIN_ID }</td>
		</tr>
		<tr>
			<td>내용</td>
			<td> <textarea rows="10" cols="30" name="NOTICE_CONTENT"></textarea> </td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="2"><input type="submit" value="Write" /></td>
		</tr>
	</tfoot>
</table>
</form>
</body>
</html>