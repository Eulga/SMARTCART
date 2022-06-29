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


 <div> 
 	<c:forEach var="itemOption" items="${itemOptionList}">
 		<p>상품이름 : ${itemOption.item.itemName }</p>
 		<p>옵션이름 : ${itemOption.option.optName }</p>
 		<p>옵션값 : ${itemOption.option.optValue }</p>
 		<br>
 	</c:forEach>
 </div>


</body>
</html>
