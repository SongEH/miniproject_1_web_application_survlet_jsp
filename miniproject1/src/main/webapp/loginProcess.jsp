<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="dao.*" %>  
<%@ page import="vo.*" %>       

<%
	out.println("<h1>엥</h1>");
	String m_id = request.getParameter("m_id");
    String m_pw = request.getParameter("m_pw");
    //String remember = request.getParameter("remember");
    String remember = "1";
    
   
    
    // DB에서 회원 정보를 확인
        
    MemberVo mv = MemberDao.getinstance().login(m_id, m_pw, remember, request, response);
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    try {        
    	  if (mv != null) {
              // 로그인 성공 시 세션에 회원 정보를 저장
              session = request.getSession();
              session.setAttribute("member", mv);
              response.sendRedirect("main-page.jsp"); // 로그인 후 메인 페이지로 이동
          } else {
              // 로그인 실패 시 로그인 페이지로 리다이렉트
        	  out.println("<script>alert('로그인 실패! 사용자명 또는 비밀번호를 확인해주세요.'); history.back();</script>");
          }
    } 
    
    catch (Exception e) {
        e.printStackTrace();
        out.println("<p>오류가 발생하였습니다.</p>");
    } 
    
    
    finally {
        if (rs != null) try { rs.close(); } catch (SQLException e) { /* ignored */ }
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { /* ignored */ }
        if (conn != null) try { conn.close(); } catch (SQLException e) { /* ignored */ }
    }
%>
