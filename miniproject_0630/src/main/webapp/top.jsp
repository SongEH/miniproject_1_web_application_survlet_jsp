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

 
</head>
<body>

	<!--화면 메인 네비게이션바 -->
	<header class="main-header py-3">
		<nav class="navbar navbar-expand-sm navbar-white bg-white">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Logo</a>
				<%--
						MemberVo mv = (MemberVo) session.getAttribute("member");
						if (mv != null && mv.getM_type() == 2) {
						--%>
				<a class="nav-link" id="nav-link-admin" href="adminMemList.jsp">관리자페이지</a>

				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
				<div class="collapse navbar-collapse" id="mynavbar">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link" id="link1"
							href="login.jsp">로그인</a></li>
						<li class="nav-item"><a class="nav-link" id="link2"
							href="register.jsp">회원가입</a></li>
						<li class="nav-item">
							<button type="button" class="btn btn-primary dropdown-toggle"
								data-bs-toggle="dropdown">블로그 글쓰기</button>
							<ul class="dropdown-menu dropdown-menu-end"
								aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">가구</a></li>
								<li><a class="dropdown-item" href="#">디지털</a></li>
								<li><a class="dropdown-item" href="#">생활용품</a></li>
								<li><a class="dropdown-item" href="#">식물</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		
		<hr>
	</header>

</body>
</html>