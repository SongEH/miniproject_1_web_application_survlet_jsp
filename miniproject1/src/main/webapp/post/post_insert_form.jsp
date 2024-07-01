<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!--  Bootstrap  3.x  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
#box {
	width: 600px;
	margin: auto;
	margin-top: 100px;
}

textarea {
	resize: none;
}

th {
	width: 20%;
	vertical-align: middle !important;
}
</style>

<script type="text/javascript">
	function send(f) {

		//입력값을 검증해야 한다, 공백제거 trim()
		let p_title = f.p_title.value.trim();
		let p_content = f.p_content.value.trim();
		let p_cate = f.p_cate.value.trim();
		
		if (p_title == '') {
			alert("제목을 입력하세요.");
			f.p_title.value = ""; //지우기
			f.p_title.focus();
			return;
		}

		if (p_content == '') {
			alert("내용을 입력하세요.");
			f.p_content.value = ""; //지우기
			f.p_content.focus();
			return;
		}

		if(p_cate==""){
			alert("카테고리를 선택하세요.");
			f.p_cate.value = ""; //지우기
			f.p_cate.focus();
			return;
		}

		// f.method = "POST";
		f.action = "insert.do"; //전송대상(VisitInsertAction)
		f.submit(); //전송
	}
</script>


</head>
<body>

	<form method="POST"  enctype="multipart/form-data">
		<div id="box">
			<!-- Bootstrap panel -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4>게시글쓰기</h4>
				</div>
				<div class="panel-body">
					<table class="table">
						<input type="hidden" name="m_idx" value="${m_idx}">
						<tr>
							<th>제목</th>
							<!-- 필수입력사항 required="required" -->
							<td><input class="form-control" name="p_title" ></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><input class="form-control" name="m_name" placeholder="${m_name}" disabled></td>
							
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea class="form-control" rows="6" name="p_content"></textarea>
							</td>
						</tr>
						<tr>
							<th>카테고리</th>
							<td>
								<select class="form-control" id="category" name="p_cate" required>
	            					<option value="">카테고리 선택</option>
						            <option value="테이블">테이블</option>
						            <option value="침대">침대</option>
						            <option value="수납장">수납장</option>
					        	</select><br><br>
							
							
							</td>
						</tr>
						
						<tr>
			               <th>사진</th>
			               <td><input class="form-control"  type="file" name="photo"></td>
			            </tr>
			            
						<c:if test="${ (sessionScope.member.m_type eq 2) }">
						<tr>
							<th>구분</th>
							<td> 
							
							  <input type="radio" id="p_type_1" name="p_type" value="1" checked>
						      <label for="normal">일반</label><br>
						      
							      <input type="radio" id="p_type_2" name="p_type" value="2">
							      <label for="notice">공지</label><br><br>						   
							</td>
						</tr>
						</c:if>
						
						<tr>
							<td colspan="2" align="center">
							<input
								class="btn btn-success" type="button" value="목록보기"
								onclick="location.href='list.do'"> 
								<input
								class="btn btn-primary" type="button" value="글올리기"
								onclick="send(this.form);">
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</form>

</body>
</html>