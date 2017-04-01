<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/reset.css" />
<style type="text/css">
.sub-content {
	width: 98%;
	height: 100%;
	margin: 0px auto 0 auto;
	background: #fff;
	padding-left: 20px;
}

.sub-content::after {
	content: "";
	clear: both;
}

.sub-content .title {
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
.goods {
	float: left;
	width: 308px;
	height: 350px;
	background: #fff;
	border: 1px solid #e4e3e6;
	margin: 10px 0 10px 2%;
	position: relative;
}
.goods .goods-img{
	width: 100%;
	height: 199.61px;
}
.goods .goods-img a img{
	display: block;
	margin: 0px auto;
	width: auto;
	height: 199.61px;
}
.goods .goods-info {
	width: 93%;
	margin: 10px auto;
	position: relative;
	line-height: 21px;
}

.goods .goods-info h3 {
	display: block;
	width: 140px;
	float: left;
	color: #1f1f1f;
	font-size: 16px;
	font-weight: normal;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.goods .btn-option a {
	display: block;
	width: 117px;
	height: 42px;
	border-radius: 2px;
	text-align: center;
	line-height: 42px;
	font-size: 16px;
}

div.goods div.descr {
	width: 93%;
	margin: 0 auto;
}

div.goods div.descr p {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

div.goods div.btn-option {
	margin-top: 40px;
	padding-left: 10px;
	padding-right: 10px;
	padding-bottom: 10px;
}

div.goods div.btn-option a.update {
	float: left;
	background: #00843e;
	color: #fff;
}

div.goods div.btn-option a.delete {
	float: right;
	background: #ebebeb;
	color: #7c7c7c;
}
</style>
</head>
<body>
	<div class="sub-content">
		<h2 class="title">所有商品</h2>
		<h4>${tip }</h4>
		<div>
			<s:sort comparator="goodsDateComparator" source="#request.allGoods">
			<s:iterator var="goods" >
			<div class="goods">
				<div class="goods-img">
					<a href="#"> <img src="${path }" width="100%" />
					</a>
				</div>
				<div class="goods-info">
					<h3>${name }</h3>
					<span>${price }</span> <span>${stock }</span> <span>${units }</span> <span>${type }</span>
				</div>
				<div class="descr">
					<p>${desc }</p>
				</div>
				<div class="btn-option">
					<a href="adminToUpdateGoods?adminVo.goods.id=${id }" class="update">修改</a> 
					<a href="adminDeleteGoods?gid=${id }" class="delete">删除</a>
				</div>
			</div>
			</s:iterator>
			</s:sort>
		</div>
	</div>
	<div style="height: 10px;"></div>
</body>
</html>
