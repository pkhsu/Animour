<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ShoppingCart</title>
</head>
<body>
	<span class="navbar-brand"> <i class="fa fa-shopping-cart"></i>
		<span class="h6"> <c:if
			test="${sessionScope.cart != null && sessionScope.cart.size() gt 0}">
                       	 共${sessionScope.cart != null ? sessionScope.cart.size() : 0}筆
                       </c:if>
                       </span></span>
					<c:if test="${sessionScope.cart != null && sessionScope.cart.size() gt 0}">
                       	<a class="navbar-brand" href="/cart/index">
	                        <c:set var="total" value="0"></c:set>
	                        <c:forEach var="cartItem" items="${sessionScope.cart}">
	                            <c:set var="total" value="${total + cartItem.product.price * cartItem.quantity}"></c:set>
	                        </c:forEach>
                        	<span class="h6">金額 ：${total}</span>
                   		</a>
                   	</c:if>
</body>
</html>