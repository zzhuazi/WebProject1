<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8">
		<title>后台登录</title>
		<link rel="stylesheet" href="css/reset.css" />
		
		<style type="text/css">
			
			section {
				width: 1024px;
				height: 600px;
				background: url(img/adminLogin.jpg) no-repeat 100% 100%;
				margin: 60px auto;
				border: 1px solid white;
			}
			#form {
				margin: 260px auto 0px;
				width: 280px;
			}
			#form form{
				height: auto;
			}
			#form form div {
				margin-top: 20px;
			}
			#form form div input{
			    width: 65%;
			    border: 1px solid #d8d8d8;
			    padding: 10px 10px;
			    height: 17px;
			}
			#form form div input.btn-submit{
				display: block;
				margin: 0px auto;
				height: 39px;
			    color: #00843e;
    			border: 1px solid #00843e;
    			background: white;
			}
			#form form div input.btn-submit:hover{
				background: #00843e;
    			color: #fff;
			}
		</style>
	</head>
	<body>
		<section>
			<div id="form">
				<s:form action="adminLogin">
					<s:token></s:token>
					<div>
						<label>账号：<s:textfield type="email" name="admin.email" value="1242440175@qq.com" /></label>
					</div>
					<div>
						<label>密码：<s:password name="admin.pwd"/></label>
					</div>
					<div>
						<s:submit class="btn-submit" />
					</div>
				</s:form>
			</div>
		</section>
	</body>

</html>