<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="css/reset.css" />
		<style type="text/css">
			.hidden{
				display: none;
			}
			.show{
				display: block;
			}
			body{
				font-size: 12px;
			    font-family: "Microsoft YaHei","微软雅黑","Arial, Geneva, sans-serif";
			    color: #344659;
			    background: #f1f1f1;
			}
			body .container{
				width: 1130px;
				height: auto;
				margin: 30px auto 0px;
			}
			/**header*/
			header{
				z-index: 999;
			}
			header::after{
				display: block;
				content: "";
				clear: both;
			}
			header div.logo{
			    width: 240px;
    			height: 86px;
				background: #00843e;
				float: left;
			}
			header div.info{
				float: right;
				position: relative;
				height: 34px;
				line-height: 34px;
				text-align: center;
				z-index: 999;
			}
			header div.info p{
				width: 100px;
				display: inline-block;
				white-space: nowrap; overflow: hidden; text-overflow: ellipsis;
			}
			header div.info img.hp{
				margin-top: 1px;
				margin-right: 10px;
				width: 32px;
				height: 32px;
				border-radius: 16px;
			}
			header div.info img.index-accout{
				margin-top: 13px;
				margin-left: 5px;
				width: 8px;
				height: 5px;
			}
			header div.info div{
				margin-top: 26px;
			}
			header div.info div.option{
				margin-top: 12px;
				background: #ffffff;
			}
			/**section*/
			section.container aside{
				width: 240px;
				height: 500px;
			    background: #fff;
			    float: left;
			}
			section.container aside div.hp{
				margin-top: 20px;
				margin-bottom: 30px;
			}
			section.container aside div.hp div.hp-img, section.container aside div.hp div.hp-img img{
				margin: 0px auto 0px;
				width: 101px;
    			height: 101px
			}
			section.container aside div.hp h2{
				margin-top: 20px;
				text-align: center;
			}
			section.container aside div.function{
				text-align: center;
			    line-height: 40px;
    			font-size: 16px;
			    color: #559ae2;
			}
			section.container aside div.function li:hover{
				background: #f6f6f8;
			}
			section.container section{
				width: 840px;
				float: left;
				margin-left: 30px;
			}
			section.container section nav ul{
				background: #f7f7f7;
			}
			section.container section nav ul li{
				width: 260px;
				display: inline-block;
			    text-align: center;
			    padding: 26px 0 30px;
			    position: relative;
			    color: #ccc;
			}
			section.container section nav ul li.li-active{
			    background: #fff;
    			color: #000;
			}
			section.container section nav ul li.li-one{
				z-index: 3;
			}
			section.container section nav ul li.li-two{
				z-index: 2;
			}
			section.container section nav ul li div{
				font-size: 19px;
				font-weight: bold;
			}
			section.container section nav ul li.li-one div:after, section.container section nav ul li.li-two div:after{
			    width: 20px;
			    height: 100%;
			    position: absolute;
			    top: 0;
			    right: -20px;
			    content: "";
			    z-index: 20;
			    background: url(img/nav.png) -65px -13px no-repeat;
			}
			section.container section nav ul li.li-active div:after{
				background: #fff;
				background: url(img/nav.png) -11px -10px no-repeat;
			}
			section.container section div.address{
				margin-top: 50px;
			    background: #fff;
				border: 1px solid #dbd9e1;;
			}
			
			section.container div.address div.address-one::after{
				display: block;
				content: "";
				clear: both;
			}
			
			section.container div.address div.address-one div{
				margin-left: 40px;
				width: 300px;
				float: left;
			}
			section.container div.address label{
			    height: 60px;
			    line-height: 60px;
    			display: block;	
    			color: #393939;
    			font-size: 16px;
    			padding-left: 25px;
			}
			section.container div.address input{
				width: 250px;
				border: 1px solid #ccc;
			    padding: 23px;
		        border-radius: 4px;
		        font: 14px Arial;
			}
			section.container div.address input:hover{
				border-color: #2aad6f;
			}
			section.container div.address div.detail-address{
				margin-left: 40px;
				margin-bottom: 37px;
			}
			section.container div.address div.detail-address, section.container div.address div.detail-address input{
				width: 85%;
			}
			section.container div.address div.sub{
				text-align: center;
			}
			section.container div.address div.sub div{
				float:  left;
				width: 35%;
				margin-left: 40px;
				margin-bottom: 15px;
			}
			section.container div.address div.sub::after{
				display: block;
				content: "";
				clear: both;
			}
			section.container div.address div.sub input.submit, 	section.container div.address div.sub a{
				display: inline-block;
				width: 100%;
				height: 64px;
				margin-right: 10px;
				color: #fe990b;
			    border: 1px solid #1f8657;
    			font-weight: 700;
    			line-height: 64px;
    			padding: 0px;
			    background: #d4eee1;
    			color: #1f8657;
			}
			/**footer*/
			footer{
				margin-bottom: 50px !important;
			}
			footer::after{
				display: block;
				content: "";
				clear: both;
			}
			footer address{
				margin-top: 30px;
				margin-left: 50px;
				line-height: 30px;
				font-style: normal;
				float: left;
			}
			footer div{
				margin-top: 30px;
				margin-right: 50px;
				float: right;
			}
			footer a{
				display: inline-block;
				width: 30px;
			    height: 30px;
			    text-align: center;
			    background-color: #c9c9c9;
			    border-radius: 15px;
			    margin-left: 20px;
			}
			footer i{
				background: url(img/sprite-icons.png) no-repeat;
				display: inline-block;
			    width: 25px;
   	 			height: 25px;
			}
			i.wechat{
				background-position: -128px -350px;
			}
			i.wechat:hover{
				background-position: -128px -100px;
			}
			i.weibo{
				background-position: -129px -241px;
			}
			i.weibo:hover{
				background-position: -129px 3px;
			}
		</style>
	</head>
	<body>
		<header class="container">
			<div class="logo">
				<a href="lookGoods">
					<img src="img/logo1.png" />
				</a>
			</div>
			<div class="info">
				<s:if test="%{#session.userEmail != null}">
					<div>
						<div id="info">
							<img class="hp" src="img/24695198593.jpg" />
							<p>${sessionScope.userEmail }</p>
							<img class="index-accout" src="img/index-account-drop.png" />
						</div>
						<div class="option hidden">
							<ul>
								<li>账号余额:<span>${sessionScope.userBalance }</span></li>
								<li><a href="">个人信息管理</a></li>
								<li><a href="scm/getCartOrders">购物车管理</a></li>
								<li><a href="userToLookOrders">订单管理</a></li>
								<li><a href="userLogout">退出登录</a></li>
							</ul>
						</div>
					</div>
				</s:if>
				<s:else>
					<div class="login">
						<a href="">登录</a>
					</div>
				</s:else>
			</div>
		</header>
		<section class="container">
			<aside>
				<div class="hp">
					<div class="hp-img">
						<img src="img/hp.png"/>
					</div>
					<h2>${sessionScope.userName }</h2>
				</div>
				<div class="function">
					<ul>
						<li><a href="userToInfo">查看个人信息</a></li>
						<li><a href="userToUpdateInfo">修改名称</a></li>
						<li><a href="userToLookAddress">查看地址</a></li>
						<li><a href="userToAddAddress">新增地址</a></li>
						<li><a href="userToUpdatePwd">修改密码</a></li>
					</ul>
				</div>
			</aside>
			<section>
				<nav>
					<ul>
						<li class="li-active li-one">
							<div>
								个人信息管理
							</div>
						</li>
						<li class="li-active li-two">
							<div>
								修改名称
							</div>
						</li>
						<li>
							<div>
								无
							</div>
						</li>
					</ul>
					<div style="clear: both;"></div>
				</nav>
				<div class="address">
					<s:form action="userUpdateInfo">
						<s:token></s:token>
						<div class="detail-address">
							<label for="deAddress">账号名称</label>
							<s:textfield name="user.name" value="%{#request.info.name}" id="deAddress" />
						</div>
						<div class="sub">
							<div>
								<s:submit value="更新" class="submit" />
							</div>
							<div>
								<a href="#">取消</a>
							</div>
							
						</div>
					</s:form>
				</div>
			</section>
			<div style="clear: both;"></div>
		</section>
		<footer class="container">
			<hr />
			<address>© 2016 - 东莞市东莞理工学院 版权所有 粤***备*******号-*  联系方式：****-****-***</address>
			<div>
				<span>关注我们:</span>
				<a href=""><i class="wechat"></i></a>
				<a href=""><i class="weibo"></i></a>
			</div>
		</footer>
		<script src="js/jquery.js"></script>
		<script type="text/javascript" src="js/e.js" ></script>
	</body>
</html>
