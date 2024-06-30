<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>



<style type="text/css">



body {
    font-family: 'Noto Sans KR', sans-serif;
}


.container{
	
	border-bottom: 1px solid gray;
	padding-bottom: 30px;
}

</style>


</head>
<body>

<!-- 메인 헤더 공간  -->
<header class="p-3 text-bg-white">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start head">
      
		<!-- 로고 공간  -->
        <div class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <a href="#"><img src="#">이미지2</a>
        </div>
        
		<!-- 검색기 공간  -->
        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
          <input type="search" class="form-control form-control-white text-bg-white" placeholder="Search..." aria-label="Search">
        </form>
        
        <!-- 로그인 회원가입 글쓰기 공간   -->
        <div class="text-end">
			<!-- 로그인이 안되어 있는 경우  -->
       		<c:if test="${ empty sessionScope.user }">
		        <input class="btn btn-default" type="button" value="로그인">
		        <input class="btn btn-default" type="button" value="회원가입">
	        </c:if>
	        <!-- 로그인이 되어 있는 경우  -->
	        <c:if test="${ not empty sessionScope.user }">
		        <input class="btn btn-default" type="button" value="로그아웃">
		        <input class="btn btn-default" type="button" value="마이페이지">
		        <!-- 로그인이 되어 있고 관리자인 경우  -->
	        	<c:if test="${ sessionScope.user.mem_grade == '관리자'}">
	        		<input class="btn btn-info" type="button" vlaue="관리자페이지">
	        	</c:if>
	        </c:if>
         
          <button type="button" class="btn btn-primary">글쓰기</button>
         
        </div>
      </div>
    </div>
  </header>

</body>
</html>


