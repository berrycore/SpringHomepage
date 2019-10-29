<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags"
	prefix="spring" %>	    
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.btn { background-image:url(btn.gif);}
</style>
<script type="text/javascript">
function formCheck(fm){
	if(fm.idchecked.value == ''){
		alert("ID�ߺ� �˻縦 ���ּ���.");
		return false;
	}
	if(fm.user_name.value == ''){
		alert("�̸��� �Է��ϼ���."); 
		fm.user_name.focus();		return false;
	}
	if(fm.user_id.value == ''){
		alert("������ �Է��ϼ���."); 
		fm.user_id.focus();		return false;
	}
	if(fm.password.value == ''){
		alert("��ȣ�� �Է��ϼ���.");
		fm.password.focus(); return false;
	}
	if(fm.password.value != fm.CONFIRM.value){
		alert("��ȣ�� ��ġ���� �ʽ��ϴ�.");
		fm.password.focus(); return false;
	}
	if( !fm.gender[0].checked && !fm.gender[1].checked ){
		alert("������ �����ϼ���.");
		fm.gender[0].focus();	return false;
	}
	if(fm.email.value == ''){
		alert("�̸����� �Է��ϼ���.");
		fm.email.focus();	return false;
	}
	if(fm.job.selectedIndex < 1){
		alert("������ �����ϼ���.");
		fm.job.focus();		return false;
	}
	if( confirm("�Է��� ������ �½��ϱ�?")){
		return true;
	}else {
		return false;
	}
}
function idCheck(){
	if(document.frm.user_id.value == ''){
		alert("���̵� �Է��ϼ���.");
		document.frm.user_id.focus();	return;
	}
	var url="../idcheck/idcheck.html?ID="+document.frm.user_id.value;
	window.open(url,"_blank","width=450,height=200");
}
</script>
</head>
<body>
<h2 align="center">�������� �Է�</h2>
<form:form action="../entry/entry.html" 
	modelAttribute="user" method="post" 
	name="frm"	onSubmit="return formCheck(this)">
<input type="hidden" name="idchecked" id="idchecked"/>
�̸�: <form:input path="user_name"/><br/>
���̵�: <form:input path="user_id" />
<input type="button" value="�ߺ� �˻�" 
		onClick="idCheck()"/><br/>
�н�����: <form:password path="password"/><br/>
�н����� Ȯ��: <input type="password" name="CONFIRM"/><br/>
����: ��<form:radiobutton path="gender" value="M"/>
��<form:radiobutton path="gender" value="F"/><br/><br/>
����: <form:input path="email"/><br/>
����: <form:select path="job">
<form:option value="--�����ϼ���--"/>
<form:option value="ȸ���"/>
<form:option value="�л�"/><form:option value="��Ÿ"/>
</form:select><br/><br/>
<input type="submit" value="Ȯ��" class="btn"/>
<input type="reset" value="���"/>
</form:form>
</body>
</html>













