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
            height: 620px;
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


<center><img src="${pageContext.request.contextPath}/resources/img/2ff.png"  align=middle /></center>
<div class="mydiv1">
<br>

<a href="itemList?cateAtt=pc">
<img src="${pageContext.request.contextPath}/resources/img/cu1.png" width=400 height=150 align=middle /></a>
<a href="itemList?cateAtt=가전">
<img src="${pageContext.request.contextPath}/resources/img/cu2.png" width=400 height=150 align=middle /></a>
<a href="itemList?cateAtt=장난감">
<img src="${pageContext.request.contextPath}/resources/img/cu3.png" width=400 height=150 align=middle /></a>
<br>
<br>
<br>
<br>
<br>
<a href="itemList?cateAtt=서적">
<img src="${pageContext.request.contextPath}/resources/img/cu4.png" width=400 height=150 align=middle /></a>
<a href="itemList?cateAtt=의류">
<img src="${pageContext.request.contextPath}/resources/img/cu5.png" width=400 height=150 align=middle /></a>
<a href="itemList?cateAtt=신발">
<img src="${pageContext.request.contextPath}/resources/img/cu6.png" width=400 height=150 align=middle /></a>
</div>




 </ul>
</body>
</html>
