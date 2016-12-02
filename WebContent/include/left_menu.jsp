<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<div id="slide_menu">
        <div class="side-menu">
            <div class="header-top-links pull-right">
                <div class="side-nav-categories">
                	<a id="close_btn_right" class="close_btn_right">×</a>
                	<div class="drawer_title">Menu</div>
                    <div class="box-content box-category">
                        <ul id="magicat">
                           
                            <li class="level1- level1"> <span class="magicat-cat"><a href="product.do?action=category"><span>SHOP</span></a></span> </li>
                            <li class="level1- level1 open shipping_return"> <span class="magicat-cat"><a href="product.do?action=category"><span>Ticket</span></a></span> 
							<ul>
								<li class="first level2- level2"> <span class="magicat-cat"><a href="product.do?action=category"><span> ALL</span></a></span> </li>
								<li class="first level2- level2"> <span class="magicat-cat"><a href="product.do?action=categorySort&categoryNum=1"><span> CELEBRITY</span></a></span> </li>
								<li class="first level2- level2"> <span class="magicat-cat"><a href="product.do?action=categorySort&categoryNum=2"><span> ATHLETE</span></a></span> </li>
								<li class="first level2- level2"> <span class="magicat-cat"><a href="product.do?action=categorySort&categoryNum=3"><span> POLITICIAN</span></a></span> </li>
							</ul>
							</li>  
<!--                             <li class="level1- level1 open shipping_return"> <span class="magicat-cat"><a href="#"><span>PAGES</span></a></span> -->
<!--                                 <ul> -->
<!--                                     <li class="first level2- level2"> <span class="magicat-cat"><a href="category.jsp"><span> GRID</span></a></span> </li> -->
<!--                                     <li class="level2- level2"> <span class="magicat-cat"><a href="list.jsp"><span>LIST</span></a></span> </li> -->
<!--                                     <li class="level2- level2"> <span class="magicat-cat"><a href="product_detail.jsp"><span>PRODUCT DETAIL</span></a></span> </li> -->
<!--                                     <li class="last level2- level2"> <span class="magicat-cat"><a href="shopping_cart.jsp"><span>SHOPPING CART</span></a></span> </li> -->
<!--                                     <li class="last level2- level2"> <span class="magicat-cat"><a href="checkout.jsp"><span>CHECKOUT</span></a></span> </li> -->
<!--                                     <li class="last level2- level2"> <span class="magicat-cat"><a href="wishlist.jsp"><span>WISHLIST</span></a></span> </li> -->
<!--                                     <li class="last level2- level2"> <span class="magicat-cat"><a href="dashboard.jsp"><span>DASHBOARD</span></a></span> </li> -->
<!--                                     <li class="last level2- level2"> <span class="magicat-cat"><a href="register.jsp"><span>REGISTER</span></a></span> </li> -->
<!--                                     <li class="last level2- level2"> <span class="magicat-cat"><a href="about_us.jsp"><span>ABOUT US</span></a></span> </li> -->
<!-- 								 <li class="level1- level1 open shipping_return"> <span class="magicat-cat"><a href="blog.jsp"><span>BLOG</span></a></span> -->
<!-- 								</li> -->
<!-- 								<li class="last level2- level2"> <span class="magicat-cat"><a href="contact.jsp"><span>CONTACT US</span></a></span> </li> -->
<!--                                     <li class="last level2- level2"> <span class="magicat-cat"><a href="404error.jsp"><span>404 ERROR</span></a></span> </li> -->
<!--                                     <li class="last level2- level2"> <span class="magicat-cat"><a href="login.jsp"><span>LOGIN</span></a></span> </li> -->
<!-- 								</ul> -->
<!--                             </li> -->
                            <li class="level1- level1 open shipping_return"> <span class="magicat-cat"><a href="#"><span>ACCOUNT</span></a></span>
                                <ul>
                                	<c:choose>
                                		<c:when test="${empty sessionScope.loginId}">
		                                    <li class="last level2- level2"> <span class="magicat-cat"><a href="member.do?action=register"><span>REGISTER</span></a></span> </li>
		                                    <li class="last level2- level2"> <span class="magicat-cat"><a href="member.do?action=signin"><span>LOGIN</span></a></span> </li>
	                                    </c:when>
	                                    <c:otherwise>
		                                    <li class="last level2- level2"> <span class="magicat-cat"><a href="member.do?action=logout"><span>LOGOUT</span></a></span> </li>
		                                    <li class="last level2- level2"> <span class="magicat-cat"><a href="cart.do?action=showCart&userId=${sessionScope.loginId}"><span>CART</span></a></span> </li>
		                                    <li class="last level2- level2"> <span class="magicat-cat"><a href="order.do?action=showOrder"><span>DASHBOARD</span></a></span> </li>
	                                    </c:otherwise>
                                    </c:choose>
								</ul>
                            </li>  
                        </ul>
                    </div>
                </div>        
                <!-- End Default Welcome Message -->        
            </div>
        </div>
    </div>