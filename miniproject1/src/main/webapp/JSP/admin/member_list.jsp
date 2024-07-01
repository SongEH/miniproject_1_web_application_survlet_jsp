<%@page import="vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>

<link rel="stylesheet" href="../../common.css">
<!-- BootStrap 3.x -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function del(f){
		
		// 삭제 확인
		if(confirm("정말 삭제하시겠습니까?") == false) return;
		
		// 삭제 요청
		location.href = "member_delete.do?m_idx=" + f.m_idx.value;
		
	}
</script>
<style type="text/css">
   	#box{
       	width: 1200px;
       	margin: auto; /* 중앙정렬(Horizontal) */
       	margin-top: 20px;
   	}
   	.mycolor{
      	background: #333333;
   	   	color: white;
   	}
   	h3{
   		text-align: center;
   		font-size: 30px;
   		font-weight: bolder;
   	}
</style>
</head>
<body>
	<!-- top -->
	<%@include file="../../header.jsp"%>
	
	
<h3>회원 정보</h3>
<div id="box">
	<table class="table">
		<tr class="mycolor">
			<th>회원번호</th>
			<th>닉네임</th>
			<th>아이디</th>
			<th>이메일</th>
			<th>가입날짜</th>
			<th>구분</th>
			<th>수정</th>
			<th>탈퇴<th>
		</tr>
		
		<c:forEach var="mv" items="${ list }">
			<form>
			<input type="hidden" name="m_idx" value="${ mv.m_idx }">
			<tr>		
				<td>${ mv.m_idx }</td>
				<td>${ mv.m_name }</td>
				<td>${ mv.m_id }</td>
				<td>${ mv.m_email }</td>
				<td>${ mv.m_rdate }</td>
				<td>${ mv.m_type }</td>
				<td><input class="btn btn-success" 	type="button" 	value="수정" 	onclick="regi(this.form)"></td>
				<td><input class="btn btn-danger" 	type="button" 	value="삭제" 	onclick="del(this.form)"></td>
			</tr>
			</form>
		</c:forEach>
		
	</table>
</div>

	<!-- footer -->
	<%@include file="../../footer.jsp"%>
	
</body>
</html>