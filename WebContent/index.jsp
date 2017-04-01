<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='zh'>
<head>
	<meta charset="utf-8"/>
  	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0">
  	<script src="js/jquery.js" type="text/javascript"></script>
  	<title></title>
  	<style>
  	/*css初始化*/
  		body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, p, blockquote, th, td { margin:0; padding:0; }
		body {font-size:14px; color:#666; font-family:'Hiragino Sans GB','microsoft yahei',arial,sans-serif; background:#fff; line-height:24px; }
		fieldset, img { border:0; }
		ol, ul { list-style:none; }
		h1, h2, h3, h4, h5, h6{ font-size:100%; }
		em { font-style:normal; }
		input, button, select, textarea { outline:none; }
		textarea { resize:none; } /*禁用了文本的拖拉，尤其在谷歌下*/
		p{ text-align:justify; text-justify:distribute;} /*为了使文本段落左右两边对齐*/
		a { color: #666; text-decoration:none; }
		a:hover { color: lightgrey; text-decoration:none; }
	
	/**************************************************************/
		body {

		}
		/**********头部样式***********/
		header{
			height: 130px;
			position: relative;
			background-color: #F8F8F8;
			box-shadow: inset 0px -8px 8px -8px #D1D1D1;
		}
		
		.search {
			width: 1200px;
			height: 90px;
			line-height: 90px;
			position: relative;
			margin: 0 auto;
		}
		
		.logo {
			height: 88px;
			position: absolute;
		}
		
		.logo img {
			width: 250px;
			height: 88px;
		}
		
		/********搜索框样式***********/
		.searchBox {
			width:410px;
			height: 32px;
			position: absolute;
			top: 20px;
			left: 36.777777777778%;
		}
		.searchText {
			width: 300px;
			height: 30px;
			font-size: 10px;
			border: 1px solid #CCCCCC;
			border-radius: 25px;
			padding-left: 15px ;
			padding-right: 40px;
			position: relative;	
			top: -17px;
		}
		
		.searchBoxBtn {
			height: 30px;
			display: inline-block;
			position: relative;
			top: -17px;
		}
		
		/**************登录按钮样式*************/
		.loginBox {
			width: 50px;
			height: 90px;
			line-height: 90px;
			margin-right: 10px;
			font-weight: bolder;
			float: right;
		}
		
		/*****导航栏样式****/		
  		nav {
  			width: 1200px;
  			height: 40px;
  			margin: 0 auto;
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
 			width: 85px;
  			height: 40px;
 			font-weight: 400;
 			color: #FFFFFF;
 			display: block;
 		}
 		
 		
 		nav li:hover {
  			width: 85px;
  			height: 40px;
  			text-align: center;
 			background-color: #FFFFFF;
 		}
 		
 		nav li a:hover {
 			color: #2D2D2D;
 			font-weight: 400; 			
 		}
 		  		
  		/*******侧导航栏标题样式*******/
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

 		/*********分割线样式*************/
 		.split-line {
 			width: 40px;
 			height: 40px;
 			display: block;
 		}
 		
 		.split-line span {
 			height: 20px;
 			border-left: 1px solid #F8F8F8;
 			vertical-align: middle;
 		}
 		
 		/************主体section样式*****************/
 		.main {
 			/*box-shadow:0px 0px 500px #2B2B2B;*/
 			width: 1200px;
 			height: 1300px;
 			margin-left: auto;
 			margin-right: auto;
 			border-top: none;
 			background-color: #FFFFFF;
 			position: relative;
 		}
 		
 		/***************侧导航栏样式*****************/
 		.goods-nav ul{
 			width: 180px;
 			height: 430px;
 			background-color: #F8F8F8;
    		padding: 9px 0 10px 0;
   			border: 1px solid #e2e2e2;
    		border-top: none;
			box-shadow: inset 0px 30px 30px -30px #000000;
 			position: absolute;
 		}
 		
 		.goods-nav li {
 			width: 180px;
 			height: 33px;
 			float: left;
 			line-height: 33px;
 		}
 		
 		.goods-nav li:hover{
 			width: 180px;
 			height: 33px;
 			float: left;
 			line-height: 33px;
 			background-color: #2D2D2D;
 			color: #FFFFFF;
 		}
 		
 		.goods-nav a, span {
 			height: 33px;
    		display: inline-block;
    		color: #222;
 		}
 		
 		.goods-nav li:hover a, li:hover span{
 			height: 33px;
    		display: inline-block;
    		color: #FFFFFF; 			
 		} 
 			
 		.goods-nav li:hover a:hover {
 			height: 33px;
    		display: inline-block;
    		color: #C9C9C9; 			
 		}
 		
		.goods-nav-ico {
 			width: 28px;
 			height: 33px;
 			background-image: url(img/log.png);
 			margin-left: 7px;
 			float: left;			
		}
		
 		.ico1 {
 			background-position: 0px -93px;
 		}
 		
 		.ico2 {
 			background-position: 0px -130px;
 		}
 		
 		.ico3 {
 			background-position: -541px -622px;
 		}

 		.ico4 {
 			background-position: 0px -168px;
 		} 		

 		.ico5 {
 			background-position: 0px -205px;
 		}

 		.ico6 {
 			background-position: 0px -510px;
 		}

 		.ico7 {
 			background-position: 0px -245px;
 		}

 		.ico8 {
 			background-position: 0px -283px;
 		}
 		
 		.ico9 {
 			background-position: 0px -320px;
 		}
 		
 		.ico10 {
 			background-position: 0px -360px;
 		}
 		
 		.ico11 {
 			background-position: 0px -397px;
 		}
 		
 		.ico12 {
 			background-position: 0px -435px;
 		}
 		
 		.ico13 {
 			background-position: 0px -475px;
 		}
 		
 		/***********图片轮播样式****************/
 		.slider {
 			width: 1020px;
 			height: 450px;
 			position: absolute;
 			left: 180px;
 			
 		}
 		
 		.slider-panel, .slider-extra {
 			width: 1020px;
 			height: 450px;
 			border: none;
 		}
 		
 		.slider-panel img {
 			width: 100%;
 			height: 100%;
 			max-width: 100%;
 			max-height: 100%;
 			
 		}
 		
 		.slider {
 			position: relative;
 		}
 		
 		.slider-panel, .slider-nav, .slider-pre, .slider-next {
 			position: absolute;
 		}
 		
 		.slider-extra {
 			position: absolute;
 		}
 		
 		.slider-footer {
 			position: relative;
 			height: 40px;
 			/*background-image: url(img/Bg_03.png);*/
			top:410px;
 		}
 		
 		.slider-nav {
			width: 1024px;
			height: 40px;
			line-height: 40px;
			margin: 0 auto;
			text-align: center;
 		}
 		
 		.slider-item {
 			width: 28px;
			height: 12px;
			display: inline-block;
 		}
 		
 		.slider-item-selected {
 			width: 28px;
 			height: 12px;
 			display: inline-block;

 		}
 		
 		.slider-item a {
 			width: 12px;
 			height: 12px;
 			background: url(img/picNow.png) no-repeat right;
 			display: block;
 		}
 		
 		.slider-item-selected a {
 			width: 12px;
 			height: 12px;
 			background: url(img/picNow.png) no-repeat left;
 			display: block;
 		}
 		
		.slider-page a {
			background: rgba(0,0,0,0.2);
			color: #fff;
			text-align: center;
			display: block;
			font-family: "simsun";
			font-size: 22px;
			width: 35px;
			height: 62px;
			line-height: 62px;
			margin-top: -31px;
			position: absolute;
			top: 50%;
		}
		
		.slider-page a:hover {
			background: rgba(0,0,0,0.4);
		}
		
		.slider-next {
			left: 100%;
			margin: -35px;
		}		
 		
 		/***********商品section样式**********/
 		.goodsBox {
 			width: 1024px;
 			height: 345px;
 			margin-left: auto;
 			margin-right: auto;
 			margin-top: 40px; 			
 		}
 		
 		.solid {
 			width: 824px;
 			margin: 0 auto;
 			border-top: 2px solid #D3D3D3;
 		}
 		
 		.goods {
 			margin-top: 20px;
 		}
 		
 		.goods-lside1 {
 			width: 514px;
 			height: 336px;
 			margin-left: 5px;
 			float: left;
 			background-color: #F1F1F1;
 			box-shadow: 5px 5px 5px #666666;
 		}
 		
 		.goods-rside1{
 			width: 488px;
 			height: 336px;
 			margin-right: 10px;
 			float:right;
 			background-color: #F1F1F1;
 		/*	box-shadow: -5px -5px 5px #666666;*/
 		}
 		
 		.goods-lside2 {
 			width: 488px;
 			height: 336px;
 			margin-left: 10px;
 			float: left;
 			background-color: #F1F1F1;
 			/*box-shadow: 5px 5px 5px #666666; */			
 		}
 		
 		.goods-rside2 {
 			width: 514px;
 			height: 336px;
 			margin-right: 10px;
 			float: right;
 			background-color: #F1F1F1;
 			box-shadow: 5px 5px 5px #666666; 			
 		}
 		
 		.goods-vip img{
 			width: 514px;
 			height: 336px;
 		}

 		.goods-list li a {
 			width: 120px;
 			height: 110px;
 			margin: 1px;
 			float: left;
 			text-align: center;
 			line-height: 140px;
 			background-color: #FFFFFF;
 			display: inline-block;	
 		}
 		
 		.goods-list img{
			max-width: 120px;
			max-height: 110px;
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
	$(document).ready(function() {
		var length,
			currentIndex = 0,
			interval,
			hasStared = false, //是否已经开始轮播
			t = 2000;//轮播时间间隔
		
		length = $('.slider-panel').length;
		//将除第一张图片隐藏
		$('.slider-panel:not(:first)').hide();
		//将第一个slider-item设为激活状态
		$('.slider-item:first').addClass('slider-item-selected');
		//隐藏向前、向后翻按钮
		$('.slider-page').hide();
		
		//鼠标上悬时显示向前、向后翻按钮，停止滑动;鼠标离开时隐藏向前、向后翻按钮，开始滑动
		$('.slider-panel, .slider-extra, .slider-pre, .slider-next').hover(function() {
			stop();
			$('.slider-page').show();
		}, function() {
			$('.slider-page').hide();
			start();
		});
		
		//按钮切换
		$('.slider-item').hover(function() {
			stop();
			var preIndex = $('.slider-item').filter('.slider-item-selected').index();
			currentIndex = $(this).index();
			play(preIndex, currentIndex);
		}, function() {
			start();
		});
		
	//	$('.slider-pre').unbind('click');
		$('.slider-pre').bind('click', function() {
			pre();
		});
	//	$('.slider-next').unbind('click');
		$('.slider-next').bind('click', function() {
			next();
		});
		
		function pre() {
			var preIndex = currentIndex;
			currentIndex = (--currentIndex + length) % length;
			play(preIndex, currentIndex);
		}
		
		function next() {
			var preIndex = currentIndex;
			currentIndex = ++currentIndex % length;
			play(preIndex, currentIndex);
		}
		
		function play(preIndex, currentIndex) {
			$('.slider-panel').eq(preIndex).fadeOut(500);
			$('.slider-panel').eq(currentIndex).fadeIn(1000);
			$('.slider-item').removeClass('slider-item-selected');
			$('.slider-item').eq(currentIndex).addClass('slider-item-selected');
		}
		
		//开始轮播
		function start() {
			if (!hasStared) {
				hasStared = true;
				interval = setInterval(next, t);
			}
	//		interval = setInterval(next, t);
		}
		
		//结束轮播
		function stop() {
			clearInterval(interval);
			hasStared = false;
		}
		
		start();
	});
</script>
</head>
<body>
   	<header>
   		<section class="search">
   			<div class="logo">
   				<img src="img/logo1_black.png"/>
   			</div>
   			<div class="searchBox">
   				<!-- 
   				<input type="text" name="search" class="searchText"/>
   				<a href="javascript:void(0)" class="searchBoxBtn"></a> 			
   				 -->
   				 <s:form action="lookGoods">
					<s:hidden name="page"/>
					<s:textfield name="info" class="searchText"/>
					<s:submit class="searchBoxBtn" value="搜索"/>
				</s:form>	
   			</div><!--end of searchBox-->
   			<div class="loginBox">
   				<a href="login.jsp" class="login">登录</a>
   			</div><!--end of loginBox-->
   		</section><!---end of search-->
	  	<nav>
	  		<div class="goods-nav-title">
	  			<i class="goods-nav-title-icon"></i>
	  			<span><a href="lookGoods">商品市场</a></span>
	  		</div><!--end of goods-nav-title-->
    		<ul>
    			<li><a href="javascript:void(0)">一件代发</a></li>
    			<li><a href="javascript:void(0)">伙拼</a></li>
    			<li><a href="javascript:void(0)">微商进货</a></li>
    			<li><a href="javascript:void(0)">源头好货</a></li>
    			<li><a href="javascript:void(0)">进口货源</a></li>
    			<li class="split-line"><span></span></li>
    			<li><a href="javascript:void(0)">档口尖货</a></li>
    			<li><a href="javascript:void(0)">实力优品</a></li>
    			<li><a href="javascript:void(0)">淘工厂</a></li>
    			<li><a href="javascript:void(0)">企业采购</a></li>
    			<li><a href="javascript:void(0)">以商会友</a></li>
    			<li><a href="javascript:void(0)">生意经</a></li>
    		</ul>
    	</nav>
   	</header>
    <section class="main">
    	<section class="main-nav">
			<aside class="goods-nav">
				<ul>
					<li>
						<i class="goods-nav-ico ico1"></i>
						<a href="javascript:void(0)">女装</a>
						<span>/</span>
						<a href="javascript:void(0)">男装</a>
						<span>/</span>
						<a href="javascript:void(0)">内衣</a>
					</li>
					<li>
						<i class="goods-nav-ico ico2"></i>
						<a href="javascript:void(0)">鞋靴</a>
						<span>/</span>
						<a href="javascript:void(0)">箱包</a>
						<span>/</span>
						<a href="javascript:void(0)">配饰</a>
					</li>
					<li>
						<i class="goods-nav-ico ico3"></i>
						<a href="javascript:void(0)">运动户外</a>
					</li>
					<li>
						<i class="goods-nav-ico ico4"></i>
						<a href="javascript:void(0)">母婴用品</a>
						<span>/</span>
						<a href="javascript:void(0)">童装</a>
						<span>/</span>
						<a href="javascript:void(0)">玩具</a>
					</li>
					<li>
						<i class="goods-nav-ico ico5"></i>
						<a href="javascript:void(0)">工艺品</a>
						<span>/</span>
						<a href="javascript:void(0)">百货</a>
						<span>/</span>
						<a href="javascript:void(0)">宠物</a>
					</li>
					<li>
						<i class="goods-nav-ico ico6"></i>
						<a href="javascript:void(0)">汽车用品</a>
					</li>
					<li>
						<i class="goods-nav-ico ico7"></i>
						<a href="javascript:void(0)">食品</a>
						<span>/</span>
						<a href="javascript:void(0)">源生鲜</a>
					</li>
					<li>
						<i class="goods-nav-ico ico8"></i>
						<a href="javascript:void(0)">家纺家饰</a>
						<span>/</span>
						<a href="javascript:void(0)">家装建材</a>
					</li>
					<li>
						<i class="goods-nav-ico ico9"></i>
						<a href="javascript:void(0)">美妆日化</a>
					</li>
					<li>
						<i class="goods-nav-ico ico10"></i>
						<a href="javascript:void(0)">3C</a>
						<span>/</span>
						<a href="javascript:void(0)">手机</a>
						<span>/</span>
						<a href="javascript:void(0)">家电</a>
					</li>
					<li>
						<i class="goods-nav-ico ico11"></i>
						<a href="javascript:void(0)">电工电气</a>
						<span>/</span>
						<a href="javascript:void(0)">安防</a>
					</li>
					<li>
						<i class="goods-nav-ico ico12"></i>
						<a href="javascript:void(0)">包装</a>
						<span>/</span>
						<a href="javascript:void(0)">办公文教</a>
					</li>
					<li>
						<i class="goods-nav-ico ico13"></i>
						<a href="javascript:void(0)">照明</a>
						<span>/</span>
						<a href="javascript:void(0)">电子</a>
				</ul>
	    		
	    	</aside>
	    	<!--图片轮播-->
	    	<section class="slider"> 
	    		<ul class="slider-main">
	    			<!--轮播图片-->
	    			<li class="slider-panel">
	    				<a href="#"><img src="img/mac3.jpg"/></a>
	    			</li>
	    			<li class="slider-panel">
	    				<a href="#"><img src="img/iphone1.jpg"/></a>
	    			</li>
	    			<li class="slider-panel">
	    				<a href="#"><img src="img/iphone2.jpg"/></a>
	    			</li>
	    			<li class="slider-panel">
	    				<a href="#"><img src="img/iphone3.jpg"/></a>
	    			</li>
	    			<li class="slider-panel">
	    				<a href="#"><img src="img/mac2.jpg"/></a>
	    			</li>
	    			<li class="slider-panel">
	    				<a href="#"><img src="img/mac1.jpg" /></a>
	    			</li>
	    		</ul>
	    		<!--轮播按件-->
	    		<div class="slider-extra">
	    			<!--轮播底部按钮-->
	    			<div class="slider-footer">
	    				<ul class="slider-nav">
	    					<li class="slider-item"><a href="javascript:void(0)"></a></li>
	    					<li class="slider-item"><a href="javascript:void(0)"></a></li>
	    					<li class="slider-item"><a href="javascript:void(0)"></a></li>
	    					<li class="slider-item"><a href="javascript:void(0)"></a></li>
	    					<li class="slider-item"><a href="javascript:void(0)"></a></li>
	    					<li class="slider-item"><a href="javascript:void(0)"></a></li>
	    				</ul>
	    			</div><!--end of slider-footer-->
	    			<!--轮播左右翻页按钮-->
	    			<div class="slider-page">
	    				<a class="slider-pre" href="javascript:void(0)"> > </a>
	    				<a class="slider-next" href="javascript:void(0)"> < </a>
	    			</div><!--end of slider-page-->
	    		</div><!--end of slider-extra-->
	    	</section><!--end of slider-->	    		
    	</section><!--end of main-nav-->
    	<section class="goodsBox">
    		<div class="solid"></div>
    		<div class="goods">
    			<div class="goods-lside1">
    				<div class="goods-vip">
    					<a href="javascipt:void(0)"><img src="img/food.jpg_1080x1800Q80S0.jpg_.webp"/></a>
    				</div><!--end of goods-vip-->
    			</div><!--end of goods-lside-->
    			<div class="goods-rside1">   
    				<div class="goods-list">
    					<ul>
    						<li><a href="javascript:void(0)">
    							<img src="img/nike.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/adidas.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/nike.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/adidas.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/nike.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/adidas.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/nike.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/adidas.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/nike.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/adidas.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/nike.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/adidas.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    					</ul>
    				</div><!--end of goods-list-->
    			</div><!--end of goods-rside-->
    		</div>
    	</section><!--end of goods-->
    	<section class="goodsBox">
    		<div class="solid"></div>
    		<div class="goods">
    			<div class="goods-lside2">
    				<div class="goods-list">
    					<ul>
    						<li><a href="javascript:void(0)">
    							<img src="img/nike.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/adidas.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/nike.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/adidas.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/nike.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/adidas.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/nike.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/adidas.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/nike.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/adidas.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/nike.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    						<li><a href="javascript:void(0)">
    							<img src="img/adidas.jpg_100x150q100.jpg_.webp"/>
    						</a></li>
    					</ul>
    				</div><!--end of goods-list-->
    			</div><!--end of goods-lside-->
    			<div class="goods-rside2">
    				<div class="goods-vip">
    					<a href="javascipt:void(0)"><img src="img/food.jpg_1080x1800Q80S0.jpg_.webp"/></a>
    				</div><!--end of goods-vip-->		
    			</div><!--end of goods-rside-->
    		</div>
    	</section>
    </section><!--end of main-->
    <footer>
		<hr />
		<address>© 2016 - 东莞市东莞理工学院 版权所有 粤***备*******号-*  联系方式：****-****-***</address>
		<div>
			<span>关注我们:</span>
			<a href=""><i class="wechat"></i></a>
			<a href=""><i class="weibo"></i></a>
		</div>    	
    </footer>
</body>
</html>