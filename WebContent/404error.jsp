<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <!-- style 적용, css 및 자바스크립트, 부트스트랩 불러오기 -->
    <jsp:include page="include\head.jsp" />
</head>

<!-- Body Start -->

<body class=" page_container category_page side-menu-closed">
		<div class="row">
		<div class="container-fluid">
	<header>
        
        <!-- 최상단 메뉴 설정 -->
		<jsp:include page="include\header.jsp" />
	</header>
	<div class="content-wrapper page_height">	
		
		<div class="container">		
		
			
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 extra">
				<div class="clearfix"></div>
        <div class="container static_div">
        	<div class="error_title">
            	<div class="title_head">
                	<h2>404</h2>
                	<span>요청하신 페이지를 찾을 수가 없네요!</span><br>
                	<img src="images/bg_srchStore.png">
                </div>
            </div>
        </div>
	</div>
				
	</div>
	</div>
	</div><!--row-->
    </div><!--container-fluid-->
	
	<!-- Footer Start-->
    <jsp:include page="include\footer.jsp" />
    <!-- End Footer -->    
				
	<!-- 왼쪽 버거 메뉴 -->
	<jsp:include page="include\left_menu.jsp" />
	<!-- Left Menu End-->
	
    <!-- 오른쪽 장바구니 메뉴 -->
    <jsp:include page="include\right_cart.jsp" />
	<!-- 오른쪽 장바구니 메뉴 end-->
	
	<!--JAVA SCRIPT-->
  
  <script type="text/javascript" src="js/jquery-2.1.1.js"></script> 
  <script type="text/javascript" src="js/js-functions.js"></script> 
  <script type="text/javascript" src="js/owl.carousel.min.js"></script>
   <script type="text/javascript" src="js/slidereveal.js"></script>
</body>    
</html>    