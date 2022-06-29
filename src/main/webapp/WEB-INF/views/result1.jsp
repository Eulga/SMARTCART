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
	
	.mydiv1{
            border: 10px solid black;
            width: 1230px;
            height: 570px;
            background: #EAEAEA;
			margin:0 auto;
			
			font-size:40px;
        }
	td {

	}


    </style>
</head>
<body>
 <a href="/">
 <img src="${pageContext.request.contextPath}/resources/img/logo1.png" style="display: block; margin: 0 auto;" align=middle /></a>
<h2 align=right> 21611829 송민근 </h2>
<h2 align=right> 21813639 정이준 </h2>
<br>
<br>


<center><img src="${pageContext.request.contextPath}/resources/img/1ff.png"  align=middle /></center>
<div class="mydiv1">

<a href="itemList?cateAtt=채소">
<img src="${pageContext.request.contextPath}/resources/img/bu.png" width=400 height=150 align=middle /></a>
<a href="itemList?cateAtt=육류">
<img src="${pageContext.request.contextPath}/resources/img/bu1.png" width=400 height=150 align=middle /></a>
<a href="itemList?cateAtt=수산물">
<img src="${pageContext.request.contextPath}/resources/img/bu2.png" width=400 height=150 align=middle /></a>
<br>
<br>
<a href="itemList?cateAtt=음료">
<img src="${pageContext.request.contextPath}/resources/img/bu3.png" width=400 height=150 align=middle" /></a>
<br>
<br>
<a href="itemList?cateAtt=주방">
<img src="${pageContext.request.contextPath}/resources/img/bu4.png" width=400 height=150 align=middle /></a>
<a href="itemList?cateAtt=잡화">
<img src="${pageContext.request.contextPath}/resources/img/bu5.png" width=400 height=150 align=middle /></a>
<a href="itemList?cateAtt=청소">
<img src="${pageContext.request.contextPath}/resources/img/bu6.png" width=400 height=150 align=middle /></a>
</div>




 </ul>
</body>
</html>
