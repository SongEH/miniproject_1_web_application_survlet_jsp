<%@page import="vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// session으로 MemberVo에 저장한 정보 가져오기 
	MemberVo mv = (MemberVo) session.getAttribute("member");

	// 만약 세션에 MemberVo 객체가 없다면 새로운 객체를 생성 (null 체크)
	if (mv == null) {
	    mv = new MemberVo();
	}
	
    // m_name 값을 가져옴 (기본값은 빈 문자열로 설정)
    String nickname = mv.getM_name() != null ? mv.getM_name() : "";
    // m_email 값을 가져옴 (기본값은 빈 문자열로 설정)
    String email = mv.getM_email() != null ? mv.getM_email() : "";
 	// m_intro 값을 가져옴 (기본값은 빈 문자열로 설정)
    String intro = mv.getM_intro() != null ? mv.getM_intro() : "";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/css">
.form-signin {
    width: 100%;
    max-width: 330px;
    padding: 15px;
	margin : auto;
}
form{
	display: block;
	margin-top: 0em;
}
body{
	display: flex;
	padding-top: 40px;
	padding-bottom: 40px;
	
}

.form-check {
    display: block;
    min-height: 1.5rem;
    padding-left: 1.5em;
    margin-bottom: 0.125rem;
}
</script> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>


<body>
	<main >
		<form class="form-signin">
			<div class="sign">
				닉네임
				<input type="text" class="form-control" id="nickname" name="nickname" value="<%= nickname %>">
			</div><br>
			
			<div class="sign">
				이메일
				<input type="email" class="form-control" id="email" name="nickname" value="<%= email %>">
			</div><br>
				
			<div class="sign">
				생년월일
				
			</div><br>
				
			<div>
				성별
				<div class="form-check">
					<input type="radio" class="form-check-input" id="man" name="gendeer" value="남자">
					<label class="form-check-label" for="man">남자</label>
				</div>
				<div class="form-check">
					<input type="radio" class="form-check-input" id="woman" name="gendeer" value="남자">
					<label class="form-check-label" for="woman">여자</label>
				</div>
				<div class="form-check">
					<input type="radio" class="form-check-input" id="gender_null" name="gendeer" value="남자">
					<label class="form-check-label" for="gender_null">선택안함</label>
				</div>
			</div><br>
				
			<div>
				1줄 소개
				<textarea class="form-control" rows="5" id="comment"><%= intro %></textarea>
			</div><br>
				
			<div>
				SNS 링크 
				<input type="text" class="form-control" id="sns" name="sns">
			</div>	<br> <br>
							
			
			<button type="button" id="drop" class="btn" onclick="탈퇴하기"> 탈퇴하기</button>
			<br>
			<input type="submit" value="완료">
			<a href="../main/mainpage(login_after).jsp" class="btn btn-warning btn-md" >취소</a>
			
		</form>

	
	
	</main>

</body>
</html>