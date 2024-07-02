<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>비밀번호 변경</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#newPassword, #newPasswordr").keyup(function(){
                var newPassword = $("#newPassword").val();
                var newPasswordr = $("#newPasswordr").val();
                
                if(newPassword != newPasswordr) {
                    $("#passwordMismatch").text("입력하신 비밀번호가 다릅니다.");
                    $("#submitBtn").prop('disabled', true);
                } else {
                    $("#passwordMismatch").text("");
                    $("#submitBtn").prop('disabled', false);
                }
            });
        });
    </script>
</head>
<body>
<div class="container">
    <h2>비밀번호 변경</h2>
    <form action="changepassword.do" method="post">
        <div class="form-group">
            <label for="oldPassword">현재 비밀번호:</label>
            <input type="password" class="form-control" id="oldPassword" name="oldPassword" required>
        </div>
        <div class="form-group">
            <label for="newPassword">새 비밀번호:</label>
            <input type="password" class="form-control" id="newPassword" name="newPassword" required>
        </div>
        <div class="form-group">
            <label for="newPasswordr">새 비밀번호 확인:</label>
            <input type="password" class="form-control" id="newPasswordr" name="newPasswordr" required>
            <span id="passwordMismatch" class="text-danger"></span>
        </div>
        <input type="hidden" name="m_idx" value="${sessionScope.member.m_idx}">
        <button type="submit" class="btn btn-primary" id="submitBtn">비밀번호 변경</button>
    </form>
    <br>
    <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger">${errorMessage}</div>
    </c:if>
</div>
</body>
</html>