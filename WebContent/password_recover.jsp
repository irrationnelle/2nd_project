<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   	
   	<!-- style 적용, css 및 자바스크립트, 부트스트랩 불러오기 -->
    <jsp:include page="include\head.jsp" />
</head>

<body class=" page_container category_page side-menu-closed ">
	<div class="row">
		<div class="container-fluid">
			<header>
        	
        		<!-- 최상단 메뉴 설정 -->
				<jsp:include page="include\header.jsp" />
			</header>
    
    		<div class="content-wrapper page_height">	
				<section class="contact_content">
					<div class="container">
                        <div class="page_title">
                            <div class="page_top">
                                <h1> RESET PASSWORD </h1>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-12 col-sm-12 col-xs-12 login_button m_auto">
                            <div class="form-minimal">
                                <form accept-charset="UTF-8" class="contact-form" action="/contact" method="post">
                                    <div class="form-input">
                                        <input class="common_form" type="email" value="" autocapitalize="off" autocorrect="off" name="contact[email]" placeholder="Email" id="ContactFormEmail">
                                    </div>
                                    <div class="">
                                        <input type="submit" value="SIGN IN" class="btn btn--block right">
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="forgot_link">
                                        <a onclick="showRecoverPasswordForm();return false;" href="login.jsp" class="caps h6">Back to Login</a><br>
                                    </div>
                                </form>
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


  
  <script type="text/javascript" src="js/jquery-2.1.1.js"></script> 
  <script type="text/javascript" src="js/js-functions.js"></script> 
  <script type="text/javascript" src="js/owl.carousel.min.js"></script>
  <script type="text/javascript" src="js/slidereveal.js"></script>



</body>    
</html>    