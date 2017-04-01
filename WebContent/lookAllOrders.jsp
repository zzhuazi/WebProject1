<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>查看订单页面</title>
</head>
<body>
	<h1>查看订单</h1>
	<s:debug></s:debug>
	<table>
		<thead>
			<tr>
				<td>id</td>
				<td>no</td>
				<td>uid</td>
				<td>gid</td>
				<td>number</td>
				<td>remark</td>
				<td>status</td>
				<td>modTime</td>
			</tr>
		</thead>
		<tbody>
			
			<s:iterator value="orders" var="order" >
				<tr>
					<td>${id }</td>
					<td>${no }</td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</body>
</html>