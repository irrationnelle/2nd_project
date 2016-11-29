<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <!-- style 적용, css 및 자바스크립트, 부트스트랩 불러오기 -->
    <jsp:include page="include\head.jsp" />
</head>

<!-- Body Start -->

<body class=" page_container category_page side-menu-closed ">
	<div class="row">
		<div class="container-fluid">
			<header>
			
        		<!-- 최상단 메뉴 설정 -->
				<jsp:include page="include\header.jsp" />
			</header>
    
    		
    		<!-- 로그인 화면 설정 -->
            <div class="content-wrapper extra_login page_height">	
                <section class="contact_content">
                    <div class="container">		
                        <div class="page_title">
                            <div class="page_top">
                                <h1> LOGIN </h1>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-12 col-sm-12 col-xs-12 login_button m_auto">
                            <div class="form-minimal">
                                <form accept-charset="UTF-8" class="contact-form" action="member.do?action=login" method="post">
                                    <input type="hidden" name="form_type" value="contact"><input type="hidden" value="✓" name="utf8">
                                    
                                    <div class="form-input">
                                        <input class="common_form" type="text" value="" autocapitalize="off" autocorrect="off" name="id" placeholder="id" id="ContactFormEmail">
                                    </div>
                                    
                                    <div class="form-input hide">
                                        <input  type="tel" value="" pattern="[0-9\-]*" name="contact[phone-number]" placeholder="Phone Number" id="ContactFormPhone">
                                    </div>
                                    
                                    <div class="form-input">
                                        <input class="common_form" id="CreatePassword" type="password" name="password" placeholder="Password">
                                    </div>
                                    <div class="">
                                        <input type="submit" value="SIGN IN" class="btn btn--block right">
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="forgot_link">
                                        <a href="register.jsp" id="customer_register_link">Create account</a>
                                        <a onclick="showRecoverPasswordForm();return false;" href="password_recover.html" class="caps ">Forgot Password?</a>
                                        <br>
                                    </div>                    
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
		</div><!--row-->
    </div><!--container-fluid-->
	
    <!-- Footer 시작-->
  	<jsp:include page="include\footer.jsp" />
    <!-- Footer 끝-->    
				
	<!-- 왼쪽 버거 메뉴 -->
	<jsp:include page="include\left_menu.jsp" />
	<!-- 왼쪽 버거 메뉴 끝-->
	
    <!-- 오른쪽 장바구니 메뉴 -->
    <jsp:include page="include\right_cart.jsp" />
	<!-- 오른쪽 장바구니 메뉴 끝-->


	<!--JAVA SCRIPT-->
    <script type="text/javascript" src="js/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="js/js-functions.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/slidereveal.js"></script>
</body>    
</html>    