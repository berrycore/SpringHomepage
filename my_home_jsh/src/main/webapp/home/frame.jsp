<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
			prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/menu.js"></script>
<script type="text/javascript">
function workingClock(){
	var days=["일","월","화","수","목","금","토"];
	var today = new Date();
	var year = today.getFullYear();
	var month = today.getMonth() + 1;
	if(month < 10) month = "0"+month;
	var date = today.getDate();
	if(date < 10) date = "0"+date;
	var index = today.getDay();
	var day = days[index];
	var hour = today.getHours();
	var min = today.getMinutes();
	if(min < 10) min = "0"+min;
	var sec = today.getSeconds();
	if(sec < 10) sec = "0"+sec;
	var str=year+"-"+month+"-"+date+" "+day+" "+hour+
		":"+min+":"+sec;
	document.getElementById("clock").innerHTML=str;
}
function startClock(){
	setInterval(workingClock, 500);
}
</script>
</head>
<body onload="startClock()">
<table align="center" 
	style="width:100%; background-color:orange;">
<tr><td><h2 align="center">MY HOME에 오신것을 환영합니다.</h2></td></tr>
</table>
<table style=
	"border:1px solid blue; vertical-align:top;">
<tr><td style="width:190px; height:300px; 
	border:1px solid blue; vertical-align:top;">
	<fieldset>
	<c:choose>
		<c:when test="${sessionScope.loginUser != null }">
			<jsp:include page="logout.jsp"/>
		</c:when>
		<c:when test="${HEADER != null}">
			<jsp:include page="${HEADER }"/>
		</c:when>
		<c:otherwise>
			<jsp:include page="../login/login.html"/>
		</c:otherwise>
	</c:choose>
	</fieldset>
<div class="menu"><a href="../home/intro.html?BODY=intro.jsp">자기소개</a></div>
<div class="menu"><a href="">공지사항 쓰기</a></div>
<div class="menu"><a href="">공지사항 보기</a></div>
<div class="menu"><a href="../home/bbsTemplate.html">게시글 쓰기</a></div>
<div class="menu"><a href="../read/read.html">게시글 보기</a></div>
<div class="menu"><a href="../product/open.html">상품정보 등록</a></div>
<div class="menu"><a href="../read/product.html">상품정보 보기</a></div>
<div class="menu"><a href="../cart/show.html">장바구니 보기</a></div>
<div class="menu"><a href="../write/writeForm.html">이미지 게시판 작성</a></div>
<div class="menu"><a href="../write/writeList.html">이미지 게시판 목록</a></div>
</td>
	<td style="width:650px;border:1px solid blue;">
	<c:choose>
		<c:when test="${BODY != null }">
			<jsp:include page="${BODY }"/>
		</c:when>
		<c:otherwise>
		BODY가 없다.
		</c:otherwise>	
	</c:choose>
	</td>
</tr>
</table>
<div id="clock"></div>
<div align="center" style="font-size:20px;background-color:green;">
2019. Copyright. 타이거</div>
</body>
</html>












