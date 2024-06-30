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
	width: 100%;
	height: 400px;
	display:flex;
	align-items: center;
 	justify-content: center;
 	padding: 0px;

	
}
#preview{
	width: 100%; 	
	height: 100%; 
    object-fit: cover; 
}

.sub{
	background: green;
	margin-top: 10px;

}

.form-control {
	border: 1px solid black;
}

#text{
	background: aqua;
	margin-top: 10px;
	width: 100%;
	resize: none;
	color: black;

}

.content{
	margin-top: 10px !important;
}
</style>

<script type="text/javascript">
	function readURL(input){
		if(input.files && input.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				$("#preview").attr("src", e.target.result);

			};
		reader.readAsDataURL(input.files[0]);
		} else{
			$("#preivew").attr("src","");
		}
	}
</script>
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
					<img id="preview" src="" alt="image preview">
				</div>
				<input type="file" onchange="readURL(this);">
				
				
				<div class="sub mt-5">
					<input class="form-control form-control-lg" 
					type="text" placeholder="제목을 입력해주세요.">
				</div>
				<div class="content">
					<textarea class="form-control" id="text" rows="20" placeholder="내용을 입력해주세요."
					oninput='this.style.height="", this.style.height= this.scrollHeight + "px"'></textarea>
					
				</div>
				
			</div>
			</form>
			<div class=" col-sm-2">
			</div>
		</div>
	</main>
</body>
</html>