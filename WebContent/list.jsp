<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <!-- style 적용, css 및 자바스크립트, 부트스트랩 불러오기 -->
    <jsp:include page="include\head.jsp" />
</head>

<!-- Body Start -->

<body class=" page_container side-menu-closed list_page ">
	<div class="row">
		<div class="container-fluid">		
            <header>
                
                <!-- 최상단 메뉴 설정 -->
				<jsp:include page="include\header.jsp" />
            </header>
            
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
                
                <div class="container">	                            
                    <div class="toolbar">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-7">			
                            <div class="sorter">
                                <div class="view-mode">
                                    <button value="Grid" class="button button-grid" title="Grid">&nbsp;</button>&nbsp;
                                    <button value="Grid" class="button button-list button-active" title="List">&nbsp;</button>&nbsp;
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-5">			
                            <div id="sort-by">
                                <label class="left">Sort By: </label>
                                <ul>
                                    <li><a href="">Position<span class="right-arrow"></span></a>
                                        <ul>
                                            <li><a href="">Name</a></li>
                                            <li><a href="">Price</a></li>
                                            <li><a href="">Position</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">			
                            <div class="pager">				  
                                <div class="pages">
                                    <label>Page:</label>
                                    <ul class="pagination">
                                        <li><a href=""><i class="fa fa-chevron-left"></i></a></li>
                                        <li class="active"><a href="">1</a></li>
                                        <li><a href="">2</a></li>
                                        <li><a href="">3</a></li>
                                        <li><a href="">4</a></li>					  
                                        <li><a href=""><i class="fa fa-chevron-right"></i></a></li>
                                    </ul>
                                    <div id="limiter">
                                        <label>View: </label>
                                        <ul>
                                            <li><a href="">10<span class="right-arrow"></span></a>
                                                <ul>
                                                    <li><a href="">20</a></li>
                                                    <li><a href="">30</a></li>
                                                    <li><a href="">35</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>				
                            </div>
                        </div>
                    </div>
                    
                    <!-- Category Products Start -->
                    <div class="category-products-list row" id="category-products">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 padd_none">
                            <ul class="pdt-list products-grid zoomOut play">
                                                                                            
                                <li class="item item-animate wide-first col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeIn animated" data-wow-delay=".2s">
                                    <div class="item-inner">
                                        <div class="product-wrapper">
                                            <div class="thumb-wrapper img_mask">
                                                <a href="product_detail.jsp">
                                                    <span class="face"><img class="img-responsive" src="product_images/list_pro.jpg" alt="product imgae"></span>
                                                </a>
                                            </div>                                            
                                            <div class="img_description">
                                                <h3 class="product_title"><a href="product_detail.jsp">Winter Jacket</a></h3>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <div class="rating" style="width: 20%"></div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <p class="special-price"><span class="price">$30.00</span></p>                        
                                                </div>
                                                <div class="desc">
                                                    <p>
                                                    	Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit
                                                    </p>
                                                    <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet,variations of passages of Lorem Ipsum available consectetur, adipisci velit </p>
                                                    <p>Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit...
                                                        <a href="#" class="link-learn">Know More</a>
                                                    </p>
                                                </div>
                                                <div class="actions">
                                                    <div class="quick-view-btn"><a data-toggle="tooltip" data-placement="top" title="Quick View" data-original-title="Quick View" href=""><span>Quick View</span></a></div>
                                                    <div class="link-wishlist"><a data-toggle="tooltip" data-placement="top" title="Wishlist" data-original-title="Wishlist" href=""><span>Add to Wishlist</span></a></div>
                                                    <div class="link-compare"><a data-toggle="tooltip" data-placement="top" title="Compare" data-original-title="Compare" href=""><span>Add to Compare</span></a></div> 
                                                    <div class="add_cart">
                                                        <button class="btn-cart" type="button" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart">Add to Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                        
                                    </div>                
                                </li>                                
                                <li class="item item-animate wide-first col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeIn animated" data-wow-delay=".2s">
                                    <div class="item-inner">
                                        <div class="product-wrapper">
                                            <div class="thumb-wrapper img_mask">
                                                <a href="product_detail.jsp">
                                                    <span class="face"><img class="img-responsive" src="product_images/list_pro.jpg" alt="product imgae"></span>
                                                </a>
                                            </div>                                            
                                            <div class="img_description">
                                                <h3 class="product_title"><a href="product_detail.jsp">Fashionable Tee</a></h3>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <div class="rating" style="width: 20%"></div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <p class="special-price"><span class="price">$9.00</span></p>                        
                                                </div>
                                                <div class="desc">
                                                    <p>
                                                    	Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit
                                                    </p>
                                                    <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet,variations of passages of Lorem Ipsum available consectetur, adipisci velit </p>
                                                    <p>Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit...
                                                        <a href="#" class="link-learn">Know More</a>
                                                    </p>
                                                </div>
                                                <div class="actions">
                                                    <div class="quick-view-btn"><a data-toggle="tooltip" data-placement="top" title="Quick View" data-original-title="Quick View" href=""><span>Quick View</span></a></div>
                                                    <div class="link-wishlist"><a data-toggle="tooltip" data-placement="top" title="Wishlist" data-original-title="Wishlist" href=""><span>Add to Wishlist</span></a></div>
                                                    <div class="link-compare"><a data-toggle="tooltip" data-placement="top" title="Compare" data-original-title="Compare" href=""><span>Add to Compare</span></a></div> 
                                                    <div class="add_cart">
                                                        <button class="btn-cart" type="button" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart">Add to Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                        
                                    </div>                
                                </li>                                
                                <li class="item item-animate wide-first col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeIn animated" data-wow-delay=".2s">
                                    <div class="item-inner">
                                        <div class="product-wrapper">
                                            <div class="thumb-wrapper img_mask">
                                                <a href="product_detail.jsp">
                                                    <span class="face"><img class="img-responsive" src="product_images/list_pro.jpg" alt="product imgae"></span>
                                                </a>
                                            </div>                                            
                                            <div class="img_description">
                                                <h3 class="product_title"><a href="product_detail.jsp">Blue Top</a></h3>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <div class="rating" style="width: 20%"></div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <p class="special-price"><span class="price">$38.00</span></p>                        
                                                </div>
                                                <div class="desc">
                                                    <p>
                                                    	Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit
                                                    </p>
                                                    <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet,variations of passages of Lorem Ipsum available consectetur, adipisci velit </p>
                                                    <p>Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit...
                                                        <a href="#" class="link-learn">Know More</a>
                                                    </p>
                                                </div>
                                                <div class="actions">
                                                    <div class="quick-view-btn"><a data-toggle="tooltip" data-placement="top" title="Quick View" data-original-title="Quick View" href=""><span>Quick View</span></a></div>
                                                    <div class="link-wishlist"><a data-toggle="tooltip" data-placement="top" title="Wishlist" data-original-title="Wishlist" href=""><span>Add to Wishlist</span></a></div>
                                                    <div class="link-compare"><a data-toggle="tooltip" data-placement="top" title="Compare" data-original-title="Compare" href=""><span>Add to Compare</span></a></div> 
                                                    <div class="add_cart">
                                                        <button class="btn-cart" type="button" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart">Add to Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                        
                                    </div>                
                                </li>                                
                                <li class="item item-animate wide-first col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeIn animated" data-wow-delay=".2s">
                                    <div class="item-inner">
                                        <div class="product-wrapper">
                                            <div class="thumb-wrapper img_mask">
                                                <a href="product_detail.jsp">
                                                    <span class="face"><img class="img-responsive" src="product_images/list_pro.jpg" alt="product imgae"></span>
                                                </a>
                                            </div>                                            
                                            <div class="img_description">
                                                <h3 class="product_title"><a href="product_detail.jsp">Jackets</a></h3>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <div class="rating" style="width: 20%"></div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <p class="special-price"><span class="price">$30.00</span></p>                        
                                                </div>
                                                <div class="desc">
                                                    <p>
                                                    	Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit
                                                    </p>
                                                    <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet,variations of passages of Lorem Ipsum available consectetur, adipisci velit </p>
                                                    <p>Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit...
                                                        <a href="#" class="link-learn">Know More</a>
                                                    </p>
                                                </div>
                                                <div class="actions">
                                                    <div class="quick-view-btn"><a data-toggle="tooltip" data-placement="top" title="Quick View" data-original-title="Quick View" href=""><span>Quick View</span></a></div>
                                                    <div class="link-wishlist"><a data-toggle="tooltip" data-placement="top" title="Wishlist" data-original-title="Wishlist" href=""><span>Add to Wishlist</span></a></div>
                                                    <div class="link-compare"><a data-toggle="tooltip" data-placement="top" title="Compare" data-original-title="Compare" href=""><span>Add to Compare</span></a></div> 
                                                    <div class="add_cart">
                                                        <button class="btn-cart" type="button" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart">Add to Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                        
                                    </div>                
                                </li>
                                
                                <li class="item item-animate wide-first col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeIn animated" data-wow-delay=".2s">
                                    <div class="item-inner">
                                        <div class="product-wrapper">
                                            <div class="thumb-wrapper img_mask">
                                                <a href="product_detail.jsp">
                                                    <span class="face"><img class="img-responsive" src="product_images/list_pro.jpg" alt="product imgae"></span>
                                                </a>
                                            </div>                                            
                                            <div class="img_description">
                                                <h3 class="product_title"><a href="product_detail.jsp">Sweater</a></h3>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <div class="rating" style="width: 20%"></div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <p class="special-price"><span class="price">$42.00</span></p>                        
                                                </div>
                                                <div class="desc">
                                                    <p>
                                                    	Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit
                                                    </p>
                                                    <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet,variations of passages of Lorem Ipsum available consectetur, adipisci velit </p>
                                                    <p>Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit...
                                                        <a href="#" class="link-learn">Know More</a>
                                                    </p>
                                                </div>
                                                <div class="actions">
                                                    <div class="quick-view-btn"><a data-toggle="tooltip" data-placement="top" title="Quick View" data-original-title="Quick View" href=""><span>Quick View</span></a></div>
                                                    <div class="link-wishlist"><a data-toggle="tooltip" data-placement="top" title="Wishlist" data-original-title="Wishlist" href=""><span>Add to Wishlist</span></a></div>
                                                    <div class="link-compare"><a data-toggle="tooltip" data-placement="top" title="Compare" data-original-title="Compare" href=""><span>Add to Compare</span></a></div> 
                                                    <div class="add_cart">
                                                        <button class="btn-cart" type="button" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart">Add to Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                        
                                    </div>                
                                </li>                                
                                <li class="item item-animate wide-first col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeIn animated" data-wow-delay=".2s">
                                    <div class="item-inner">
                                        <div class="product-wrapper">
                                            <div class="thumb-wrapper img_mask">
                                                <a href="product_detail.jsp">
                                                    <span class="face"><img class="img-responsive" src="product_images/list_pro.jpg" alt="product imgae"></span>
                                                </a>
                                            </div>                                            
                                            <div class="img_description">
                                                <h3 class="product_title"><a href="product_detail.jsp">Sober Top</a></h3>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <div class="rating" style="width: 20%"></div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <p class="special-price"><span class="price">$30.00</span></p>                        
                                                </div>
                                                <div class="desc">
                                                    <p>
                                                    	Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit
                                                    </p>
                                                    <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet,variations of passages of Lorem Ipsum available consectetur, adipisci velit </p>
                                                    <p>Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit...
                                                        <a href="#" class="link-learn">Know More</a>
                                                    </p>
                                                </div>
                                                <div class="actions">
                                                    <div class="quick-view-btn"><a data-toggle="tooltip" data-placement="top" title="Quick View" data-original-title="Quick View" href=""><span>Quick View</span></a></div>
                                                    <div class="link-wishlist"><a data-toggle="tooltip" data-placement="top" title="Wishlist" data-original-title="Wishlist" href=""><span>Add to Wishlist</span></a></div>
                                                    <div class="link-compare"><a data-toggle="tooltip" data-placement="top" title="Compare" data-original-title="Compare" href=""><span>Add to Compare</span></a></div> 
                                                    <div class="add_cart">
                                                        <button class="btn-cart" type="button" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart">Add to Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                        
                                    </div>                
                                </li>
                                <li class="item item-animate wide-first col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeIn animated" data-wow-delay=".2s">
                                    <div class="item-inner">
                                        <div class="product-wrapper">
                                            <div class="thumb-wrapper img_mask">
                                                <a href="product_detail.jsp">
                                                    <span class="face"><img class="img-responsive" src="product_images/list_pro.jpg" alt="product imgae"></span>
                                                </a>                                               
                                            </div>                                            
                                            <div class="img_description">
                                                <h3 class="product_title"><a href="product_detail.jsp">Long Sleeve T-shirt</a></h3>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <div class="rating" style="width: 20%"></div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <p class="special-price"><span class="price">$37.00</span></p>                        
                                                </div>
                                                <div class="desc">
                                                    <p>
                                                    	Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit
                                                    </p>
                                                    <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet,variations of passages of Lorem Ipsum available consectetur, adipisci velit </p>
                                                    <p>Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit...
                                                        <a href="#" class="link-learn">Know More</a>
                                                    </p>
                                                </div>
                                                <div class="actions">
                                                    <div class="quick-view-btn"><a data-toggle="tooltip" data-placement="top" title="Quick View" data-original-title="Quick View" href=""><span>Quick View</span></a></div>
                                                    <div class="link-wishlist"><a data-toggle="tooltip" data-placement="top" title="Wishlist" data-original-title="Wishlist" href=""><span>Add to Wishlist</span></a></div>
                                                    <div class="link-compare"><a data-toggle="tooltip" data-placement="top" title="Compare" data-original-title="Compare" href=""><span>Add to Compare</span></a></div> 
                                                    <div class="add_cart">
                                                        <button class="btn-cart" type="button" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart">Add to Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                        
                                    </div>                
                                </li>                                
                                <li class="item item-animate wide-first col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeIn animated" data-wow-delay=".2s">
                                    <div class="item-inner">
                                        <div class="product-wrapper">
                                            <div class="thumb-wrapper img_mask">
                                                <a href="product_detail.jsp">
                                                    <span class="face"><img class="img-responsive" src="product_images/list_pro.jpg" alt="product imgae"></span>
                                                </a>
                                            </div>                                            
                                            <div class="img_description">
                                                <h3 class="product_title"><a href="product_detail.jsp">Black Coat</a></h3>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <div class="rating" style="width: 20%"></div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <p class="special-price"><span class="price">$30,999</span></p>                        
                                                </div>
                                                <div class="desc">
                                                    <p>
                                                    	Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit
                                                    </p>
                                                    <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet,variations of passages of Lorem Ipsum available consectetur, adipisci velit </p>
                                                    <p>Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit...
                                                        <a href="#" class="link-learn">Know More</a>
                                                    </p>
                                                </div>
                                                <div class="actions">
                                                    <div class="quick-view-btn"><a data-toggle="tooltip" data-placement="top" title="Quick View" data-original-title="Quick View" href=""><span>Quick View</span></a></div>
                                                    <div class="link-wishlist"><a data-toggle="tooltip" data-placement="top" title="Wishlist" data-original-title="Wishlist" href=""><span>Add to Wishlist</span></a></div>
                                                    <div class="link-compare"><a data-toggle="tooltip" data-placement="top" title="Compare" data-original-title="Compare" href=""><span>Add to Compare</span></a></div> 
                                                    <div class="add_cart">
                                                        <button class="btn-cart" type="button" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart">Add to Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                        
                                    </div>                
                                </li>
                                                                
                                <li class="item item-animate wide-first col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeIn animated" data-wow-delay=".2s">
                                    <div class="item-inner">
                                        <div class="product-wrapper">
                                            <div class="thumb-wrapper img_mask">
                                                <a href="product_detail.jsp">
                                                    <span class="face"><img class="img-responsive" src="product_images/list_pro.jpg" alt="product imgae"></span>
                                                </a>
                                            </div>                                            
                                            <div class="img_description">
                                                <h3 class="product_title"><a href="product_detail.jsp">Red Dress</a></h3>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <div class="rating" style="width: 20%"></div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <p class="special-price"><span class="price">$42,99</span></p>                        
                                                </div>
                                                <div class="desc">
                                                    <p>
                                                    	Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit
                                                    </p>
                                                    <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet,variations of passages of Lorem Ipsum available consectetur, adipisci velit </p>
                                                    <p>Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit...
                                                        <a href="#" class="link-learn">Know More</a>
                                                    </p>
                                                </div>
                                                <div class="actions">
                                                    <div class="quick-view-btn"><a data-toggle="tooltip" data-placement="top" title="Quick View" data-original-title="Quick View" href=""><span>Quick View</span></a></div>
                                                    <div class="link-wishlist"><a data-toggle="tooltip" data-placement="top" title="Wishlist" data-original-title="Wishlist" href=""><span>Add to Wishlist</span></a></div>
                                                    <div class="link-compare"><a data-toggle="tooltip" data-placement="top" title="Compare" data-original-title="Compare" href=""><span>Add to Compare</span></a></div> 
                                                    <div class="add_cart">
                                                        <button class="btn-cart" type="button" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart">Add to Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                        
                                    </div>                
                                </li>                                
                                <li class="item item-animate wide-first col-lg-12 col-md-12 col-sm-12 col-xs-12 wow fadeIn animated item_last" data-wow-delay=".2s">
                                    <div class="item-inner">
                                        <div class="product-wrapper">                                           
                                            <div class="thumb-wrapper img_mask">
                                                <a href="product_detail.jsp">
                                                    <span class="face"><img class="img-responsive" src="product_images/list_pro.jpg" alt="product imgae"></span>
                                                </a>
                                            </div>                                            
                                            <div class="img_description">
                                                <h3 class="product_title"><a href="product_detail.jsp">Fancy Top</a></h3>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <div class="rating" style="width: 20%"></div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <p class="special-price"><span class="price">$34.00</span></p>                        
                                                </div>
                                                <div class="desc">
                                                    <p>
                                                    	Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit
                                                    </p>
                                                    <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet,variations of passages of Lorem Ipsum available consectetur, adipisci velit </p>
                                                    <p>Dolorem ipsum quia dolor sit amet,There are many variations of passages of Lorem Ipsum available consectetur, adipisci velit. Aenean volutpat lacus at dolor blandit...
                                                        <a href="#" class="link-learn">Know More</a>
                                                    </p>
                                                </div>
                                                <div class="actions">
                                                    <div class="quick-view-btn"><a data-toggle="tooltip" data-placement="top" title="Quick View" data-original-title="Quick View" href=""><span>Quick View</span></a></div>
                                                    <div class="link-wishlist"><a data-toggle="tooltip" data-placement="top" title="Wishlist" data-original-title="Wishlist" href=""><span>Add to Wishlist</span></a></div>
                                                    <div class="link-compare"><a data-toggle="tooltip" data-placement="top" title="Compare" data-original-title="Compare" href=""><span>Add to Compare</span></a></div> 
                                                    <div class="add_cart">
                                                        <button class="btn-cart" type="button" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart">Add to Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                        
                                    </div>                
                                </li>
                                
                            </ul>			
                        </div>                        
                    </div>
				</div>
				<!-- Category Products End -->                    
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
     
  <script type="text/javascript" src="js/jquery-2.1.1.js"></script> 
  <script type="text/javascript" src="js/js-functions.js"></script> 
  <script type="text/javascript" src="js/owl.carousel.min.js"></script>
  <script type="text/javascript" src="js/slidereveal.js"></script>

</body>    
</html>    