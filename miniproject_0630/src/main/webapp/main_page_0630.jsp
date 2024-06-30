<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


<style type="text/css">
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

@font-face {
	font-family: 'SDSamliphopangche_Outline';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/SDSamliphopangche_Outline.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 500;
	src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff2)
		format('woff2'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff)
		format('woff'),
		url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.otf)
		format('opentype');
}

body, h1, h2, h3, h4, h5, h6, input, textarea, select {
	font-family: 'Noto Sans KR', sans-serif;
}


#carouselExampleCaptions {
	width: 100%;
	padding-right: var(--bs-gutter-x, .75rem);
	padding-left: var(--bs-gutter-x, .75rem);
	margin-right: auto;
	margin-left: auto;
	font-family: 'Noto Sans KR', sans-serif;
}

.container-fluid {
	margin-left: 30px;
	margin-right: 30px;
}

.container-fluid a {
	margin-right: 10px;
}

#nav-link-admin {
	margin-right: 400px;
}

hr {
	margin: 0px;
}

.album{
	border: 1px solid green;
	margin-top: 30px;
	margin-bottom: 30px;

	margin: auto;
	
}

.banner{
	border: 1px solid black;
	margin-bottom: 20px;
}

.portfolio-image{
/* 	border: 1px solid black; */
	width: 90%;
	display: flex;
	flex-direction: column;
	align-items: center;
	
	img{
	border-radius: 3%;
	width: 100%;
	height: 100%;
	}

	
}

 .item {
        display: flex;
        flex-direction: column;
        align-items: center; 
        margin-bottom: 30px;
    }
    
 .portfolio {
        text-align: left;
        margin-left: 0px;
        border: 1px solid red;
        width: 90%;

        
    }
.portfolio-title{
	
	border: 1px solid red;
}
.portfolio-text{
        overflow: hidden;
        text-overflow : ellipsis;
        word-wrap: break-word;
        display: -webkit-box;
        -webkit-line-clamp: 2 ;
        -webkit-box-orient: vertical;
}
</style>

<script type="text/javascript">


</script>



