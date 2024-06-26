<%@page import="util.Util"%>
<%@page import="vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="util" class="util.Util"></jsp:useBean>
<%
	if (!Util.isLogIn(request)) {
	   	response.sendRedirect("mainpage(admin).jsp");
   	} else {
		MemberVo mv = (MemberVo) session.getAttribute("member");
		int m_type = mv.getM_type();
		if (m_type != 2){
			response.sendRedirect("../main/mainpage(login_after).jsp");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<!-- BootStrap 3.x -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function del(f){
		
		// 삭제 확인
		if(confirm("정말 삭제하시겠습니까?") == false) return;
		
		// 삭제 요청
		location.href = "comment_delete.do?c_idx=" + f.c_idx.value;
		
	}
	function regi(f){
		location.href = "comment_modify_form.do?c_idx=" + f.c_idx.value;
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
<h3>회원 정보</h3>
<div id="box">
	<table class="table">
		<tr class="mycolor">
			<th>댓글번호</th>
			<th>내용</th>
			<th>등록일자</th>
			<th>수정일자</th>
			<th>게시판번호</th>
			<th>회원번호</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<tr>
		<c:forEach var="cv" items="${ list }">
			<tr>
				<form>
					<input type="hidden" name="c_idx" value="${ cv.c_idx }">
					<td>${ cv.c_idx }</td>
					<td>${ cv.c_content }</td>
					<td>${ cv.c_rdate }</td>
					<td>${ cv.c_mdate }</td>
					<td>${ cv.p_idx }</td>
					<td>${ cv.m_idx }</td>
					<td><input class="btn btn-success" 	type="button" 	value="수정" 	onclick="regi(this.form)"></td>
					<td><input class="btn btn-danger" 	type="button" 	value="삭제" 	onclick="del(this.form)"></td>
				</form>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>
