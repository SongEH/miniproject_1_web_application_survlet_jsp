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
</head>


<body>
	<main >
		<form class="form-signin">
			<div class="sign">
				닉네임
				<input type="text" class="form-control" id="nickname" name="nickname">
			</div><br>
			
			<div class="sign">
				이메일
				<input type="email" class="form-control" id="email" name="nickname">
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
				<textarea class="form-control" rows="5" id="comment"></textarea>
			</div><br>
				
			<div>
				SNS 링크 
				<input type="text" class="form-control" id="sns" name="sns">
			</div>	<br> <br>
							
			
			<button type="button" id="drop" class="btn" onclick="탈퇴하기"> 탈퇴하기</button>
			<br>
			<input type="submit" value="완료">
			
		</form>

	
	
	</main>

</body>
</html>