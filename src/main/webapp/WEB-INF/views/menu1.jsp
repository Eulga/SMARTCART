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

    </style>
</head>
<body>
 <a href="/">
 <img src="${pageContext.request.contextPath}/resources/img/logo1.png" style="display: block; margin: 0 auto;" align=middle /></a>
<h2 align=right> 21611829 송민근 </h2>
<h2 align=right> 21813639 정이준 </h2>
<br>
<br>


 <div class="b" style="text-align : center;" >
 <a href="result1"><!--1층-->
 <img class="b" src="${pageContext.request.contextPath}/resources/img/1f.png" width=400 height=400 align=middle />
 </a>
  <a href="result2"><!--2번 : 세일물품-->
 <img class=img1 src="${pageContext.request.contextPath}/resources/img/2f.png" width=400 height=400 align=middle />
  </a>
 </div>
</body>
</html>