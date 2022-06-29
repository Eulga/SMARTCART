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

<!-- 
반복문 실행
itemList에 있는것을 하나씩꺼내 표시하느데
꺼낸것에 이름을 item라는 변수명으로 지정하여 아래에서 사용
아이템이라는 이름으로 컨트롤
 -->
 <div> 
 	<c:forEach var="item" items="${itemList}">
 		<p>상품이름 : ${item.itemName }</p>
 		<p>가격 : ${item.itemPrice }</p>
 		<p>판매여부 : 
 		<c:choose>
	 		<c:when test="${item.itemDisplay eq true }">
	 			O
	 		</c:when>
	 		<c:otherwise>
	 			X
	 		</c:otherwise>
 		</c:choose>
 		</p>
 		<p>진열여부 : 
 		<c:choose>
	 		<c:when test="${item.itemSell eq true }">
	 			O
	 		</c:when>
	 		<c:otherwise>
	 			X
	 		</c:otherwise>
 		</c:choose>
 		<br>
 		<br>
 		<br>
 		─────────────────────
 		</p>
 		<br>
 	</c:forEach>
 </div>

</body>
</html>
