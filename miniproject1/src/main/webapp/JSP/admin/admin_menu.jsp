<%@page import="util.Util"%>
<%@page import="vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="util" class="util.Util"></jsp:useBean>
<%
	// 로그인 확인
	if (!Util.isLogIn(request)) {
		// 로그인이 되어 있지 않을 경우
	   	response.sendRedirect("mainpage2(login_before).jsp");
   	} 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- BootStrap 3.x -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
   	#box{
       	width: 1200px;
       	margin: auto; /* 중앙정렬(Horizontal) */
       	margin-top: 20px;
   	}
   
   	h3{
   		text-align: center;
   		font-size: 30px;
   		font-weight: bolder;
	}
	
	ul{
		list-style: none;
	}
</style>
</head>
<body>
<div id="box">
	<h3>관리자 메뉴</h3>
	<div class="panel panel-primary">
		<div class="panel-heading">회원관리</div>
		<div class="panel-body">
		<ul>
			<li><a href="memberlist.do">회원 관리 페이지</a></li>
		</ul>
		</div>
	</div>

</div>
</body>
</html>