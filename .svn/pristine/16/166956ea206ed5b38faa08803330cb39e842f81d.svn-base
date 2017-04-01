<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/reset.css" />
		<style type="text/css">
			.sub-content{
				width: 95%;
				height: 100%;
			    margin: 30px auto 0 auto;
			    background: #fff;
			    padding-left: 20px;
			}
			.sub-content .title{
			    margin: 4px 20px;
			    padding-top: 15px;
			    padding-left: 20px;
			    padding-bottom: 10px;
			    border-bottom: 1px solid #d3d3d3;
			    font-size: 18px;
			    color: #007bc4;
			}
			div.sub-content h4 {
				text-align: center;
				padding-left: 20px;
			}
			.sub-content form h5{
				display: block;
			    font-weight: normal;
			    font-size: 16px;
			    color: #454545;
			    padding: 20px 0 10px;
			}
			.sub-content form div input{
				width: 60%;
			    border: 1px solid #d8d8d8;
			    padding: 10px 10px;
			    height: 17px;
			}
			.sub-content form div input.submit{
				margin-top: 60px;
			    width: 117px;
			    height: 42px;
			    background: #00843e;
			    color: #fff;
			    font-size: 16px;
			}
			.sub-content form div input.submit:hover { background: #0CCEA2;}
		</style>
	</head>
	<body>
		<div class="sub-content">
			<h2 class="title">更新用户信息</h2>
			<h4>${tip }</h4>
			<s:form action="adminUpdateUser">
				<h5>账号ID</h5>
				<div>
					<s:textfield name="user.id" value="%{#request.user.id}" readonly="true" />
				</div>
				<h5>账号名称</h5>
				<div>
					<s:textfield name="user.name" value="%{#request.user.name}"/>
				</div>
				<h5>账号邮箱</h5>
				<div>
					<s:textfield name="user.email" value="%{#request.user.email}" readonly="true" />
				</div>
				<h5>账号密码</h5>
				<div>
					<s:password name="user.pwd"/>
				</div>
				<h5>账号余额</h5>
				<div>
					<s:textfield name="user.balance" value="%{#request.user.balance}"/>
				</div>
				<div>
					<s:submit value="修改" class="submit" />
				</div>
			</s:form>
		</div>
	</body>
</html>
