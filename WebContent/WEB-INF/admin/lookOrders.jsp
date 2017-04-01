<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/paging.css" />
		<style type="text/css">
			.sub-content{
				width: 95%;
				height: 100%;
			    margin: 0px auto 0 auto;
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
			.sub-content .user-info{
				margin: 50px auto;
			    background: #fff;
			    border: 1px solid #dbd9e1;
			}
			.sub-content .user-info table{
				width: 98%;
    			margin: 0 auto;
			}
			.sub-content .user-info .thead{ width 100%; border-bottom: 1px solid #f1eff6;}
			.sub-content .user-info table th{
				height: 48px;
			    background: #fdfdfd;
			    font-weight: normal;
			    font-size: 16px;
			    color: #363636;
			}
			.sub-content .user-info td{
				color: #545454;
			    padding: 15px 0;
			    border-bottom: 1px solid #f6f5fa;
			}
			.sub-content .user-info .td-1{ width: 20%; text-align: left; padding-left: 1%;}
			.sub-content .user-info .td-2{ width: 17%; text-align: left;}
			.sub-content .user-info .td-3{ width: 10%; text-align: center;}
			.sub-content .user-info .td-4{ width: 8%; text-align: center;}
			.sub-content .user-info .td-5{ width: 15%; text-align: center;}
			.sub-content .user-info .td-6{ width: 15%; text-align: center;}
			.sub-content .user-info .td-7{ width: 15%; text-align: center;}
			
			.sub-content .user-info .td-7 a{color: #fe990b; border: 1px solid #fe990b; padding: 0 9px; height: 21px; line-height: 21px;}
			.sub-content .user-info .td-7 a:hover{ background: #fe990b; color: #fff;}
		</style>
	</head>
	<body>
		<div class="sub-content">
			<h2 class="title">订单管理</h2>
			
			<h4>${tip }</h4>
			
			<div class="user-info">
				<div class="thead">
					<table>
						<thead>
							<tr>
								<th class="td-1">订单编号</th>
								<th class="td-2">用户邮箱</th>
								<th class="td-3">商品名称</th>
								<th class="td-4">购买数量</th>
								<th class="td-5">备注</th>
								<th class="td-6">提交时间</th>
								<th class="td-7">操作</th>
							</tr>
						</thead>
					</table>
				</div>
				<table>
					<tbody>
						<s:sort comparator="orderDateComparator" source="#request.allOrders">
						<s:iterator>
						<tr>
							<td class="td-1">${no }</td>
							<td class="td-2">${user.email }</td>
							<td class="td-3">${goods.name }</td>
							<td class="td-4">${number }</td>
							<td class="td-5">${remark }</td>
							<td class="td-6">${modTime }</td>
							<td class="td-7">
								
								<s:if test="status==2">
									等待买家付款
								</s:if >
								<s:elseif test="status==3">
									交易之前买家删除订单
								</s:elseif>
								<s:elseif test="status==4">
									<a href="adminDealWithOrder?status=7&oid=${id }">确认订单</a>
									<a href="adminDealWithOrder?status=6&oid=${id }">拒绝订单</a>
								</s:elseif>
								<s:elseif test="status==5">
									买家取消订单
								</s:elseif>
								<s:elseif test="status==6">
									交易失败，管理员拒绝
								</s:elseif>
								<s:elseif test="status==7">
									等待买家确认收货
								</s:elseif>
								<s:elseif test="status==8">
									<a href="adminDealWithOrder?status=9&oid=${id }">同意退货</a>
									<a href="adminDealWithOrder?status=7&oid=${id }">拒绝退货</a>
								</s:elseif>
								<s:elseif test="status==9">
									交易失败，买家退货退款
								</s:elseif>
								<s:elseif test="status==10">
									交易成功
								</s:elseif>
								<s:elseif test="status==11">
									交易成功，用户已删除订单记录
								</s:elseif>
								<s:elseif test="status==12">
									交易失败
								</s:elseif>
								<s:elseif test="status==13">
									交易失败，用户已删除订单记录
								</s:elseif>
							</td>
						</tr>
						</s:iterator>
						</s:sort>
					</tbody>
				</table>
			</div>
		</div>
		<div style="height: 10px;"></div>
		<div class="paging">
			<ul>
				<li>
					<s:if test="page > 1">
						<a href="adminToLookOrders?page=${page-1 }">上一页</a>
					</s:if>
					<s:else>
						<a>这是第一页</a>
					</s:else>
				</li>
				<s:bean name="org.apache.struts2.util.Counter">
					<s:param name="first" value="%{page}"/>
					<s:param name="last" value="5"/>
					<s:param name="last" value="%{totalPage}"/>
					<s:iterator var="p">
						<li>
							<a href="adminToLookOrders?page=${p }">
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
						<a>这是最后一页了</a>
					</s:else>
				</li>
			</ul>
		</div>
	</body>
</html>