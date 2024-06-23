<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
  </script>
  <script type="text/javascript">
  
  function readURL(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('preview').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	  } else {
	    document.getElementById('preview').src = "";
	  }
	}
  </script>
  <style type="text/css">
*{  
  	
 } 
 
main{
	display: block;
}
  .button{
  	background: gray;
  	boxsize: 30px;
  	padding: 10px 30px;
  	margin-left:  50px;
  }
  
  .navi{
 	border-bottom: 1px solid gray;
 	border-top: 1px solid gray;

  
  }
  .nav-link{
  	display: inline;
  	padding: 10px;
  	color: gray;
  }
  .nav-link:hover{
  	color: black;
   	border-bottom: 1.5px solid black;
   	padding-bottom: 10px;
  	font-weight: bold;
  }
.img1{
	height:30px !important;
	width:30px !important;
	margin: AUTO;
	margin-top: 50%;
}

p{
	text-align: center;
}

#content{
	resize:none;
}

.input-file-button{
	padding: 6px 25px;
	background: aqua;
	border-raduis: 4px;
	color: black;
	cursor: pointer;
	margin-top: 10px;
	text-align: center;
	
	
}
  </style>
</head>
<body>

	<!-- Header -->
	<header class="navbar navbar-expand-sm bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">
				<img src="img/Logo.png" height="30" width="74">
			</a>
		</div>
	</header>
	<!-- navbar -->
	<nav class="navbar navbar-expand-sm bg-light nav_underline navi">	
		<div class="container-fluid justify-content-center">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link active" href="#" onclick="">사진</a>
						<a class="nav-link active" href="#">동영상</a>
					</li>	
				</ul>
		</div>
	</nav>
	
	<!-- main -->
	<main class="container mt-5">
		<div class="row mb-2">
		
		<!--  사진 추가시 옆에 사진 목록 세울 공간  --> 
			<div class="col-md=1">
				<img id="preview"/>
			</div>
			<!-- 사진 추가 공간  -->
			<div class="col-md-5">
				<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm 
				h-md-250 position-relative">
					<img src="img/camera.jpg" class="img1">
					<p class="card-text mb-auto">사진을 끌어다 놓으세요.</p>
					<p class="card-text mb-auto">10장까지 올릴 수 있어요.</p>
					<!-- 사진 업로드하기  -->
					<label class="input-file-button" for ="fileInput">
					PC에서 불러오기</label>
					
					
<!-- 					<button class="btn btn-info mb-5" type="button" id="uploadimg">PC에서 가져오기 </button> -->
					<input type="file" id="fileInput" accept="image/*" onchange="readURL(this)" multiple style="display: none;">
				</div>
			</div>
			
			<!-- 내용 작성 공간  -->
			
			<div class="col-md-5">
				<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm 
				h-md-250 position-relative">
				
					<!--  글쓰는공간-->
					<div>
					
					<textarea class="form-control" rows="7" id="content">
					</textarea>
					</div>
				
				</div>
					<!-- 드롭다운메뉴 -->
				<div class="btn-group pt-1" >
						<button type="button" class="btn btn-block dropdown-toggle " data-bs-toggle="dropdown">공간 정보 추가
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						 	<li><a class="dropdown-item" href="#">메뉴1</a></li>
						 	<li><a class="dropdown-item" href="#">메뉴2</a></li>
						 	<li><a class="dropdown-item" href="#">메뉴3</a></li>
						 	<li><a class="dropdown-item" href="#">메뉴4</a></li>
						</ul>
					</div>		
					
			</div>
		</div>
	</main>
	

	
	


</body>
</html>