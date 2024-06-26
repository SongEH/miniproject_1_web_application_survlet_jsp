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
		
		let c_content = f.c_content.value.trim();
		
		if(c_content == ''){
			alert("내용을 입력하세요!");
			f.c_content.value="";
			f.c_content.focus();
			return;
		}
		
		f.method = "POST";
		f.action = "comment_modify.do?c_idx="+f.c_idx.value;
		f.submit();
		
	}
</script>
</head>


<body>
	<main>
		 <%
            // c_idx를 요청 파라미터에서 가져오기
            String c_idx = request.getParameter("c_idx");
       	 %>
		<form class="form-signin">
			<input type="hidden" id="c_idx" name="c_idx" value="<%= c_idx %>">
			
			<div class="sign">
				내용
				<input type="text" class="form-control" id="c_content" name="c_content" value="${ cv.c_content }">
			</div><br>
			
			<input type="submit" value="완료" onclick="send(this.form)">
		</form>
	</main>
</body>
</html>