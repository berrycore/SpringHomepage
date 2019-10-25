<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/my.css">
<script type="text/javascript" src="js/clock.js"></script>
<meta charset="UTF-8">
<title>JSP Study</title>
</head>
<body onload="startClock()">
<table class="blueTable">
	<thead>
		<tr>
			<td style="width: 100%; height: 50px; color: black; background: white;" >
				
				Let`s study JSP! <div id="clock"></div>
				
			</td>
		</tr>
		<tr>
			<td style="color: black;"> Welcome ~~ </td>
		</tr>
	</thead>
</table>
<table class="blueTable">
	<tr>
		<td style="vertical-align: top; width: 100px;">
			<c:choose>
				<c:when test="${sessionScope.LOGIN_ID == null}">
					<jsp:include page="login.jsp" />	
				</c:when>
				<c:otherwise>
					<jsp:include page="logout.jsp" />
				</c:otherwise>
			</c:choose>
			
			<a href="ViewNoticeList.do">[공지사항 보기]</a><br/>
			<a href="frame.jsp?BODY=noticeWrite.jsp">[공지사항 쓰기]</a><br/>
			<a href="ViewArticleList.do">게시글 보기</a><br/>
			<a href="frame.jsp?BODY=bbsWrite.jsp">게시글 작성</a><br/>
			===구분선===<br/>
			<a href="frame.jsp?BODY=userentry.jsp">가입하기</a><br/>
			<a href="frame.jsp?BODY=itemInput.jsp">상품정보 등록</a><br/>
<!-- 			<a href="frame.jsp?BODY=itemList.jsp">상품정보 보기</a><br/> -->
			<a href="ItemList.do">상품정보 보기</a><br/>
			<a href="CartList.do">장바구니 보기</a><br/>
			<a href="WriteForm.do">이미지 게시판(작성)</a><br/>
			<a href="ImageList.do">이미지 게시판(목록)</a><br/>
			
			===구분선===<br/>
			<a href="js/javascript.html">JavaScript</a><br/>
<!-- 			<a href="frame.jsp?BODY=intro.jsp">자기소개</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=wordCount.jsp">단어수 세기</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=fmtDate.jsp">fmt Date 예제</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=fmtNumber.jsp">fmt Number 예제</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=fmtSetLocale.jsp">fmt setLocale 국제/지역/언어 예제</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=fmtTimeZone.jsp">fmt timeZone 예제</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=fmtTimeZone2.jsp">TimeZone</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=fmtBundle.jsp?">properties(ko/en/ja)</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=function.jsp">JSTL(function)</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=jstl_3rdparty.jsp">JSTL(3rd party)</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=jstl_custom.jsp">JSTL(Custom)</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=jstl_custom2.jsp">JSTL(Custom)</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=actionTag.jsp">Action tag</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=actionTag2.jsp">Action tag2</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=actionTagCalc.jsp">Action tag(scriptless)</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=actionTagGooGooDan.jsp">Action tag(GooGooDan)</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=simpleTagClass.jsp">SimpleTag</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=gugudanTag.jsp">GuGuDanTag</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=exampleTag.jsp">exampleTag(scriptless)</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=replaceTag.jsp">replaceTag(StringWriter)</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=translateTag.jsp">translateTag</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=maxTag.jsp">MaxTag</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=ListRowTag.jsp">ListRowTag(태그 안에 태그)</a><br/> -->
<!-- 			<a href="frame.jsp?BODY=ListRowTag2.jsp">ListRowTag2(도전과제)</a><br/> -->
		</td>
		<td style="width: 800px; height:400px; border-style: solid;">
			<c:choose>
				<c:when test="${param.BODY != null }">
					<jsp:include page="${param.BODY }" />
				</c:when>
				<c:otherwise>
					BODY 가 없다
				</c:otherwise>
			</c:choose>
		</td>
	</tr>
</table>
<div align="center" style="font-size:20px;">
${ initParam.ManagerName } / ${ initParam["ManagerEmail"] }
</div>
</body>
</html>