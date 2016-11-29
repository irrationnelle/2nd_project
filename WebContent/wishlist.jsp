<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   	
   	<!-- style 적용, css 및 자바스크립트, 부트스트랩 불러오기 -->
    <jsp:include page="include\head.jsp" />
</head>

<!-- Body Start -->

<body class=" page_container side-menu-closed wishlist_page" >
		<div class="row">
		<div class="container-fluid">
	<header>
        
        <!-- 최상단 메뉴 설정 -->
		<jsp:include page="include\header.jsp" />
	</header>
	
	
	<div class="content-wrapper">	
	
		<section class="col2-right-layout">
	<div class="container">
	<div class="row">
		<div class="page_title">
			<div class="page_top">
				<h1> WISHLIST</h1>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="wishlist_content clearfix">
			<div id="content" class="col-lg-12 col-md-12 col-sm-11 col-xs-12">
      <!-- Wishlist Table Start -->
	  <div class="table-responsive">
      <table class="table-responsive data-table cart-table table-hover">
        <thead>
          <tr>
            <td class=""></td>
            <td class="text-left">Product Name</td>
            <td class="text-left">Model</td>
            <td class="text-right">Stock</td>
            <td class="text-right">Unit Price</td>
            <td colspan="2" class="text-center">Action</td>
          </tr>
        </thead>
        <tbody id="wishlist-row42">
          <tr>
            <td><a href="#"><img src="images/small_image.jpg" alt="Apple Cinema 30&quot;" title="Apple Cinema 30&quot;"></a> </td>
            <td class="text-left"><h2 class="product-name"><a href="#">Apple Cinema 30"</a></td>
            <td class="text-left"><div class="model_td">Product 15 </div></td>
            <td class="text-right"><div class="model_td">In Stock</div></td>
            <td class="text-right"><div class="price model_td"> $90.00  </div></td>
            <td class="a-center cart_edit_near"><div class="product-name model_td cart_edit"><a class="edit-bnt" data-original-title="Edit Item" title="Edit Item" data-placement="top" data-toggle="tooltip"></a></div></td>
            <td class="a-center"><div class="product-name model_td"><a class="remove-item" data-original-title="Remove Item" title="Remove item" data-placement="top" data-toggle="tooltip"></a></div></td>         
 </tr>
        
       
          <tr>
            <td><a href="#"><img src="images/small_image.jpg" alt="Samsung SyncMaster 941BW" title="Samsung SyncMaster 941BW"></a> </td>
            <td class="text-left"><h2 class="product-name"><a href="#">Women Tops</a></td>
            <td class="text-left"><div class="model_td">Product 6</div></td>
            <td class="text-right"><div class="model_td">2-3 Days</div></td>
            <td class="text-right"><div class="price model_td"> $200.00 </div></td>
            <td class="a-center cart_edit_near"><div class="product-name model_td cart_edit"><a class="edit-bnt" data-original-title="Edit Item" title="Edit Item" data-placement="top" data-toggle="tooltip"></a></div></td>
            <td class="a-center"><div class="product-name model_td"><a class="remove-item" data-original-title="Remove Item" title="Remove item" data-placement="top" data-toggle="tooltip"></a></div></td>         
          </tr>
        
		 
          <tr>
            <td><a href="#"><img src="images/small_image.jpg" alt="Samsung SyncMaster 941BW" title="Samsung SyncMaster 941BW"></a> </td>
            <td class="text-left"><h2 class="product-name"><a href="#">Women Tops</a></td>
            <td class="text-left"><div class="model_td">Product 6</div></td>
            <td class="text-right"><div class="model_td">2-3 Days</div></td>
            <td class="text-right"><div class="price model_td"> $200.00 </div></td>
            <td class="a-center cart_edit_near"><div class="product-name model_td cart_edit"><a class="edit-bnt" data-original-title="Edit Item" title="Edit Item" data-placement="top" data-toggle="tooltip"></a></div></td>
            <td class="a-center"><div class="product-name model_td"><a class="remove-item" data-original-title="Remove Item" title="Remove item" data-placement="top" data-toggle="tooltip"></a></div></td>         
          </tr>
       
		
          <tr>
            <td><a href="#"><img src="images/small_image.jpg" alt="Samsung SyncMaster 941BW" title="Samsung SyncMaster 941BW"></a> </td>
            <td class="text-left"><h2 class="product-name"><a href="#">Women Sweater</a></td>
            <td class="text-left"> <div class="model_td">Product 6</div></td>
            <td class="text-right"><div class="model_td">2-3 Days</div></td>
            <td class="text-right"><div class="price model_td"> $200.00 </div></td>
            <td class="a-center cart_edit_near"><div class="product-name model_td cart_edit"><a class="edit-bnt" data-original-title="Edit Item" title="Edit Item" data-placement="top" data-toggle="tooltip"></a></div></td>
            <td class="a-center"><div class="product-name model_td"><a class="remove-item" data-original-title="Remove Item" title="Remove item" data-placement="top" data-toggle="tooltip"></a></div></td>         
          </tr>
        </tbody>
      </table>
	  </div>
	  <!-- Wishlist Table End -->
     
    </div>
	<!-- Wishlist Content End -->
	
	
	
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
      
  <script type="text/javascript" src="js/jquery-2.1.1.js"></script> 
  <script type="text/javascript" src="js/js-functions.js"></script> 
  <script type="text/javascript" src="js/owl.carousel.min.js"></script>
  <script type="text/javascript" src="js/slidereveal.js"></script>



</body>    
</html>    