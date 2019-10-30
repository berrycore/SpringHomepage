<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3 align="center">게시판 글쓰기</h3>
	<form:form modelAttribute="bbs" action="../home/write.html"
		method="post">
		<h4>
			제목
			<form:input path="title" placeholder="글을 올리려면 작성해야 합니다." />
		</h4>
		<font color="red"><form:errors path="title" /></font>
		<br />
		<form:textarea rows="5" cols="30" path="content"
			placeholder="글 내용을 입력하세요."></form:textarea>
		<br />
		<font color="red"><form:errors path="content" /></font>
		<input type="submit" value="글 올리기" />&nbsp;
<input type="reset" value="취 소" />
	</form:form>
</body>
</html>










