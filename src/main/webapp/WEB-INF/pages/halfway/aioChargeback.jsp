<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>會員通知退款</title>
</head>
<body>
	<div align="center">
		<form:form action="" method="POST" id="aio">
			<h2>以下為必填</h2>
			訂單編號 （我們自訂的）
			<form:input type="text" path="MerchantTradeNo" name="會員交易編號"/>
			<br>
			付款後的訂單明細編號（數字）例如：1805110947300136
			<form:input type="text" path="TradeNo" name="allPay的交易編號"/>
			<br>
			退款金額
			<form:input type="text" path="ChargeBackTotalAmount" name="退款金額"/>
			<br>
			<h2>以下為非必填</h2>
			<br>
			備註欄位
			<form:input type="text" path="Remark" name="備註欄位"/>
			<br>
			<input type="submit" value="Submit"/>
			<br>
		</form:form>
		<form method = "GET"  action = "<%=request.getContextPath()%>">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "back to Home"/>
			</td>
		</tr>
	</table>
</form>
	</div>
</body>
</html>