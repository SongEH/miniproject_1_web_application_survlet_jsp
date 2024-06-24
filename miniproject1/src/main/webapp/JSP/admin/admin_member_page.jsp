<%@page import="vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script type="text/javascript">
	function send(f){
		
		let m_name 	= f.m_name.value.trim();
		let m_email = f.m_email.value.trim();
		let m_intro = f.m_intro.value.trim();
		
		if(m_name == ''){
			alert("닉네임을 입력하세요!");
			f.m_name.value="";
			f.m_name.focus();
			return;
		}
		
		if(m_email == ''){
			alert("이메일을 입력하세요!");
			f.m_email.value="";
			f.m_email.focus();
			return;
		}
		
		f.method = "POST";
		f.action = "member_modify.do?m_idx="+f.m_idx.value;
		f.submit();
		
	}
</script>
</head>


<body>
	<main>
		 <%
            // m_idx를 요청 파라미터에서 가져오기
            String m_idx = request.getParameter("m_idx");
       	 %>
		<form class="form-signin">
			<input type="hidden" id="m_idx" name="m_idx" value="<%= m_idx %>">
			<div class="sign">
				닉네임
				<input type="text" class="form-control" id="m_name" name="m_name" value="${ mv.m_name }">
			</div><br>
			
			<div class="sign">
				이메일
				<input type="email" class="form-control" id="m_email" name="m_email" value="${ mv.m_email }">
			</div><br>
			
			<div>
				1줄 소개
				<textarea class="form-control" rows="5" id="m_intro" name="m_intro">${ mv.m_intro }</textarea>
			</div><br>
			<input type="submit" value="완료" onclick="send(this.form)">
		</form>

	
	
	</main>

</body>
</html>