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
<style type="text/css">
.navbar{
	background: gray;
}

.box{
	background: blue;
	height: 400px;
	margin: auto;
	text-align: center;
	padding-top: 200px;
}
.sub{
	background: green;
	margin-top: 30px;

}

.form-control {
	border: 1px solid black;
}

#text{
	background: aqua;
	margin-top: 10px;
	width: 100%;
	resize: none;

}
</style>
</head>
<body>
	<!-- navbar -->
	<nav class="navbar navbar-expand-sm bg-light">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Logo</a>
   			</div>
   				<ul class="nav navbar-nav navbar-right">
			     	<li><a href="#"><button type="button" class="btn btn-default">임시 저장</button></a></li>
			     	<li><a href="#"><button type="button" class="btn btn-primary">발행 신청</button></a></li>
		     	</ul>
		</div>
	</nav>
	<main class="container mt-5">
		<div class="row">
			<div class=" col-sm-2">
			</div>
			<form>
			<div class=" col-sm-8">
				<div class="box">
					<p>이미지</p>
				</div>
				
				
				<div class="sub mt-5">
					<input class="form-control form-control-lg" 
					type="text" placeholder="제목을 입력해주세요.">
				</div>
				<div>
					<textarea class="form-control" id="text" rows="1"
					oninput='this.style.height="", this.style.height= this.scrollHeight + "px"'>
					</textarea>
				</div>
				
			</div>
			</form>
			<div class=" col-sm-2">
			</div>
		</div>
	</main>
</body>
</html>