<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="dao.*" %>
<%@ page import="util.*" %>
<%@ page import="vo.*" %>
<%
    // 세션에서 사용자 ID 가져오기
    String m_id = (String) session.getAttribute("m_id");

	
	// SQL 실행
    int res = memberDao.getinstance().memberDelete(m_id);
	
    if(res == 1) {
		System.out.println("삭제 성공!");
	} else { 
		System.out.println("삭제 실패");
	}
%>

