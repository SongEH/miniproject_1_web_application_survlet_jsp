<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- 공통 css 부분 링크 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/common.css">

<style type="text/css">
.box1 {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
}

.box1 input[type="text"], .box1 input[type="password"], .box1 input[type="email"]
	{
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

.container {
	width: 100%;
	padding-right: var(--bs-gutter-x, .75rem);
	padding-left: var(--bs-gutter-x, .75rem);
	margin-right: auto;
	margin-left: auto;
}

.p-2 {
	padding: 30px !important;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
	font-size: 20px;
}

.a_undo {
	text-align: center;
	margin-top: 20px;
}
</style>
</head>
<body>

	<!-- top -->
	<%@include file="top.jsp" %>


	<div class="box1">
		<h2>회원가입</h2>
		<br>
		<form action="register.do" method="post">

			<div class="mb-3">
				아이디<input type="text" class="form-field" name="m_id"
					placeholder="아이디" required />
			</div>
			<div class="mb-3">
				비밀번호
				<p style="margin-top:10px; font-size: 13px; color:#4a4f5a;">영문,숫자를 포함한 8자 이상의 비밀번호를 입력해주세요</p>
				<input type="password" class="form-control" name="m_pw"
					placeholder="비밀번호" required />
			</div>
			<div class="mb-3">
				비밀번호확인<input type="password" class="form-control" name="m_pw2"
					placeholder="비밀번호" required />
			</div>
			<div class="mb-3">
				닉네임<input type="text" class="form-control" name="m_name"
					placeholder="닉네임(2~15자)" minlength="2" maxlength="15" required />
			</div>
			<div class="mb-3">
				소개글<input type="text" class="form-control" name="m_intro"
					placeholder="인사말" required />
			</div>


			<input class="button1" type="submit" value="회원가입" />

		</form>
		<div class="a_undo">
			<a href="이전화면으로이동시키기">취소</a>
		</div>
	</div>
</body>
</html>