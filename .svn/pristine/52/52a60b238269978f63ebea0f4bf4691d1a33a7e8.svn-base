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
			section.container section div.address div, section.container section div.address table{
				width: 100%;
				text-align: center;
			}
			section.container section div.address div.table-head{
				border-bottom: 1px solid #f1eff6;
			}
			section.container section div.address table th{
				height: 48px;
			    line-height: 48px;
			    background: #fdfdfd;
			    font-weight: normal;
			    font-size: 16px;
			    color: #363636;
			}
			section.container section div.address table td{
			    color: #545454;
    			padding: 15px 0;
    			font-size: 14px;
			}
			section.container section div.address table a{
				color: #fe990b;
			    border: 1px solid #fe990b;
			    padding: 0 9px;
			    height: 21px;
			    line-height: 21px;
			    margin-right: 5px;
			}
			section.container section div.address table td p{ white-space: nowrap; overflow: hidden; text-overflow: ellipsis;}
			section.container section div.address table .td-1{ width: 5%;}
			section.container section div.address table .td-2{ width: 10%;}
			section.container section div.address table .td-3{ width: 15%;}
			section.container section div.address table .td-4{ width: 35%;}
			section.container section div.address table .td-5{ width: 10%;}
			section.container section div.address table .td-6{ width: 25%;}
			
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
								查看地址
							</div>
						</li>
						<li>
							<div>
								新增地址
							</div>
						</li>
					</ul>
					<div style="clear: both;"></div>
				</nav>
				<div class="address">
					<div class="table-head">
						<table>
							<thead>
								<tr>
									<th class="td-1">ID</th>
									<th class="td-2">收货姓名</th>
									<th class="td-3">收货电话</th>
									<th class="td-4">收货地址</th>
									<th class="td-5">状态</th>
									<th class="td-6">操作</th>
								</tr>
							</thead>
						</table>
					</div>
					<div class="table-body">
						<table>
							<tbody>
							<s:iterator value="#request.allAddress" var="address" >
								<tr>
									<td class="td-1">${id }</td>
									<td class="td-2">${name }</td>
									<td class="td-3">${phone }</td>
									<td class="td-4"><p>${address }</p></td>
									<td class="td-5">
										<s:if test="priority==1">
											默认地址
										</s:if>
									</td>
									<td class="td-6">
										<s:if test="priority==1">
											<a href="userToUpdateAddress?addressId=${id }">修改</a><a href="userDeleteAddress?addressId=${id }">删除</a>
										</s:if>
										<s:else>
											<a href="userUpdateAddress?addressId=${id }&priority=1">设为默认</a><a href="userToUpdateAddress?addressId=${id }">修改</a><a href="userDeleteAddress?addressId=${id }">删除</a>
										</s:else>
									</td>
								</tr>
							</s:iterator>
							</tbody>
						</table>
					</div>
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
<!--  
<html>
<head>
	<meta charset="UTF-8">
	<title>查看地址</title>
</head>
<body>
	<h2>查看地址</h2>
	<table>
		<thead>
			<tr>
				<td>id</td>
				<td>name</td>
				<td>phone</td>
				<td>address</td>
				<td>priority</td>
				<td>编辑</td>
				<td>删除</td>
			</tr>
		</thead>
		<tbody>
			
			<s:iterator value="#request.allAddress" var="address" >
				<tr>
					<td>${id }</td>
					<td>${name }</td>
					<td>${phone }</td>
					<td>${address }</td>
					<td>${priority }</td>
					<td><a href="userToUpdateAddress?addressId=${id }">修改</a></td>
					<td><a href="userDeleteAddress?addressId=${id }">删除</a></td>
				</tr>
			</s:iterator>
			
		</tbody>
	</table>
</body>
</html>
-->