<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dao.*" %>  
<%@ page import="vo.*" %> 
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Member List</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 8px;
        }
    </style>
</head>
<body>
    <h2>Member List</h2>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <!-- 추가적인 필드들 -->
            <!-- <th>Password</th>
            <th>Phone</th> -->
        </tr>
        
        <% 
            try {          
                List<MemberVo> memberList = memberDao.getinstance().selectMemberList();

                // 회원 목록 출력
                for (MemberVo member : memberList) {
                    out.println("<tr>");
                    out.println("<td>" + member.getM_id() + "</td>");
                    out.println("<td>" + member.getM_name() + "</td>");
                    out.println("<td>" + member.getM_email() + "</td>");
                    // 추가적인 필드들 출력
                    out.println("</tr>");
                }
                
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            }
        %>
    </table>
    
    <br>
    <a href="editMember.jsp">Add New Member</a>
    
</body>
</html>
