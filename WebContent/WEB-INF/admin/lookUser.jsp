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
			    margin: 0px auto;
			    background: #fff;
			    padding-left: 20px;
			}
			.sub-content .title{
				display: block;
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
			.sub-content .user-info{
				margin: 50px auto 0px;
			    background: #fff;
			    border: 1px solid #dbd9e1;
			}
			.sub-content .user-info table{
				display: block;
				width: 98%;
    			margin: 0 auto;
			}
			.sub-content .user-info table thead, .sub-content .user-info table tbody, .sub-content .user-info table tr{
				display: block;
				width: 100%;
			}
			.sub-content .user-info .thead{ width 100%; border-bottom: 1px solid #f1eff6;}
			.sub-content .user-info table th{
				display: inline-block;;
				height: 48px;
				line-height: 48px;
			    background: #fdfdfd;
			    font-weight: normal;
			    font-size: 16px;
			    color: #363636;
			}
			.sub-content .user-info td{
				display: inline-block;
				color: #545454;
			    padding: 15px 0;
			}
			.sub-content .user-info .td-1{ width: 8%; text-align: left; padding-left: 1%;}
			.sub-content .user-info .td-2{ width: 20%; text-align: left;}
			.sub-content .user-info .td-3{ width: 20%; text-align: center;}
			.sub-content .user-info .td-4{ width: 10%; text-align: center;}
			.sub-content .user-info .td-5{ width: 20%; text-align: center;}
			.sub-content .user-info .td-6{ width: 19%; text-align: center;}
			
			.sub-content .user-info .td-6 a{color: #fe990b; border: 1px solid #fe990b; padding: 0 9px; height: 21px; line-height: 21px;}
			.sub-content .user-info .td-6 a:hover{ background: #fe990b; color: #fff;}
		</style>
	</head>
	<body>
		<div class="sub-content">
			<h2 class="title">查询用户</h2>
			<h4>${tip }</h4>
			<div class="user-info">
				<div class="thead">
					<table>
						<thead>
							<tr>
								<th class="td-1">用户ID</th>
								<th class="td-2">账号名称</th>
								<th class="td-3">账号邮箱</th>
								<th class="td-4">账号余额</th>
								<th class="td-5">注册时间</th>
								<th class="td-6">操作</th>
							</tr>
						</thead>
					</table>
				</div>
				<table>
					<tbody>
						<s:sort comparator="userDateComparator" source="#request.allUser">
						<s:iterator var="user" >
						<tr>
							<td class="td-1">${id }</td>
							<td class="td-2">${name }</td>
							<td class="td-3">${email }</td>
							<td class="td-4">${balance }</td>
							<td class="td-5">${regTime }</td>
							<td class="td-6"><a href="adminToUpdateUser?adminVo.user.id=${id }" target="iframepage">修改</a></td>
						</tr>
						</s:iterator>
						</s:sort>
					</tbody>
				</table>
			</div>
		</div>
		<div style="height: 10px;"></div>
	</body>
</html>