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
	
	#wrapper { 
    border: 15px solid black;
    padding: 1px 20px;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translateX(-50%);
    width: 450px; height: 150px;
    
    display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	} 
	
	button{
	width: 100%;
	height: 80px;
	border: 0px
	background: #1b5ac2;
	outline: none;
	float: right;
	color: #ffffff
	font-color: black;
	font-size: 20px;
	}
	
	div{
	position: fixed;
	height: 40px;
	width: 400px;
	border: 1px solid #1b5ac2;
	background: #BDBDBD;
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

<div id="wrapper">
	<form action="searchOption" method="post">
		<input name="itemName" style="font-size: 16px; width: 425px; padding: 10px; border: 0px;  outline : none; float: left;" type="text" placeholder="검색하실 재고의 물품을 입력하시오" >
		<button>검색</button>
	</form>
</div>



 </ul>
</body>
</html>
