<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- style 적용, css 및 자바스크립트, 부트스트랩 불러오기 -->
    <jsp:include page="include\head.jsp" />
</head>

<!-- Body Start -->

<body class=" page_container side-menu-closed product_detail_page">
	<div class="row">
		<div class="container-fluid">
            <header>
               	<!-- 최상단 메뉴 설정 -->
				<jsp:include page="include\header.jsp" />
            </header>
    
            <div class="content-wrapper">
                <!-- Slider Start -->
                <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 dtl_product_slider">
                    <div id="container" class="cf">
                        <div id="main" role="main">
                            <div class="slider">
                                <div class="flexslider">
                                    <ul class="slides">
<!--                                         <li><img alt="" class="img-responsive" src="product_images/pro_det_image.jpg" height="450" width="400" ></li> -->
                                        <li><img alt="" class="img-responsive" src="product_images\product_det1.jpg"> </li>
                                        <li><img alt="" class="img-responsive" src="product_images\product_det1_02.jpg" > </li>
                                        <li><img alt="" class="img-responsive" src="product_images\product_det1_03.jpg"> </li>				
                                    </ul>
                                </div>
                            </div>     
                        </div>
                    </div>
                </div>
                <!-- Slider End -->
                
                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 dtl_product_info">
                    <div class="right_pro_detail">
                        <div class="content_wrap">
                            <div class="product_bill_info">
                                <div class="product_name">
                                    <h2>${requestScope.productDetail.productName}</h2>
                                    <span id="ProductPrice" class="product-single__price">${requestScope.productDetail.productPrice}</span>
                                </div>
                                <div class="product-single__description rte" id="productDescription">
                                    <div class="short-description">${requestScope.productDetail.productDetail}</div>                    
                                    <div class="long-description">
                                        <p>
                                            <span>
