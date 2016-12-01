<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <!-- style 적용, css 및 자바스크립트, 부트스트랩 불러오기 -->
    <jsp:include page="include\head.jsp" />
</head>

<!-- Body Start -->

<body class=" page_container shopping_cart side-menu-closed">
    <div class="container-fluid">	
       <header>
    		<!-- 최상단 메뉴 설정 -->
			<jsp:include page="include\header.jsp" />
		</header>

        <div class="content-wrapper">		
            <section class="blog-wrapper">
                <div class="container padd_none">
                    <div class="page_title">
                        <div class="page_top">
                            <h1>SHOPPING CART</h1>
                            <span>Free Shipping on pre-paid orders</span>
                        </div>
                        
                        <div class="page_bottom">
                            <a class="shop_more" href="category.jsp"><i class="fa fa-chevron-left"></i> Shop More </a>
                            <span>Your bag contains 2 items and comes to a total of $64.00</span>
                            <button type="button" title="Proceed to Checkout" class="button btn-buy-now"><span>Proceed to Checkout</span></button>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <!-- Start Shopping CART Table -->
                        <div class="table-responsive">
                            <form method="post">
                                <input type="hidden" value="Vwww7itR3zQFe86m" name="form_key">
                                <fieldset>
                                    <table class="table-responsive data-table cart-table table-hover" id="shopping-cart-table">
                                        <thead>
                                            <tr class="first last">
                                                <th></th>
                                                <th>Product Name</th>
                                                <th>Product Detail</th>
                                                <th>Quantity</th>
                                                <th>Price</th>
                                                <th colspan="2" class="text-center">Edit / Remove</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <!-- 반복문이 시작되는 곳 -->
                                        	<c:forEach var="items" items="${requestScope.cartList}">
	                                            <tr class="first odd">
	                                                <td class="shopping-table-image">
	                                                    <a class="product-image" title="Women's Crepe Printed Black" href=""><img alt="Women's Crepe Printed Black" src="images/small_image.jpg"></a>
	                                                </td>
	                                                <td><h2 class="product-name"><a href="">상품 이름 들어가는 곳</a></h2></td>
	                                                <td class="a-right shopping-table-title-product">
	                                                    <div class="product-name">
	                                                        <span class="cart-price">
	                                                            <span class="price"></span>
	                                                            <span class="cart-text">COD:
	                                                                <span class="available">Available</span><br>
	                                                                Will Ship By:
	                                                                <span class="ship-date">Tue,Sep 01st</span>
	                                                            </span>
	                                                        </span>
	                                                    </div>
	                                                </td>
	                                                <td class="a-center movewishlist"><div class="product-name"><input maxlength="12" class="input-text qty" title="Qty" size="4" value="1" name="cart[15945][qty]"></div></td>
	                                                <td class="a-right movewishlist"><div class="product-name"><span class="cart-price"><span class="price">items.cartPrice</span></span></div></td>
	                                                <td class="a-center cart_edit_near"><div class="product-name cart_edit"><a class="edit-bnt" data-toggle="tooltip" data-placement="top" title="Edit Item" data-original-title="Edit Item"></a></div></td>
	                                                <td class="a-center"><div class="product-name"><a class="remove-item" data-toggle="tooltip" data-placement="top" title="Remove item" data-original-title="Remove Item"></a></div></td>
	                                            </tr>
                                        	</c:forEach>
                                        </tbody>
                                    </table>
                                    <div class="grand_total">
                                        <div class="col-lg-8 col-md-7 col-sm-6 col-xs-7 padd_lnone">
                                            <button class="button btn_update" title="Update Cart" value="update_qty" name="update_cart_action" type="submit">Update Cart</button>
                                            <button  class="button btn_empty" id="empty_cart_button" title="Clear Cart" value="empty_cart" name="update_cart_action" type="submit">Clear Cart</button>
                                        </div>
                                        <div class="col-lg-4 col-md-5 col-sm-6 col-xs-5">
                                            <table id="tbl_cart_grand_tot" class="table-responsive data-table cart-table grand_tbl">
                                                <tr>
                                                    <td class="label_td"><span>Total</span></td>
                                                    <td><span class="price">$587.00</span></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-sx-12 title_bottom">
                                        <button type="button" title="Proceed to Checkout" class="button btn-buy-now"><span>Proceed to Checkout</span></button>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                    <!-- End Shopping CART Table -->
                    
                    
                    <!-- Slider Start -->
                    <div class="clearfix"></div>
                    
                 <!-- Slider End -->
                
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </section>
        </div>
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