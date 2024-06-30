<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 공통 css 부분 링크 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/common.css">

<style type="text/css">
.box1 {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
}

.box1 textarea, .box1 input[type="text"], .box1 input[type="password"],
	.box1 input[type="email"] {
	width: 100%;
	padding: 25px;
	margin: 10px 0 30px 0;
	outline: none;
	border: none;
	border-radius: 5px;
	background: #f5f5f5;
	color: #748194;
	font-size: 14px;
	height: 35px;
}

.button1 {
	width: 100%;
	padding: 10px;
	background-color: #00aaff;
	color: white;
	border: none;
	border-radius: 15px;
	cursor: pointer;
}

.button1:hover {
	background-color: #0088cc;
}


.profile-image {
	display: flex;
	align-items: center;

}

.profile-image img {
	margin-right: 20px;
	border-radius: 50%;
	width: 100px;
	height: 100px;
	border: 1px solid black;
}

.bottom {
	text-align: center;
	margin-top: 30px;
}


.input-file-button{
	 padding: 6px 50px;
 	 background-color:#FF6600;
 	 border-radius: 4px;
 	 color: white;
 	 cursor: pointer;
 	 margin-bottom: 10px;	
}

.preview{
	width: 100%; 	
	height: 100%; 
    object-fit: cover; 
    border: 1px solid black;
}

</style>

<script type="text/javascript">

	/* 이미지 미리 보기  */
	function readURL(input){
		if(input.files && input.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				$("#preview").attr("src", e.target.result);

			};
		reader.readAsDataURL(input.files[0]);
		} else{
			$("#preview").attr("src","");
		}
	}
</script>


</head>
<body>

	<!-- top -->
	<%@include file="header.jsp"%>
	
	<div class="box1">
		<h2>회원정보수정</h2>
		<br>
		<form action="여기추가.do" method="post" enctype="multipart/form-data">
			<div class="mb-3">
				닉네임<input type="text" class="form-control" name="m_name"
					placeholder="닉네임(2~15자)" minlength="2" maxlength="15" required />
			</div>

			<div class="mb-3">
				이메일<input type="text" class="form-control" name="m_email"
					placeholder="이메일" minlength="2" maxlength="15" required />
			</div>

			<div class="mb-3">
				소개글
				<textarea class="form-control" name="m_intro" placeholder="인사말"></textarea>
			</div>

			<div class="mb-3">
<!-- 				<label for="profileImage">프로필 이미지</label> -->
				<div class="profile-image">
					<img src="" id="preview" alt="image preview">
					<label for="profileImage" class="input-file-button">
						이미지 업로드
					</label>
					<input type="file" id="profileImage" name="profileImage" onchange="readURL(this);" style="display:none;" >
				
			</div>
		</div>


			<input class="button1" type="submit" value="회원정보수정" />
		</form>

		<div class="bottom">
			<a href="이전화면으로이동시키기" style="margin-right:40px;" >취소</a>

			<a href="location.href='member_delete.do'" >탈퇴하기</a>
		</div>
	</div>
</body>
</html>