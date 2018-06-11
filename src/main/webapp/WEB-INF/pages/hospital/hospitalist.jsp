<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
<!--text-->
td,th{
width:150px;
boder:3px double black;
text-align: center;
margin:auto;
padding:10px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>動物醫院資料查詢</title>
</head>
<body>



<h2>查詢一筆醫院資料</H2>
	<table>
		<tbody>
			<tr>
				<th>醫院I D</th>
				<th>醫院名稱</th>
				<th>醫院電話</th>
				<th>醫院地址</th>
			</tr>
				<tr>
					<td>${onehospital.id}</td>
					<td>${onehospital.name}</td>
					<td>${onehospital.tel}</td>
					<td>${onehospital.addr}</td>
				</tr>
		</tbody>

	</table>
	<hr>


	<h2>所有醫院資料</H2>
	<table>
		<tbody>
			<tr>
				<th>醫院I D</th>
				<th>醫院名稱</th>
				<th>醫院電話</th>
				<th>醫院地址</th>
			</tr>
			<c:forEach var="hosp" items="${alllist}">
				<tr>
					<td>${hosp.id}</td>
					<td>${hosp.name}</td>
					<td>${hosp.tel}</td>
					<td>${hosp.addr}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<hr>

	<h3>刪除一筆醫院資料</h3>
	<c:if test="${!empty delete}">
	刪除醫院ID：　${delete}的資料
	</c:if>
	<c:if test="${empty delete}">
	沒有　${delete}的資料可以刪除
	
	</c:if>
	
	<hr>

	<h3>新增一筆醫院資料</h3>
	<table>
		<tbody>
			<tr>
				<th>醫院I D</th>
				<th>醫院名稱</th>
				<th>醫院電話</th>
				<th>醫院地址</th>
			</tr>
				<tr>
					<td>${insert.id}</td>
					<td>${insert.name}</td>
					<td>${insert.tel}</td>
					<td>${insert.addr}</td>
				</tr>
		</tbody>
	</table>
	<hr>

	<h3>修改一筆醫院資料</h3>
	<c:if test="${!empty update}">
	修改醫院ID：　${update.id}的資料
	</c:if>
	<table> 
		<tbody>
			<tr>
				<th>醫院I D</th>
				<th>醫院名稱</th>
				<th>醫院電話</th>
				<th>醫院地址</th>
			</tr>
				<tr>
					<td>${update.id}</td>
					<td>${update.name}</td>
					<td>${update.tel}</td>
					<td>${update.addr}</td>
				</tr>
		</tbody>
	</table>
	<hr>
</body>
</html>