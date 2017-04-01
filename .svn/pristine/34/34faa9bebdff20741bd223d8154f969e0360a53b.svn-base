<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>后台首页</title>
		<link rel="stylesheet" href="css/reset.css" />
		<style type="text/css">
			iframe{
				border: none;
				margin-top: 30px; 
			}
			.hidden{
				display: none;
			}
			.show{
				display: block;
			}
			
			#aside{
				position: fixed;
				top: 0px;
				left: 0px;
				width: 205px;
			    background: #313541;
			    height: 100%;
			}
			#logo{
			    width: 205px;
			    height: 86px;
			    background: #8AA18C;
			    border-bottom: 1px solid #00843e;
			}
			
			.li-border{
				border-left: 4px solid #19a9d5;
			}
			
			.menu1-default{
				display: block; width: 100%; height: 53px; color: #707783; font-size: 16px;
			}
			.menu1-visited{
				color: #f6f5fa !important; background: #272a34 !important;
			}
			.menu1-ico-1{ background-position: 0 2px !important;}
			.menu1-ico-2{ background-position: 0 -57px !important;}
			.menu1-ico-3{ background-position: 0 -113px !important;}
			.menu1-ico-4{ background-position: 0 -171px !important;}
			/*
			.menu1-ico-5{ }
			.menu1-ico-6{ }
			.menu1-ico-7{ }
			.menu1-ico-8{ }
			.menu1-ico-9{ }
			*/
			#menu ul{ list-style: none;}
			#menu ul li { line-height: 53px;}
			#menu ul li a:hover { color: #f6f5fa; background: #272a34;}
			#menu ul li a i { display: block; background: url(img/ico_left_menu.png) no-repeat; width: 18px; height: 20px; float: left; margin: 16px 14px 0 28px; }
			#menu ul li a i.ico-1 { background-position: -19px 2px;}
			#menu ul li a:hover i.ico-1 { background-position: 0 2px;}
			#menu ul li a i.ico-2 { background-position: -19px -57px;}
			#menu ul li a:hover i.ico-2 { background-position: 0 -57px;}
			#menu ul li a i.ico-3 { background-position: -19px -113px;}
			#menu ul li a:hover i.ico-3 { background-position: 0 -113px;}
			#menu ul li a i.ico-4 { background-position: -19px -171px;}
			#menu ul li a:hover i.ico-4 { background-position: 0 -171px;}
			/*
			#menu ul li a i.ico-5 { background-position: -19px -228px;}
			#menu ul li a:hover i.ico-5 { background-position: 0 -228px;}
			#menu ul li a i.ico-6 { background-position: -19px -283px;}
			#menu ul li a:hover i.ico-6 { background-position: 0 -283px;}
			#menu ul li a i.ico-7 { background-position: -19px -338px;}
			#menu ul li a:hover i.ico-7 { background-position: 0 -338px;}
			#menu ul li a i.ico-8 { background-position: -19px -380px; margin-top: 18px;}
			#menu ul li a:hover i.ico-8 { background-position: 0 -380px;}
			#menu ul li a i.ico-9 { background-position: -19px -411px; margin-top: 20px;}
			#menu ul li a:hover i.ico-9 { background-position: 0 -411px;}
			*/
			#menu ul li div ul li {line-height: 32px;}
			#menu ul li div ul li a {display: block; width: 100%; height: 32px; color: gray; background: #272a34; font-size: 13px; text-align: center; font-weight: 600;}

			/**
			 * section
			 */
			#section{
				margin-left: 205px;
				height: 100%;
			}
			#header{
				height: 86px;
			    border-bottom: 1px solid #e5e4ee;
			}
			#header h2{
				display: block;
			    float: left;
			    font-weight: normal;
			    font-size: 28px;
			    color: #454545;
			    margin-left: 2%;
			    line-height: 86px;
			} 
			#header .header-right{
				float: right;
				margin: 33px 100px 0 0;
			}
			#header .header-right i.ico-user{
				display: inline-block;
			    width: 14px;
			    height: 15px;
			    background: url(img/ico_other.png) no-repeat 0 -24px;
			    font-size: 16px;
			    margin-right: 9px;
			    position: relative;
			    top: 3px;
			}
			#header .header-right a i.ico-tri{
				display: inline-block; width: 9px; height: 5px; background: url(img/ico_other.png) no-repeat -2px 0; margin: 0 0 0 8px; position: relative; top: -3px; transition:transform .4s ease-out;
			}
			#header .header-right div{
				position: absolute;
			    top: 70px;
			    right: 55px;
			    width: 84px;
			    padding: 0 12px;
			    background: #fff;
			}
			#header .header-right div ul{background: #fff; box-shadow: 0 0 10px #e7e6e6;}
			#header .header-right div ul li{
				font-size: 14px; border-bottom: 1px solid #e4e4e4; height: 38px; line-height: 38px; margin: 0 12px;
				text-align: center;
			}
			#content{
				height: 100%;
			}
		</style>
		<script type="text/javascript">
		    function iFrameHeight() {
		        var ifm= document.getElementById("iframepage");
		        var subWeb = document.frames ? document.frames["iframepage"].document :
				ifm.contentDocument;
	            if(ifm != null && subWeb != null) {
	            	ifm.height = subWeb.body.scrollHeight;
	            }
	    	}
		</script> 
	</head>
	<body>
		<div id="aside">
			<div id="logo">
				<a href="#">
					<img src="img/logo1.png" />
				</a>
			</div>
			<div id="menu">
				<ul>
					<li>
						<a href="javascript:void(0);" onclick="showChildren(this, 1);" class="menu1-default">
							<i class="ico-1"></i>用户管理
						</a>
						<div class="hidden ">
							<ul>
								<li><a href="adminToLookUser" target="iframepage">查询用户</a></li>
								<li><a href="adminToAddUser" target="iframepage">添加用户</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="showChildren(this, 2);" class="menu1-default">
							<i class="ico-2"></i>商品管理
						</a>
						<div class="hidden">
							<ul>
								<li><a href="adminToLookGoods" target="iframepage">全部商品</a></li>
								<li><a href="adminToAddGoods" target="iframepage">添加商品</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="showChildren(this, 3);" class="menu1-default">
							<i class="ico-3"></i>订单管理
						</a>
						<div class="hidden">
							<ul>
								<li><a href="adminToLookOrders" target="iframepage">全部订单</a></li>
								<li><a href="adminToLookBehalfPaymentOrders" target="iframepage">待付款</a></li>
								<li><a href="adminToLookBehalfSendGoodsOrders" target="iframepage">待发货</a></li>
								<li><a href="adminToLookWaitConfirmOrders" target="iframepage">待收货</a></li>
								<li><a href="adminToLookApplyForSalesReturnOrders" target="iframepage">退货申请</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="showChildren(this, 4);" class="menu1-default">
							<i class="ico-4"></i>管理员管理
						</a>
						<div class="hidden">
							<ul>
								<li><a href="">新增管理员</a></li>
								<li><a href="">删除管理员</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div id="section">
			<div id="header">
				<h2>网站后台管理系统</h2>
				<div class="header-right">
					<i class="ico-user"></i>当前用户:
					<a href="javascript:void(0);" onclick="showTri();">${sessionScope.adminName }<i class="ico-tri"></i></a>
					<div class="hidden">
						<ul>
							<li><a href="#">修改密码</a></li>
							<li><a href="adminLogout">注销</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="content">
				<iframe scrolling="no" width=100% height=100% id="iframepage" name="iframepage" onLoad="iFrameHeight()" ></iframe>
			</div>
		</div>
		<script src="js/jquery.js"></script>
		<script type="text/javascript" src="js/index.js" ></script>
	</body>
</html>