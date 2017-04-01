<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>注册页面</title>
</head>
<body>
	<h1>获取验证码</h1>
	<s:form action="userGetCode">
		<s:token></s:token>
		<s:textfield name="userVo.user.email" label="email" type="email"></s:textfield>
		<s:submit></s:submit>
	</s:form>
	<h1>注册信息</h1>
	<s:form action="userRegister">
		<s:token></s:token>
		<s:textfield name="userVo.user.email" label="email" type="email"></s:textfield>
		<s:password name="userVo.user.pwd" label="password"></s:password>
		<s:textfield name="code" label="验证码:"></s:textfield>
		<s:submit></s:submit>
	</s:form>	
</body>
</html>