<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Smartcart</title>
    <style>
    body {background-image:url("${pageContext.request.contextPath}/resources/img/bg.jpeg"); background-size: cover; background-repeat:no-repeat; background-attachment: fixed;
          margin-top:50px; font-family:HY백송B;}
	div {  border: 8px solid black; width:700px; height:700px; background-color:white; overflow:scroll; padding:30px; margin:0 auto; font-size:25pt;}

    </style>
</head>
<body>
 <a href="/">
 <img src="${pageContext.request.contextPath}/resources/img/logo1.png" style="display: block; margin: 0 auto;" align=middle /></a>
<h2 align=right> 21611829 송민근 </h2>
<h2 align=right> 21813639 정이준 </h2>
<br>


<center><img src="${pageContext.request.contextPath}/resources/img/tk.png"  align=middle /></center>
 
 	<div>
 		<c:forEach var="sale" items="${saleList }">
 			<c:if test="${sale.saleType eq '특가'}">
 				<p>할인명 : ${sale.saleName }</p>
 				<p>할인기간 : ${sale.saleDate }</p>
 				<p>할인율 : ${sale.salePercent }</p>
 				<p>가격 : ${sale.salePrice }</p>
 				<br>
 				─────────────────────
 			</c:if>
 		</c:forEach>
 	</div>
 <center><img src="${pageContext.request.contextPath}/resources/img/tk2.png"  align=middle /></center>
 	<div>
 		<c:forEach var="sale" items="${saleList }">
 			<c:if test="${sale.saleType eq '일반'}">
 				<p>할인명 : ${sale.saleName }</p>
 				<p>할인기간 : ${sale.saleDate }</p>
 				<p>할인율 : ${sale.salePercent }</p>
 				<p>가격 : ${sale.salePrice }</p>
 				<br>
 				─────────────────────
 			</c:if>
 		</c:forEach>
 	</div>

</body>
</html>
