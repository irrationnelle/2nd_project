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
                                    <h2>Designer Summer Tops</h2>
                                    <span id="ProductPrice" class="product-single__price">$50.00</span>
                                </div>
                                <div class="product-single__description rte" id="productDescription">
                                    <div class="short-description">If you want to feel sexy and comfy even in the colder days then the Flash Sweatshirt is what you...</div>                    
                                    <div class="long-description">
                                        <p>
                                            <span>
                                                If you want to feel sexy and comfy even in the colder days then the Flash Sweatshirt is what you'll need! This modern alteration of the classic sweatshirt is designed with an 
                                                off-the-shoulder raw-edge neckline and a kangaroo front pocket. The fabric is a super soft fleece cotton that will keep you warm all day long. More features are the dropped 
                                                shoulders, the </span><span tabindex="-1" aria-haspopup="true" data-g-spell-status="2" class="J-JK9eJ-PJVNOc">dolman</span><span> sleeves and the style is more fitted so it can 
                                                flatter your body shape. Pair it with leggings, jeans, leather pants or with almost everything you can think off. It's a statement piece that you'll definitely fall in love.
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
                                        <option selected> Small </option>
                                        <option>Medium</option>
                                        <option>Large</option>
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
