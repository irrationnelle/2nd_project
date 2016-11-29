<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <li><a class="nav_link nav_link_active" href="">All</a></li>
                    <li><a class="nav_link" href="category.jsp">Tops</a></li>
                    <li><a class="nav_link" href="">Shirts</a></li>
                    <li><a class="nav_link" href="category.jsp">Leggings</a></li>
                    <li><a class="nav_link" href="">Dresses</a></li>
                </ul>	
            </div>
            <!-- Inner Menu End -->
            
            <section class="product_grid">
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <div class="product grid-sale product-wrapper ">
                        <!-- Item -->
                        <div class="item">
                            <div class="col-item">
                                <div class="item-inner">
                                    <div class="product-wrapper">
                                        <div class="sale_tag"> SALE</div>
                                        <div class="thumb-wrapper img_mask">
                                            <a class="product_image image-wrapper" href="product_detail.jsp">
                                                <img class="front_image" alt="Pro Image" src="http://file2.instiz.net/data/cached_img/upload/2015051723/820024b6656f0a3583ca66cccf89e289.jpg">
                                                <img class="back_image" alt="Pro Image" src="https://pbs.twimg.com/media/CDV0p0VUIAAescU.jpg">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <h3 class="product_title"><a href="product_detail.jsp">Short Gown</a></h3>
                                    <div class="ratings">
                                        <div class="rating-box">
                                            <div class="rating" style="width:20%"></div>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <p class="special-price"><span class="price">$34.00</span></p>                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Item -->
                    </div>
                </div>
            	<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <div class="product grid-sale product-wrapper ">
                        <!-- Item -->
                        <div class="item">
                            <div class="col-item">
                                <div class="item-inner">
                                    <div class="product-wrapper">
                                        <div class="sale_tag"> SALE</div>
                                        <div class="thumb-wrapper img_mask">
                                            <a class="product_image image-wrapper" href="product_detail.jsp">
                                                <img class="front_image" alt="Pro Image" src="product_images/grid_pro.jpg">
                                                <img class="back_image" alt="Pro Image" src="product_images/grid_pro.jpg">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <h3 class="product_title"><a href="product_detail.jsp">wedding dress</a></h3>
                                    <div class="ratings">
                                        <div class="rating-box">
                                            <div class="rating" style="width:20%"></div>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <p class="special-price"><span class="price">$34.00</span></p>                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Item -->
                    </div>
                </div>            	                
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <div class="product grid-sale product-wrapper">
                        <!-- Item -->
                        <div class="item">
                            <div class="col-item">
                                <div class="item-inner">
                                    <div class="product-wrapper">
                                        <div class="thumb-wrapper img_mask">
                                            <a class="product_image image-wrapper" href="product_detail.jsp">
                                                <img class="front_image" alt="Pro Image" src="product_images/grid_pro.jpg">
                                                <img class="back_image" alt="Pro Image" src="product_images/grid_pro.jpg">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <h3 class="product_title"><a href="product_detail.jsp">Sober Top</a></h3>
                                    <div class="ratings">
                                        <div class="rating-box">
                                            <div class="rating" style="width:20%"></div>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <p class="special-price"><span class="price">$28.00</span></p>                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Item -->
                    </div>
                </div>
                
                
                
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <div class="product grid-sale product-wrapper">
                        <!-- Item -->
                        <div class="item">
                            <div class="col-item">
                                <div class="item-inner">
                                    <div class="product-wrapper">
                                        <div class="new_tag">NEW</div>
                                        <div class="thumb-wrapper img_mask">
                                            <a class="product_image image-wrapper" href="product_detail.jsp">
                                                <img class="front_image" alt="Pro Image" src="product_images/grid_pro.jpg">
                                                <img class="back_image" alt="Pro Image" src="product_images/grid_pro.jpg">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <h3 class="product_title"><a href="product_detail.jsp">Black Jacket</a></h3>
                                    <div class="ratings">
                                        <div class="rating-box">
                                            <div class="rating" style="width:20%"></div>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <p class="special-price"><span class="price">$64,999</span></p>                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Item -->
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <div class="product grid-sale product-wrapper">
                        <!-- Item -->
                        <div class="item">
                            <div class="col-item">
                                <div class="item-inner">
                                    <div class="product-wrapper">
                                        <div class="sale_tag">SALE</div>
                                        <div class="thumb-wrapper img_mask">
                                            <a class="product_image image-wrapper" href="product_detail.jsp">
                                                <img class="front_image" alt="Pro Image" src="product_images/grid_pro.jpg">
                                                <img class="back_image" alt="Pro Image" src="product_images/grid_pro.jpg">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <h3 class="product_title"><a href="product_detail.jsp">Jackets</a></h3>
                                    <div class="ratings">
                                        <div class="rating-box">
                                            <div class="rating" style="width:20%"></div>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <p class="special-price"><span class="price">$34,999</span></p>                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Item -->
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <div class="product grid-sale product-wrapper">
                        <!-- Item -->
                        <div class="item">
                            <div class="col-item">
                                <div class="item-inner">
                                    <div class="product-wrapper">                                      
                                        <div class="thumb-wrapper img_mask">
                                            <a class="product_image image-wrapper" href="product_detail.jsp">
                                                <img class="front_image" alt="Pro Image" src="product_images/grid_pro.jpg">
                                                <img class="back_image" alt="Pro Image" src="product_images/grid_pro.jpg">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <h3 class="product_title"><a href="product_detail.jsp">Fancy Gown</a></h3>
                                    <div class="ratings">
                                        <div class="rating-box">
                                            <div class="rating" style="width:20%"></div>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <p class="special-price"><span class="price">$20.00</span></p>                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Item -->
                    </div>
                </div>
                
            </section>
            
            <div class="clearfix"></div>
            <!-- Pagination Start-->
            <div class="row">
                <div class="pager">
                    <div class="pages">
                        <ul class="pagination">
                            <li><a href=""><i class="fa fa-chevron-left"></i></a></li>
                            <li class="active"><a href="">1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">3</a></li>
                            <li><a href="">4</a></li>
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