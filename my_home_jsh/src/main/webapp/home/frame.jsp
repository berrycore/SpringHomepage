<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
			prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function workingClock(){
	var days=["��","��","ȭ","��","��","��","��"];
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
<tr><td><h2 align="center">MY HOME�� ���Ű��� ȯ���մϴ�.</h2></td></tr>
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
<a href="../home/intro.html?BODY=intro.jsp">�ڱ�Ұ�</a><br/>
<a href="">�������� ����</a><br/>
<a href="">�������� ����</a><br/>
<a href="../home/bbsTemplate.html">�Խñ� ����</a><br/>
<a href="../read/read.html">�Խñ� ����</a><br/>
<a href="../product/open.html">��ǰ���� ���</a><br/>
<a href="../read/product.html">��ǰ���� ����</a><br/>
<a href="../cart/show.html">��ٱ��� ����</a><br/>
<a href="../write/writeForm.html">�̹��� �Խ��� �ۼ�</a><br/>
<a href="../write/writeList.html">�̹��� �Խ��� ���</a>
</td>
	<td style="width:650px;border:1px solid blue;">
	<c:choose>
		<c:when test="${BODY != null }">
			<jsp:include page="${BODY }"/>
		</c:when>
		<c:otherwise>
		BODY�� ����.
		</c:otherwise>	
	</c:choose>
	</td>
</tr>
</table>
<div id="clock"></div>
<div align="center" style="font-size:20px;background-color:green;">
2019. Copyright. Ÿ�̰�</div>
</body>
</html>












