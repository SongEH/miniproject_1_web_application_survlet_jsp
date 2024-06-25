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
		
		let p_cate 	= f.p_cate.value.trim();
		let p_title = f.p_title.value.trim();
		let p_content = f.p_content.value.trim();
		let p_type = f.p_type.value.trim();
		
		if(p_title == ''){
			alert("제목을 입력하세요!");
			f.p_title.value="";
			f.p_title.focus();
			return;
		}
		
		if(p_content == ''){
			alert("내용을 입력하세요!");
			f.p_content.value="";
			f.p_content.focus();
			return;
		}
		
		f.method = "POST";
		f.action = "post_modify.do?p_idx="+f.p_idx.value;
		f.submit();
		
	}
</script>
</head>


<body>
	<main>
		 <%
            // p_idx를 요청 파라미터에서 가져오기
            String p_idx = request.getParameter("p_idx");
       	 %>
		<form class="form-signin">
			<input type="hidden" id="p_idx" name="p_idx" value="<%= p_idx %>">
			<div class="sign">
				제목
				<input type="text" class="form-control" id="p_title" name="p_title" value="${ pv.p_title }">
			</div><br>
			
			<div class="sign">
				내용
				<input type="text" class="form-control" id="p_content" name="p_content" value="${ pv.p_content }">
			</div><br>
			
			<div class="sign">
				카테고리
				<select class="form-control" id="p_cate" name="p_cate">
					<option value="가구">가구</option>
					<option value="디지털">디지텉</option>
					<option value="생활용품">생활용품</option>
					<option value="식물">식물</option>
				</select>
			</div><br>
			
			<div class="sign">
				게시글 유형
				<select class="form-control" id="p_type" name="p_type">
					<option value="1">일반</option>
					<option value="2">공지</option>
				</select>
			</div><br>
			<input type="submit" value="완료" onclick="send(this.form)">
		</form>
	</main>
</body>
</html>