<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>登录注册</title>
		<script>
			function addLoadEvents(func) {
				var oldonload = window.onload;
				if(typeof onload != "function") {
					window.onload = func;
				} else {
					window.onload = function() {
						oldonload();
						func();
					}
				}
			}
			addLoadEvents(ChangeDisplay);

			function ChangeDisplay() { //点击显示隐藏。。
				var register = document.getElementById("register");
				var register1 = document.getElementsByClassName("register")[0];
				var login = document.getElementById("login");
				var login1 = document.getElementsByClassName("login")[0];
				login.setAttribute("class", "active");
				register.onclick = function() {
					register1.setAttribute("style", "display:block");
					this.setAttribute("class", "active");
					login.setAttribute("class", "");
					login1.setAttribute("style", "display:none");
					return false;
				}
				login.onclick = function() {
					this.setAttribute("class", "active");
					register.setAttribute("class", "");
					login1.setAttribute("style", "display:block");
					register1.setAttribute("style", "display:none");
					return false;
				}
			}
		</script>
	</head>
	<style>
		* {
			margin: 0px;
			padding: 0px;
		}
		
		body {
			color: #555;
			text-align: center;
			background-color: #f7fafc;
			font-family: 'Helvetica Neue', Helvetica, 'PingFang SC', 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif;
		}
		
		.blur {
			background-image: url(img/bg.jpg);
			width: 100%;
			height: 100%;
			position: absolute;
			background-size: 100% 100%;
			z-index: -1;
			top: 0px;
			-webkit-filter: blur(10px);
		}
		
		#father {
			width: 380px;
			height: 460px;
			margin: 0 auto;
			position: relative;
			text-align: center;
		}
		
		#father #boxx {
			width: 380px;
			height: 500px;
			margin: 0 auto;
			background-color: #D5D5D5;
			filter: alpha(opacity=20);
			-moz-opacity: 0.20;
			opacity: 0.20;
			border-radius: 10px;
			position: absolute;
		}
		
		#father #index_main_box {
			width: 300px;
			position: absolute;
			margin: 0 auto;
			text-align: center;
			left: 40px;
		}
		
		.logo {
			background: rgba(0, 0, 0, 0) url("img/logo1.png") no-repeat scroll 0 0 / contain;
			height: 87px;
			margin: 0 auto;
			width: 205px;
			text-align: center;
		}
		
		.hide-text {
			border: 0 none;
			color: transparent;
			font: 0px/0 a;
			text-shadow: none;
		}
		
		h1,
		h2 {
			margin: 0;
			padding: 0;
		}
		
		h2 {
			color: #F7FAFC;
		}
		
		.register_login {
			margin: 10px 0px 20px;
		}
		
		.register_login a {
			color: #234E63;
			font-size: 18px;
			display: inline-block;
			text-decoration: none;
			font-size: 18px;
			text-align: center;
			margin: 0 10px;
		}
		
		#register,
		#login {}
		
		.register_login a:hover {
			color: #555;
		}
		
		.active {
			color: #0f88eb;
			border-bottom: 2px solid #00843E;
			padding: 5px
		}
		
		.group_input {
			border-radius: 3px;
			border: 1px solid #d5d5d5;
		}
		
		.register {
			display: none;
		}
		
		.login {
			display: block;
		}
		
		.register input[type="text"],
		.register input[type="email"],
		.register input[type="password"],
		.login input[type="text"],
		.login input[type="email"],
		.login input[type="password"] {
			display: block;
			padding: 16px 12px;
			width: 274px;
			border: 0;
			border-top: 1px solid #d5d5d5;
			background-color: white;
		}
		
		.register input:focus,
		.login input:focus,
		.submit_button:focus {
			outline: none;
		}
		
		.submit_button {
			width: 100%;
			box-shadow: none;
			border: 0;
			line-height: 45px;
			font-size: 18px;
			display: block;
			margin: 20px 0;
			color: #fff;
			border-radius: 3px;
			background-color: #7BAA58;
		}
		/********验证码*****/
		
		.iden_code {
			position: relative;
		}
		
		.iden_code input[type = button] {
			position: absolute;
			top: 50%;
			width: 100px;
			height: 38px;
			margin-top: -19px;
			right: .5rem;
		}
	</style>

	<body>
		<!--
        	作者：jiahua
        	时间：2016-12-10
        	描述：虚化的背景
        -->
		<div class="blur"></div>

		<div id="father">
			<!--
            	作者：jiahua
            	时间：2016-12-10
            	描述：白色半透明框
            -->
			<div id="boxx"></div>
			<!--
            	作者：jiahua
            	时间：2016-12-10
            	描述：登录注册
            -->
			<div id="index_main_box">
				<!--
                	作者：jiahua
                	时间：2016-12-10
                	描述：logo
                -->
				<div>
					<h1 class="logo hide-text">SHOP</h1>
					<h2>欢迎来到商城</h2>
				</div>
				<!--
                	作者：jiahua
                	时间：2016-12-10
                	描述：选择登录还是注册
                -->
				<div class="register_login">
					<a href="#" id="login" class="">登录</a>
					<a href="##" id="register" class="">注册</a>
				</div>
				<!--
                	作者：jiahua
                	时间：2016-12-10
                	描述：注册
                -->
				<div class="register">
					<s:form action="userRegister">
						<s:token></s:token>
						<div class="group_input">
							<div class="name">
								<s:textfield type="text" name="user.name" placeholder="姓名"/>
							</div>
							<div class="phone">
								<s:textfield type="email" name="user.email" id="regEmail" placeholder="邮箱"></s:textfield>
							</div>
							<div class="passWD">
								<s:textfield type="password" name="user.pwd" placeholder="密码"/>
							</div>
							<div class="iden_code">
								<s:textfield type="text" name="code" placeholder="验证码"/>
								<input type="button" id="getCode" value="获取验证码" />
							</div>
						</div>
						<s:submit class="submit_button" value="注册"/>
					</s:form>
				</div>
				<!--
                	作者：jiahua
                	时间：2016-12-10
                	描述：登录
                -->
				<div class="login">
					<s:form action="userLogin">
					<s:token></s:token>
					<div class="group_input">
						<s:textfield type="email" name="user.email" placeholder="邮箱"/>
						<s:textfield type="password" name="user.pwd" placeholder="密码"/>
					</div>
					<s:submit class="submit_button" value="登录"/>
					</s:form>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery.js" ></script>
		<script type="text/javascript" src="js/e.js" ></script>
		<script type="text/javascript" src="js/login.js" ></script>
	</body>

</html>