</head>
<body>

	<!-- top 옵션-->
	<%@include file="header.jsp"%>


	<!-- navbar 옵션  -->
	<%@include file="navbar.jsp"%>


	<!-- 배너 참고 사이트 : https://getbootstrap.kr/docs/5.0/components/carousel/ -->

	<!-- 대표 배너 시작 -->
	<main>
		<div class="container banner">
			<div id="carouselExampleCaptions" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="image/img1.png" class="d-block w-100 rounded" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5>설명추가</h5>
							<p>Some representative placeholder content for the first slide.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="image/img2.png" class="d-block w-100 rounded" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>설명추가</h5>
								<p>Some representative placeholder content for the second
									slide.</p>
							</div>
					</div>
					<div class="carousel-item">
						<img src="image/img3.png" class="d-block w-100 rounded" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5>설명추가</h5>
							<p>Some representative placeholder content for the third slide.</p>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
	<!-- 대표 배너 마지막 -->
	
	
	<!-- 아이템 이미지 -->
	<div class="container">
		<div class="row grid album">
			<!-- 아이템 하나 구분 start -->
			
			<div class="col-lg-4 col-sm-6 item" data-type="market">
            	<div class="portfolio-image rounded">
                   	<img src="image/album1.jpg" /> 			<!-- 이미지  -->
       			</div>
  				
  				<div class="portfolio">
					<h4 class="portfolio-title">
						<a href="javascript:void(0)">1</a>  <!-- 제목 -->
					</h4>
					<p class="portfolio-text">				<!-- 내용 -->
					Short description for the ones who look for something new. Awesome!sa jpodjasjpsapsdajpsdajopsap
					</p>
	          	</div>
          	</div>
          
          	<!-- 아이템 하나 구분 end -->
          	
          	<!-- 테스트  -->
        	<div class="col-lg-4 col-sm-6 item" data-type="market">
            	<div class="portfolio-image rounded">
                   	<img src="image/album1.jpg" /> 			<!-- 이미지  -->
       			</div>
  				
  				<div class="portfolio">
					<h4 class="portfolio-title">
						<a href="javascript:void(0)">1</a>  <!-- 제목 -->
					</h4>
					<p class="portfolio-text">				<!-- 내용 -->
					Short description for the ones who look for something new. Awesome!sa jpodjasjpsapsdajpsdajopsap
					</p>
	          	</div>
          	</div>
          	<div class="col-lg-4 col-sm-6 item" data-type="market">
            	<div class="portfolio-image rounded">
                   	<img src="image/album1.jpg" /> 			<!-- 이미지  -->
       			</div>
  				
  				<div class="portfolio">
					<h4 class="portfolio-title">
						<a href="javascript:void(0)">1</a>  <!-- 제목 -->
					</h4>
					<p class="portfolio-text">				<!-- 내용 -->
					Short description for the ones who look for something new. Awesome!sa jpodjasjpsapsdajpsdajopsap
					</p>
	          	</div>
          	</div>
          	<div class="col-lg-4 col-sm-6 item" data-type="market">
            	<div class="portfolio-image rounded">
                   	<img src="image/album1.jpg" /> 			<!-- 이미지  -->
       			</div>
  				
  				<div class="portfolio">
					<h4 class="portfolio-title">
						<a href="javascript:void(0)">1</a>  <!-- 제목 -->
					</h4>
					<p class="portfolio-text">				<!-- 내용 -->
					Short description for the ones who look for something new. Awesome!sa jpodjasjpsapsdajpsdajopsap
					</p>
	          	</div>
          	</div>
          	<div class="col-lg-4 col-sm-6 item" data-type="market">
            	<div class="portfolio-image rounded">
                   	<img src="image/album1.jpg" /> 			<!-- 이미지  -->
       			</div>
  				
  				<div class="portfolio">
					<h4 class="portfolio-title">
						<a href="javascript:void(0)">1</a>  <!-- 제목 -->
					</h4>
					<p class="portfolio-text">				<!-- 내용 -->
					Short description for the ones who look for something new. Awesome!sa jpodjasjpsapsdajpsdajopsap
					</p>
	          	</div>
          	</div>
          	<div class="col-lg-4 col-sm-6 item" data-type="market">
            	<div class="portfolio-image rounded">
                   	<img src="image/album1.jpg" /> 			<!-- 이미지  -->
       			</div>
  				
  				<div class="portfolio">
					<h4 class="portfolio-title">
						<a href="javascript:void(0)">1</a>  <!-- 제목 -->
					</h4>
					<p class="portfolio-text">				<!-- 내용 -->
					Short description for the ones who look for something new. Awesome!sa jpodjasjpsapsdajpsdajopsap
					</p>
	          	</div>
          	</div>
          	<div class="col-lg-4 col-sm-6 item" data-type="market">
            	<div class="portfolio-image rounded">
                   	<img src="image/album1.jpg" /> 			<!-- 이미지  -->
       			</div>
  				
  				<div class="portfolio">
					<h4 class="portfolio-title">
						<a href="javascript:void(0)">1</a>  <!-- 제목 -->
					</h4>
					<p class="portfolio-text">				<!-- 내용 -->
					Short description for the ones who look for something new. Awesome!sa jpodjasjpsapsdajpsdajopsap
					</p>
	          	</div>
          	</div>
          	<div class="col-lg-4 col-sm-6 item" data-type="market">
            	<div class="portfolio-image rounded">
                   	<img src="image/album1.jpg" /> 			<!-- 이미지  -->
       			</div>
  				
  				<div class="portfolio">
					<h4 class="portfolio-title">
						<a href="javascript:void(0)">1</a>  <!-- 제목 -->
					</h4>
					<p class="portfolio-text">				<!-- 내용 -->
					Short description for the ones who look for something new. Awesome!sa jpodjasjpsapsdajpsdajopsap
					</p>
	          	</div>
          	</div>
          	<div class="col-lg-4 col-sm-6 item" data-type="market">
            	<div class="portfolio-image rounded">
                   	<img src="image/album1.jpg" /> 			<!-- 이미지  -->
       			</div>
  				
  				<div class="portfolio">
					<h4 class="portfolio-title">
						<a href="javascript:void(0)">1</a>  <!-- 제목 -->
					</h4>
					<p class="portfolio-text">				<!-- 내용 -->
					Short description for the ones who look for something new. Awesome!sa jpodjasjpsapsdajpsdajopsap
					</p>
	          	</div>
          	</div>
          	<div class="col-lg-4 col-sm-6 item" data-type="market">
            	<div class="portfolio-image rounded">
                   	<img src="image/album1.jpg" /> 			<!-- 이미지  -->
       			</div>
  				
  				<div class="portfolio">
					<h4 class="portfolio-title">
						<a href="javascript:void(0)">1</a>  <!-- 제목 -->
					</h4>
					<p class="portfolio-text">				<!-- 내용 -->
					Short description for the ones who look for something new. Awesome!sa jpodjasjpsapsdajpsdajopsap
					</p>
	          	</div>
          	</div>
          	
          		
          		
          	
         
         
         

	  	</div>
	</div>
          
	
 </main>
	              	<!-- <div class="portfolio-overlay d-flex align-items-center">
                 	 <div class="portfolio-center">
	                    	 <div class="portfolio-icon">
	                      	 <a class="image-popup-two glightbox"
	                      	  	href="https://cdn.ayroui.com/1.0/images/portfolio/portfolio-1/pf1.jpg">
	                        	<i class="lni lni-zoom-in"></i>
	                        </a>
	                     	</div>
	                     	<div class="portfolio-text">
	                        	<h4 class="portfolio-title">
	                           		<a href="javascript:void(0)">Graphics Design</a>
	                        	</h4>
	                        	<p class="text">
	                           Short description for the ones who look for something new.
	                           Awesome!
	                        	</p>
	                    	</div>
	                  	</div>
               		</div> -->
          		 </div><!-- 
			</div>
		</div>
	</div> -->
            <!-- single portfolio -->
   
	
	
	
	
	<!-- 	<div class="container album">
			앨범내역
			<div class="album py-5 bg-light">
				<div class="container">
					<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
						<div class="col">
							<div class="card shadow-sm">
								<img src="#" href="#" width="100%" height="225">
								<div class="card-body">
									<p class="card-text">msg1
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<img src="#" href="#" width="100%" height="225">
								<div class="card-body">
									<p class="card-text">msg2
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<img src="#" href="#" width="100%" height="225">
								<div class="card-body">
									<p class="card-text">msg3
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<img src="#" href="#" width="100%" height="225">
								<div class="card-body">
									<p class="card-text">msg4
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<img src="#" href="#" width="100%" height="225">
								<div class="card-body">
									<p class="card-text">msg5
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<img src="#" href="#" width="100%" height="225">
								<div class="card-body">
									<p class="card-text">msg6
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<img src="#" href="#" width="100%" height="225">
								<div class="card-body">
									<p class="card-text">msg7
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<img src="#" href="#" width="100%" height="225">
								<div class="card-body">
									<p class="card-text">msg8
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<img src="#" href="#" width="100%" height="225">
								<div class="card-body">
									<p class="card-text">msg9
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<img src="#" href="#" width="100%" height="225">
								<div class="card-body">
									<p class="card-text">msg10
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<img src="#" href="#" width="100%" height="225">
								<div class="card-body">
									<p class="card-text">msg12
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card shadow-sm">
								<img src="#" href="#" width="100%" height="225">
								<div class="card-body">
									<p class="card-text">msg12
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		 -->
	<!-- footer 공간  -->
	<%@include file="footer.jsp" %>
		

</body>
</html>