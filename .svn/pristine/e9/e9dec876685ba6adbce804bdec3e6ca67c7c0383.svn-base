<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/paging.css" />
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
				margin: 30px auto 0px;
			}
			/**header*/
			header{
				position: relative;
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
			header div.info div.login{
				display: inline-block;
				margin-right: 30px;
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
			/**搜索框*/
			header div.searchBox {
				width: 410px;
				height: 32px;
				position: absolute;
				left: 36.777777777778%;
				top: 27px;
			}
			
			header div.searchBox input.searchText {
				width: 300px;
				height: 30px;
				font-size: 10px;
				border: 1px solid #CCCCCC;
				border-radius: 25px;
				padding-left: 15px;
				padding-right: 40px;
				position: relative;
				outline:none
			}
			
			header div.searchBox a.searchBoxBtn {
				width: 30px;
				height: 45px;
				display: inline-block;
				position: relative;
				background-image: url(img/go.png);
				background-repeat: no-repeat;
				background-position-x: 50%;
				background-position-y: 50%;
				margin-left: -45px;
			}
			
			
			/*****导航栏样式****/
			
			nav{
				height: 40px;
				line-height: 40px;
				background-color: #2D2D2D;
			}
			
			nav ul {
				height: 40px;
				display: inline-block;
				margin-left: 30px;
			}
			
			nav li {
				text-align: center;
				float: left;
			}
			
			nav li a {
				width: 80px;
				height: 40px;
				font-weight: 400;
				color: #FFFFFF;
				display: block;
			}
			
			nav li:hover {
				width: 80px;
				height: 40px;
				text-align: center;
				background-color: #FFFFFF;
			}
			
			nav li a:hover {
				color: #2D2D2D;
				font-weight: 400;
			}
			
			.goods-nav-title {
				width: 180px;
				height: 40px;
				color: #FFFFFF;
				box-shadow: inset 0px 0px 30px #111111;
				display: inline-block;
				vertical-align: top;
			}
			
			.goods-nav-title-icon {
				width: 38px;
				height: 33px;
				background-image: url(img/sprite-icons.png);
				background-position: -160px -24px;
				float: left;
			}
			
			.goods-nav-title span {
				padding-left: 10px;
				color: #FFFFFF;
			}
			
			/**section*/
			section.container::after{
				display: block;
				content: "";
				clear: both;
			}
			section.container div.welcome{
				height: 70px;
				line-height: 70px;
				position: relative;
				width: 100%;
			}
			section.container div.welcome span.one{
				font-size: 30px;
				width: 16.7%;
			}
			section.container div.welcome span.two{
				display: inline-block;
				font-size: 16px;
				margin-left: 14px;
				width: 5%;
			}
			section.container div.welcome span.third{
				background: #f5f5f5 none repeat scroll 0 0;
				display: inline-block;
				height: 9px;
				margin-left: 14px;
				width: 70%;
			}
			/**商品**/
			section.container div.goods-list div.goods{
				width: 210px;
				float: left;
				margin: 20px 35px;
				position: relative;
			}
			section.container div.goods-list div.goods img{
			    width: 210px;
    			height: 210px;
			}
			section.container div.goods-list div.goods div.goods-name{
			    font-size: 16px;
			    line-height: 30px;
			    text-align: center;
			}
			section.container div.goods-list div.goods div.goods-dotted{
				border-bottom: 1px dashed #999;
    			margin: 9px auto 6px;
			}
			section.container div.goods-list div.goods div.goods-price{
				text-align: center;
			}
			section.container div.goods-list div.goods div.goods-price span{
				font-size: 30px;
			}
			section.container div.goods-list div.goods div.operation{
				position: absolute;
				display: none;
				width: 100%;
				bottom: 0px;
			}
			section.container div.goods-list div.goods div.operation a{
				display: inline-block;
				float: left;
				width: 50%;
				background: #ff6700;
			    height: 40px;
			    left: 0;
			    line-height: 40px;
			    color: #FFF;
			    font-size: 20px;
			    text-align: center;
			}
			section.container div.goods-list div.goods div.operation a.pay{
				background: #00843E;
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
		<header class="container">
			<div class="logo">
				<a href="#">
					<img src="img/logo2.png" />
				</a>
			</div>
			<div class="searchBox">
				<s:form>
					<s:hidden name="page"/>
					<s:textfield name="info" class="searchText"/>
					<s:submit class="searchBoxBtn"/>
				</s:form>
				<!-- 
				<input type="text" name="search" class="searchText" />
				<a href="javascript:void(0)" class="searchBoxBtn"></a>
				 -->
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
								<li><a href="scm/getCartOrders">购物车管理</a></li>
								<li><a href="userToLookOrders">订单管理</a></li>
								<li><a href="userLogout">退出登录</a></li>
							</ul>
						</div>
					</div>
				</s:if>
				<s:else>
					<div class="login">
						<a href="login.jsp">登录</a>
					</div>
				</s:else>
			</div>
		</header>
		<nav class="container">
			<div class="goods-nav-title">
				<i class="goods-nav-title-icon"></i>
				<span>商品市场</span>
			</div>
			<!--end of goods-nav-title-->
			<ul>
				<li>
					<a href="javascript:void(0)">一件代发</a>
				</li>
				<li>
					<a href="javascript:void(0)">伙拼</a>
				</li>
				<li>
					<a href="javascript:void(0)">微商进货</a>
				</li>
				<li>
					<a href="javascript:void(0)">源头好货</a>
				</li>
				<li>
					<a href="javascript:void(0)">进口货源</a>
				</li>
				<li class="split-line"><span></span></li>
				<li>
					<a href="javascript:void(0)">档口尖货</a>
				</li>
				<li>
					<a href="javascript:void(0)">实力优品</a>
				</li>
				<li>
					<a href="javascript:void(0)">淘工厂</a>
				</li>
				<li>
					<a href="javascript:void(0)">企业采购</a>
				</li>
				<li>
					<a href="javascript:void(0)">以商会友</a>
				</li>
				<li>
					<a href="javascript:void(0)">生意经</a>
				</li>
			</ul>
		</nav>
		<section class="container">
			<div class="welcome">
				<span class="one">欢迎来到商城</span>
				<span class="two">welcome!</span>
				<span class="third"></span>
			</div>
			<div class="goods-list">
				<s:sort comparator="goodsDateComparator" source="#request.goods">
				<s:iterator >
					<div class="goods">
						<div class="goods-img">
							<img src="${path }" />
						</div>
						<div class="goods-name">
							${name }
						</div>
						<div class="goods-dotted"></div>
						<div class="goods-price">
							￥
							<span>${price }</span>
						</div>
						<div class="operation">
							<a href="scm/addToCart?gid=${id }&number=1">加入购物车</a>
							<a class="pay" href="userDirectPay?gid=${id}">直接购买</a>
						</div>
					</div>
				</s:iterator>
				</s:sort>
			</div>
		</section>
		<div class="paging container">
			<ul>
				<li>
					<s:if test="page > 1">
						<a href="adminToLookOrders?page=${page-1 }">上一页</a>
					</s:if>
					<s:else>
						<a>没有上一页了</a>
					</s:else>
				</li>
				<s:bean name="org.apache.struts2.util.Counter">
					<s:param name="first" value="%{page}"/>
					<s:param name="last" value="5"/>
					<s:param name="last" value="%{totalPage}"/>
					<s:iterator var="p">
						<li>
							<a href="adminToLookOrders?info=${info }&page=${p }">
								<s:property/>
							</a>
						</li>
					</s:iterator>
				</s:bean>
				<li>
					<s:if test="page < totalPage">
						<a href="adminToLookOrders?page=${page+1 }">下一页</a>
					</s:if>
					<s:else>
						<a>没有下一页了</a>
					</s:else>
				</li>
			</ul>
		</div>
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
		<script type="text/javascript" src="js/lookGoods.js" ></script>
	</body>
</html>