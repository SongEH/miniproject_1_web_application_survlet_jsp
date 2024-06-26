<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 작성</title>
</head>
<body>
    <h2>게시글 작성</h2>
    <form action="postProcess.jsp" method="post">
        <label for="title">제목:</label>
        <input type="text" id="title" name="title" required><br><br>

        <label for="content">내용:</label><br>
        <textarea id="content" name="content" rows="5" cols="40" required></textarea><br><br>

        <label>게시글 타입:</label><br>
        <input type="radio" id="normal" name="type" value="normal" checked>
        <label for="normal">일반</label><br>
        <input type="radio" id="notice" name="type" value="notice">
        <label for="notice">공지</label><br><br>

        <input type="submit" value="게시글 작성">
    </form>
</body>
</html>