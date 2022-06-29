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

    h1 {text-align:center; font-family:문체부 궁체 흘림체; text-shadow:10px 10px 15px Pink;}
    ul {list-style-type:none;}
    li {font-size:18pt; text-shadow:7px 7px 10px;}
    a {text-decoration:none;
	img1  {position:absolute;}
	.b {
        width: 400px;
        margin: 0px auto;
		transition: all 2.2s linear;
		overflow: hidden;
      }
	.b:hover img {transform: scale(1.0);}
}
    </style>
</head>
<body>
<img src="${pageContext.request.contextPath}/resources/img/logo1.png" style="display: block; margin: 0 auto;" align=middle />
<h2 align=right> 21611829 송민근 </h2>
<h2 align=right> 21813639 정이준 </h2>
<br>
<br>
<ul> 
 <li>
 <div class="b" style="text-align : center;" >
 <a href="menu1"><!--1번 : 층별물품검색-->
 <img class="b" src="${pageContext.request.contextPath}/resources/img/menu1.png" width=300 height=300 align=middle /> 
 </a>
  <a href="menu2"><!--2번 : 세일물품-->
 <img class=img1 src="${pageContext.request.contextPath}/resources/img/menu2.png" width=300 height=300 align=middle />
  </a>
 </div></li>
 <br>
 
 <li>
 <div style="text-align : center;">
 <a href="menu3"><!--3번 : 재고검색-->
 <img class=img1 src="${pageContext.request.contextPath}/resources/img/menu3.png" width=300 height=300 align=middle />
  </a>
  <a href="menu4"><!--4번 : 생각한번 해보자-->
 <img class=img1 src="${pageContext.request.contextPath}/resources/img/menu4.png" width=300 height=300 align=middle />
 </a></div></li>
 </ul>
</body>
</html>