1980년 2월 19일생. 외모만 보면 얼핏 라틴계 같지만 영국 에식스 출신의 영국 토박이라고 한다. 부모님은 부동산과 화물 운송회사[2]에서 일했다.
어렸을 때는 수의사가 되고 싶어했지만 과학 성적이 부족해서 멀티미디어 컴퓨팅을 공부하게 되었다. 멀티미디어 공부를 할 때 오토 익스프레스에서 일을 했고, 트랙 테스팅을 위한 최신형 포르쉐와 재규어를 운반하는 일도 했었다.
그러다 2001년 글로스터셔 대학 경영학부를 졸업하기 이전에, 간디의 룸메이트가 그 몰래 모델 발굴 대회[3]에 사진을 보내 참가를 시켰다. 결과적으로 21세의 나이로 대회에서 우승해버려 런던의 Select Model Management와 계약을 한다. 이후 간디는 여러 패션 하우스의 모델을 하다가 2006년 돌체와 계약을 한다.
2006년 돌체의 간판 모델이 되고, 2011년까지 매년 이름있는 의류 캠페인과 패션쇼에 참가하기 시작한다. 많은 여성 슈퍼모델들과도 일을 했다.
2007년 마리오 테스티노가 촬영한 돌체 앤 가바나의 '라이트 블루' 향수 광고는 [4] 간디를 전세계적으로 알리게 한 광고다. 타임스 스퀘어의 50-foot 크기의 전광판에 오르기도 했다.
2010년 조나단 로스 쇼에서는 사람들이 자신의 이름을 들으면 모르지만 '고무 보트 위에서 흰 빤쓰 입고있는 남자'하면 안다고 말하기도 했다.[5] 
2012년 런던 올림픽 폐막식에 남자 모델로는 유일하게 청일점으로 오르기도 하였다.
현재는 젊은 후배들을 위해 모델 일은 줄이고 사업과 자선활동에 비중을 두겠다고 발표한 상태. 본인이 디자인하여 런칭한 속옷과 수영복 브랜드가 있으며, 패션 계열 회사들을 인수하거나 각종 자선단체 명예대사로 활동하는 등 다방면에서 활동하고 있다.
                                            </span>
                                        </p>
                                        <p>
                                            <span>
                                                If you want to feel sexy and comfy even in the colder days then the Flash Sweatshirt is what you'll need! This modern alteration of the classic sweatshirt is designed with an 
                                                off-the-shoulder raw-edge neckline and a kangaroo front pocket. The fabric is a super soft fleece cotton that will keep you warm all day long. More features are the dropped 
                                                shoulders, the </span><span tabindex="-1" aria-haspopup="true" data-g-spell-status="2" class="J-JK9eJ-PJVNOc">dolman</span><span> sleeves and the style is more fitted so it can 
                                                flatter your body shape. Pair it with leggings, jeans, leather pants or with almost everything you can think off. It's a statement piece that you'll definitely fall in love.
                                            </span>
                                        </p>
                                        <ul class="long_dis_list">
                                            <li>Fitted Style </li>
                                            <li>100% cotton  </li>
                                            <li>Delicate Wash Cold   </li>
                                            <li>Model is 5'10 wearing a size S </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <span data-toggle="#productDescription" class="show-more">???</span>                    
                                </div>
                            </div>
                            <div class="product-single__offers"></div>		
                            <div class="clearfix"></div>		
                            
                            <div class="filter col-lg-5 col-md-5">
                                <label>
                                    <select class="border_lnone border_rnone">
                                        <option selected> 점심식사 </option>
                                        <option>점심식사  + 함께 사진찍기</option>
                                        <option>점심식사  + 함께 사진찍기 + 순수한 데이트</option>
                                    </select>
                                </label>
                            </div>
                            <div class="filter col-lg-7 col-md-7">
                                <label>
                                    <select class="border_rnone">
                                        <option selected> Heather Grey </option>
                                        <option>Charcoal Grey</option>
                                    </select>
                                </label>
                            </div>
                            <div class="col-lg-12 button_margin">
                                <button id="AddToCart" class="btn btn--expand btn--ghost" name="add" type="submit"> <span id="AddToCartText">Add to Cart</span> </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Social Link -->	
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 share-widget small--hide">
                    <div class="share-widget__title">Share Product</div>
                    <a class="share-widget__icon" href=""><span class="icon icon-twitter"></span></a>
                    <a class="share-widget__icon" href=""><span class="icon icon-pinterest"></span></a>
                    <a class="share-widget__icon" href=""><span class="icon icon-facebook"></span></a>
                </div>
            </div>
                    
		</div><!--container-fluid--> 
	</div><!--row--> 
	
<!-- Social Link -->
	
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 share-widget small--hide">
        <div class="share-widget__title">Share Product</div>
        <a class="share-widget__icon" href=""><span class="icon icon-twitter"></span></a>
        <a class="share-widget__icon" href=""><span class="icon icon-pinterest"></span></a>
        <a class="share-widget__icon" href=""><span class="icon icon-facebook"></span></a>
    </div>
    
	<!-- 왼쪽 버거 메뉴 -->
	<jsp:include page="include\left_menu.jsp" />
	<!-- Left Menu End-->
	
    <!-- 오른쪽 장바구니 메뉴 -->
    <jsp:include page="include\right_cart.jsp" />
	<!-- 오른쪽 장바구니 메뉴 end-->
  
	<!--JAVA SCRIPT-->
	
	
	<!-- jQuery -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.min.js">\x3C/script>')</script>
    
    <!-- FlexSlider -->
    <script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="js/js-functions.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/slidereveal.js"></script>
    <script type="text/javascript" src="js/jquery.scrollbar.js"></script>

	<script type="text/javascript">		
		jQuery(window).load(function(){
			jQuery('.flexslider').flexslider({
				animation: "slide",
				start: function(slider){
				  jQuery('body').removeClass('loading');
				}
			});
		});
    </script>
</body>
</html>
