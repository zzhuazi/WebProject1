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
			header::after{
				display: block;
				content: "";
				clear: both;
			}
			header div.logo{
			    width: 240px;
    			height: 86px;
				background: #8AA18C;
				float: left;
			}
			header div.info{
				float: right;
				position: relative;
				height: 34px;
				line-height: 34px;
				text-align: center;
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

			section.container section div.address, section.container div.default-address, section.container div.tip{
				margin-top: 50px;
			    background: #fff;
				border: 1px solid #dbd9e1;;
			}
			
			section.container div.default-address p, section.container div.tip p{
				line-height: 40px;
				margin-left: 50px;
			}
			
			
			section.container section div.address div, section.container section div.address table{
				width: 100%;
				text-align: center;
			}
			section.container section div.address div.table-head{
				border-bottom: 1px solid #f1eff6;
			}
			section.container div.address div.sum {
				margin-top: 30px;
				margin-bottom: 20px;
			}
			section.container div.address div.sum::after{
				display: block;
				content: "";
				clear: both;
			}
			section.container div.address div.sum div{
				width: 50%;
				height: 60px;
				float: left;
			}
			section.container div.address div.sum input{
				float: right;
				margin-right: 20px;
				width: 112px;
				height: 60px;
			}
			section.container div.address div.sum p{
				height: 30px;
				line-height: 30px;
				text-align: left;
				margin-left: 50px;
			}
			section.container div.address div.sum input{
				background: #2aad6f;
			    border: 2px solid #2aad6f;
			    color: #fff;
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
			section.container section div.address table a, section.container div.default-address a{
				color: #fe990b;
			    border: 1px solid #fe990b;
			    padding: 0 9px;
			    height: 21px;
			    line-height: 21px;
			    margin-right: 5px;
			}
			
			section.container div.address table tr td{    border-bottom: 1px solid #f1eff6;}
			section.container section div.address table .td-1{ width: 25%;}
			section.container section div.address table .td-2{ width: 30%;}
			section.container section div.address table .td-3{ width: 15%;}
			section.container section div.address table .td-4{ width: 10%;}
			section.container section div.address table .td-5{ width: 20%;}
			section.container section div.address table .td-2 div{
				width: 130px;
				height: 104px;
				float: left;
				text-align: center;
			}
			section.container section div.address table .td-2 div.img, section.container section div.address table .td-2 img{
				display: inline-block;
				width: 104px;
				height: 104px;
			}
			section.container section div.address table .td-2 p{
				width: 130px;
				height: 104px;
				display: inline-block;
			}
			section.container section div.address table .td-3 a, section.container section div.address table .td-3 input{
				width: 35px;
				display: inline;
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
		<script type="text/javascript">
			function add(element, oid){
				var value = $(element).prev().val();
				value++;
				$.ajax({
					type:"post",
					url:"scm/editCartOrders",
					data:{oid: oid, number: value},
					async:true,
					success: function(data) {
						 $(element).prev().val(data.result);
						 var price = $(element).parent().parent().find("input[type='hidden']").val();
						 $(element).parent().next().find("span").text(price * data.result);
					}
				});
			}
			function cut(element, oid){
				var value = $(element).next().val();
				value--;
				$.ajax({
					type:"post",
					url:"scm/editCartOrders",
					data:{oid: oid, number: value},
					async:true,
					success: function(data) {
						if (data.result == 0 && value==0) {
							 //移除
							 $(element).parent().parent().hide();
						 } else {
							 $(element).next().val(data.result);
							 var price = $(element).parent().parent().find("input[type='hidden']").val();
							 $(element).parent().next().find("span").text(price * data.result);
						 }
					}
				});
			}
		</script>	
	</head>
	<body>
		<header class="container">
			<div class="logo">
				<a href="lookGoods">
					<img src="img/logo2.png" />
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
								<li><a href="userToInfo">个人信息管理</a></li>
								<li><a href="/scm/getCartOrders">购物车管理</a></li>
								<li><a href="">订单管理</a></li>
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
						<li><a href="userToLookOrders?type=0">全部订单</a></li>
						<li><a href="userToLookOrders?type=1">待付款</a></li>
						<li><a href="userToLookOrders?type=2">待发货</a></li>
						<li><a href="userToLookOrders?type=3">待收货</a></li>
					</ul>
				</div>
			</aside>
			<section>
				<nav>
					<ul>
						<li class="li-active li-one">
							<div>
								订单管理
							</div>
						</li>
						<li class="li-active li-two">
							<div>
								全部订单
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
				<div class="default-address">
					<s:if test="null != #request.defaultAddress">
						<p>收货人姓名:<span>${defaultAddress.name }</span></p>
						<p>手机号码:<span>${defaultAddress.phone }</span></p>
						<p>地址：<span>${defaultAddress.address }</span></p>
					</s:if>
					<s:else>
						<p>当前您还没有添加任何收货地址<a href="userToAddAddress">添加收货地址</a></p>
					</s:else>
				</div>
				<div class="tip">
					<p>${tip }</p>
				</div>
				
				<div class="address">
					<s:form action="">
						<s:token></s:token>
						<div class="table-head">
							<table>
								<thead>
									<tr>
										<th class="td-1">
											<label>
												订单编号
											</label>
										</th>
										<th class="td-2">产品</th>
										<th class="td-3">购买数量</th>
										<th class="td-4">小计</th>
										<th class="td-5">操作</th>
									</tr>
								</thead>
							</table>
						</div>
						<div class="table-body">
							<table>
								<tbody>
								<s:iterator value="#request.orders" var="order" >
								
									<tr>
										<s:hidden value="%{goods.price }"></s:hidden>
										<td class="td-1">
											${no }
										</td>
										<td class="td-2">
											<div class="img">
												<img src="${goods.path }" />
											</div>
											<div>
												<p>${goods.desc }</p>
											</div>
										</td>
										<td class="td-3">
											<s:if test="status == 2">
												<a href="javascript:void(0)" onclick="cut(this, ${id})">-</a>
												<input type="number" name="count" value="${number}" disabled="disabled" />
												<a href="javascript:void(0)" onclick="add(this, ${id})">+</a>
											</s:if>
											<s:else>
												${number}
											</s:else>
										</td>
										<td class="td-4">
											￥<span class="sub-total">${goods.price * number }</span>
										</td>
										<td class="td-5">
											<s:if test="status == 2">
												<a href="userPayOrder?oid=${id }">付款</a>
												<a href="scm/deleteCartOrders?oid=${id }">删除</a>
											</s:if>
											<s:elseif test="status == 4">
												待发货中
											</s:elseif>
											<s:elseif test="status == 7">
												<a href="userConfirmOrder?oid=${id }">确认收货</a>
												<a href="userRefundOrder?oid=${id }">退货</a>
											</s:elseif>
											<s:elseif test="status == 6">
												商家取消订单
											</s:elseif>
											<s:elseif test="status == 8">
												等待商家确认退货申请中
											</s:elseif>
											<s:elseif test="status == 9">
												交易失败，您退货了
											</s:elseif>
											<s:elseif test="status == 10">
												<a href="">评价</a>
											</s:elseif>
										</td>
									</tr>
									</s:iterator>
								</tbody>
							</table>
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
