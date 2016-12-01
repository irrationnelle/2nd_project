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
<body class=" page_container side-menu-closed dashboard_page" >
		<div class="row">
		<div class="container-fluid">
	<header>
	
         <!-- 최상단 메뉴 설정 -->
		<jsp:include page="include\header.jsp" />
	</header>
	
	
	<div class="content-wrapper">	
	
		<section class="col2-right-layout dashboard_content">
  <div class="container">
      <div class="row">
		<div class="page_title">
			<div class="page_top">
				<h1> 주문 확인 </h1>
			</div>
		</div>
	</div>
    <div class="row">
    <div class="main-container">
      <div class="col-lg-1 col-md-1"> 
	   </div>
	  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
        <div class="my-account">
          
          <div class="dashboard">
            <div class="welcome-msg"> <strong>안녕하세요, ${sessionScope.loginId} 님!</strong>
              <p>우리 서비스를 이용해주셔서 감사합니다! =)</p>
            </div>
            <div class="recent-orders">
                <div class="page-title">
                <h2>최근 주문 내역</h2>
              </div>
              <div class="table-responsive">
                <table class="data-table" id="my-orders-table">
                  <col>
                  <col>
                  <col>
                  <col>
                  <col>
                  <col>
                  <thead>
                    <tr class="first last">
                      <th>주문 번호 #</th>
                      <th>주문 일자</th>
                      <th>받는 사람</th>
                      <th><span class="nobr">총 금액</span></th>
                      <th>현재 상태</th>
                      <th>&nbsp;</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="items" items="${requestScope.orderInfoList}">
	                    <tr>
	                    	<td> ${items.orderId} </td>
	                    	<td> ${items.orderDate} </td>
	                    	<td> ${items.id} </td>
	                    	<td> ${items.orderAmount} </td>
	                    	<td> ${items.orderStatus} </td>
	                    	<td class="a-center last"><span class="nobr"> <a href="#">View Order</a> <span class="separator">|</span> <a href="#">Reorder</a> </span></td>
	                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
<!--             <div class="box-account"> -->
<!--               <div class="page-title"> -->
<!--                 <h2>Account Information</h2> -->
<!--               </div> -->
<!--               <div class="col2-set"> -->
<!--                 <div class="col-1"> -->
<!--                   <h5>Contact Information</h5> -->
<!--                   <a href="#">Edit</a> -->
<!--                   <p> Thomas J<br> -->
<!--                     johndoe5@gmail.com<br> -->
<!--                     <a href="#">Change Password</a> </p> -->
<!--                 </div> -->
<!--                 <div class="col-2"> -->
<!--                   <h5>Newsletters</h5> -->
<!--                   <a href="#">Edit</a> -->
<!--                   <p> You are currently not subscribed to any newsletter. </p> -->
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="col2-set"> -->
<!--                 <h4>Address Book</h4> -->
<!--                 <div class="manage_add"><a href="#">Manage Addresses</a> </div> -->
<!--                 <div class="col-1"> -->
<!--                   <h5>Primary Billing Address</h5> -->
<!--                   <address> -->
<!--                   John D.<br> -->
<!--                   512 North catalina Avenue, No.3002<br> -->
<!--                    Redondo Beach, Callfornia<br> -->
<!--                   United States<br> -->
<!--                   T: 454541 <br> -->
<!--                   <a href="#">Edit Address</a> -->
<!--                   </address> -->
<!--                 </div> -->
<!--                 <div class="col-2"> -->
<!--                   <h5>Primary Shipping Address</h5> -->
<!--                   <address> -->
<!--                   John D.<br> -->
<!--                   512 North catalina Avenue, No.3002<br> -->
<!--                    Redondo Beach, Callfornia<br> -->
<!--                   United States<br> -->
<!--                   T: 454541 <br> -->
<!--                   <a href="#">Edit Address</a> -->
<!--                   </address> -->
<!--                 </div> -->
<!--               </div> -->
            </div>
          </div>
        </div>
      </div>
	  
    </div>
    </div>
  </div>
</section>
		
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