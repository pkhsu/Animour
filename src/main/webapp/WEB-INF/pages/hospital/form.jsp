<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>加入動物資料</title>
</head>

<body>
	<center>
		<h3>查詢單筆動物醫院清單</h3>
		<form name="selectOneForm" action="/selectonehospital" method="POST">
			醫院ID：<input id='num' name="hospitalid" value="${param.id}"
				type="text" size="14" style="text-align: left"> <input
				type="submit" value="送出">

		</form>
		<br>
		<hr>
		<br>
		<h3>查詢所有動物醫院資料</h3>
		<form name="selectAllForm" action="/selectallhospital" method="POST">
			<input type="submit" value="查詢所有">
		</form>
		<br>
		<hr>
		<br>
		<h3>刪除動物醫院資料</h3>
		<form name="deleteHospitalForm" action="/deletehospital" method="POST">
			醫院ID：<input id='num' name="id" value="${param.id}" type="text"
				size="14" style="text-align: left"> <input type="submit"
				value="送出"> <input type="reset" value="清除">
		</form>
		<br>
		<hr>
		<br>

		<form name="insertHospitalForm" action="/inserthospital" method="POST">
			<h3>新增動物醫院資料</h3>
			<table border="1">
				<tbody>
					<tr bgcolor='tan'>
						<td width="120" height="40">ID:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="id" value="${param.id}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">醫院名稱:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="name" value="${param.name}" type="text"
							size="14" style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">電話:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="tel" value="${param.tel}" type="text"
							size="14" style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">地址:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="addr" value="${param.addr}" type="text"
							size="14" style="text-align: left"></td>
					</tr>


				</tbody>
			</table>
			<input type="submit" value="送出"> 
			<input type="reset"  value="清除"> <br>
			<hr>
			<br>
		</form>
		<form name="updateHospitalForm" action="/updatehospital" method="POST">
			<h3>修改醫院資料</h3>
			<table border="1">
				<tbody>
					<tr bgcolor='tan'>
						<td width="120" height="40">ID:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="id" value="${param.id}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">醫院名稱:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="name" value="${param.name}" type="text"
							size="14" style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">電話:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="tel" value="${param.tel}" type="text"
							size="14" style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">地址:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="addr" value="${param.addr}" type="text"
							size="14" style="text-align: left"></td>
					</tr>


				</tbody>
			</table>
			<input type="submit" value="送出"> <input type="reset"
				value="清除">
		</form>
	</center>
</body>

</html>