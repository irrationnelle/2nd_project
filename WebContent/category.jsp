<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <!-- style 적용, css 및 자바스크립트, 부트스트랩 불러오기 -->
    <jsp:include page="include\head.jsp" />
</head>

	<!-- Body Start -->
	
<body class="cms_category page_container category_page side-menu-closed">
		<div class="container-fluid">
	<header>
    
        <!-- 최상단 메뉴 설정 -->
		<jsp:include page="include\header.jsp" />
	</header>
	
	<!-- Content Wrapper Start -->
	<div class="content-wrapper">
        	<!-- Inner Menu Start -->
        	<div class="cat_menu inner_menu">
                <ul>                        
                    <li><a class="nav_link nav_link_active" href="product.do?action=category">All</a></li>
                    <li><a class="nav_link" href="product.do?action=categorySort&categoryNum=1">Celebrity</a></li>
                    <li><a class="nav_link" href="product.do?action=categorySort&categoryNum=2">Athlete</a></li>
                    <li><a class="nav_link" href="product.do?action=categorySort&categoryNum=3">Politician</a></li>
                    <li><a class="nav_link" href="">Dresses</a></li>
                </ul>	
            </div>
            <!-- Inner Menu End -->
            
            
            <section class="product_grid">
            <c:forEach var="item" items="${requestScope.productPage.productList}">
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <div class="product grid-sale product-wrapper ">
                        <!-- Item -->
                        <div class="item">
                            <div class="col-item">
                                <div class="item-inner">
                                    <div class="product-wrapper">
                                        <div class="sale_tag"> SALE</div>
                                        <div class="thumb-wrapper img_mask">
                                            <a class="product_image image-wrapper" href="product.do?action=detail&productNum=${item.productId}">
                                                <img class="front_image" alt="Pro Image" src="${item.productImage}">
                                                <img class="back_image" alt="Pro Image" src="${item.productImage}">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <h3 class="product_title"><a href="product.do?action=detail&productNum=${item.productId}">${item.productName}</a></h3>
                                    <div class="ratings">
                                        <div class="rating-box">
                                            <div class="rating" style="width:20%"></div>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <p class="special-price"><span class="price">₩ ${item.productPrice}</span></p>                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Item -->
                    </div>
                </div>
              </c:forEach>
            </section>
            
            <div class="clearfix"></div>
            <!-- Pagination Start-->
            <div class="row">
                <div class="pager">
                    <div class="pages">
                        <ul class="pagination">
                            <li><a href=""><i class="fa fa-chevron-left"></i></a></li>
<!--                             <li class="active"><a href="">1</a></li> -->
	                            <c:forEach var="i" begin="${requestScope.productPage.startPage}" end="${requestScope.productPage.endPage}">
	                            	<li><a href="product.do?action=category&page=${i}">${i}</a></li>
	                            </c:forEach>
                            <li><a href=""><i class="fa fa-chevron-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>			
            <!-- Pagination End	-->
        </div>
	<!-- Content Wrapper Start -->
	<div class="clearfix"></div>
	
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
    
	<!-- JAVA SCRIPT -->
	<script type="text/javascript" src="js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="js/js-functions.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/slidereveal.js"></script>
</body>    
</html>    