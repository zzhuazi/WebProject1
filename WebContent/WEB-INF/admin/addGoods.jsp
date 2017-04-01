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
			.sub-content form div.goods-pic{
				display: inline-block;
			    border: 1px solid #d8d8d8;
			    padding: 2px;
			    width: 217px;
			    height: 150px;
			    overflow: hidden;
			    position: relative;
			    background:#fff;
			    background-size:100%;
			}
			.sub-content form div.goods-pic input{
				opacity: 0;
			    background: #313541;
			    width: 109px;
			    height: 31px;
			    line-height: 31px;
			    color: #fff;
			    position: absolute;
			    left: 50%;
			    margin-left: -54px;
			    top: 50%;
			    margin-top: -15px;
			    z-index: 9;
			    cursor: pointer;
			}
			.sub-content form div.goods-pic a{
				display: block;
				text-align: center;
			    position: absolute;
			    background: #313541;
			    width: 109px;
			    height: 31px;
			    line-height: 31px;
			    color: #fff;
			    border-radius: 2px;
			    position: absolute;
			    left: 50%;
			    margin-left: -54px;
			    top: 50%;
			    margin-top: -15px;
			    z-index: 8;
			    cursor: pointer;
			}
			.sub-content form div textarea{
				width: 60%;
			    border: 1px solid #d8d8d8;
			    padding: 5px 10px;
			    height: 80px;
			}

			.sub-content form div input.submit{
				margin-top: 60px;
				margin-bottom: 60px;
			    width: 117px;
			    height: 42px;
			    background: #00843e;
			    color: #fff;
			    font-size: 16px;
			}
			.sub-content form div input.submit:hover { background: #0CCEA2;}
		</style>
		<script type="text/javascript" charset="utf8">
			function preview(){

				 var x = document.getElementById("file");
				 var y = document.getElementById("img");
				 if(!x || !x.value || !y) return;
				 alert(x.value);
				 var patn = /\.jpg$|\.jpeg$|\.png$|\.gif$/i;
				 if(patn.test(x.value)){
				  y.src = "file://localhost/" + x.value;
				  //y.background = url("file://localhost/" + x.values);
				  y.style.backgroundImage= x.value; 
				 }else{
				  alert("您选择的似乎不是图像文件。");
				 }

			}
		</script>
	</head>
	<body>
		<div class="sub-content">
			<h2 class="title">添加商品</h2>
			
			<h4>${tip }</h4>
			
			<s:form action="adminAddGoods" enctype="multipart/form-data">
				<s:token></s:token>
				<h5>商品名称</h5>
				<div>
					<s:textfield name="goods.name" />
				</div>
				<h5>商品价格</h5>
				<div>
					<s:textfield name="goods.price" type="number"/>
				</div>
				<h5>商品单位</h5>
				<div class="select">
					<s:select list="#{'件':'件','个':'个'}" name="goods.units">
					</s:select>
				</div>
				<h5>商品库存</h5>
				<div>
					<s:textfield name="goods.stock" type="number" />
				</div>
				<h5>商品类型</h5>
				<div>
					<s:select list="#{'1':'默认','2':'其他'}" name="goods.type">
					</s:select>
				</div>
				<h5>商品图片</h5>
				<div class="goods-pic" id="goodsPic">
					<img alt="" src="img/img-goods-default.jpg" id="img">
					<s:file name="file" type="file" id="file" onchange="preview()"/>
					<a href="javascript:void(0)" onclick="">上传图片</a>
				</div>
				<h5>商品图片</h5>
				<div>
					<s:textarea name="goods.desc" cols="3"/>
				</div>
				<div>
					<s:submit value="添加" class="submit" ></s:submit>
				</div>
			</s:form>
		</div>
	</body>
</html>