<%@page import="vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVo mv = (MemberVo) session.getAttribute("member");
	int m_type = mv.getM_type();
	if (m_type != 2){
		response.sendRedirect("../main/mainpage(login_after).jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>관리자 메뉴</h3>
<ul>
	<li><a href="memberlist.do">회원 관리 페이지</a></li>
</ul>
</body>
</html>