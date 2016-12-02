<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
				<div class="top_bar ff-section">                   
                    <div class="middle-nav">
                        <!-- Left Menu Holder -->
                        <div class="col-lg-4 col-md-3 col-sm-5 col-xs-6">
                            <div class="menu-holder">
                                <div class="vcenter-wrapper">
                                    <div class="vcenter">
                                        <a id="menu_slide" href="javascript:void(0)" class="menu-button">
                                            <span class="menu-button__inner clearfix background-check">
                                                <span class="menu-button__lines">
                                                    <span class="menu-button__line-1"></span>
                                                    <span class="menu-button__line-2"></span>
                                                    <span class="menu-button__line-3"></span>
                            
                                                </span>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Left Menu Holder --> 
                            <div class="logo-cat">
                                <span class="menu-button__label__text-opened">
                                    <span class="logo-style"> <a href="index.jsp"><img id="logoimage" class="img-responsive" alt="scilla" src="images/logo2.png"></a></span>
                                </span>
                                <span class="menu-button__label__text-closed">
                                    <span class="logo-style"> <a href="index.jsp"><img id="logoimage1" class="img-responsive" alt="scilla" src="images/logo2.png"></a> </span>     
                                </span>	 
                            </div>
                        </div>
<!--                         <div class="col-lg-6 col-md-7 col-sm-7 col-xs-6" style="background: green;"> -->
                        <div class="col-lg-4 col-md-7 col-sm-7 col-xs-6">
                            <div class="cat_menu">
                                <ul>                        
                                    <li><a class="nav_link" href="product.do?action=category">Shop</a></li>
                                    
                                    <li><a class="nav_link" href="product.do?action=category">Ticket</a>
                                        <div class="cat_submenuwrap">
                                            <ul class="cat_submenu">
                                            	<li><a href="product.do?action=category">All</a></li>
                                               	<li><a href="product.do?action=categorySort&categoryNum=1">Celebrity</a></li>
                                                <li><a href="product.do?action=categorySort&categoryNum=2">Athlete</a></li>
                                                <li><a href="product.do?action=categorySort&categoryNum=3">Politician</a></li>
                                            </ul>
                                        </div>
                                    </li>
<!--                                     <li><a class="nav_link" href="category.jsp">Women</a> -->
<!--                                         <div class="cat_submenuwrap"> -->
<!--                                             <div class="cat_submenu mr_full_width"> -->
<!--                                                 <div class="col-lg-9 col-md-9 m_auto"> -->
<!--                                                     <div class="row"> -->
<!--                                                         <div class="col-lg-3 col-md-3 col-sm-3"> -->
<!--                                                             <ul> -->
<!--                                                                 <li><a href="category.jsp" class="inner_menu">Shirt</a> -->
<!--                                                                     <ul class="int_menu"> -->
<!--                                                                         <li><a href="category.jsp">Pants<span class="label_new">NEW</span></a></li> -->
<!--                                                                         <li><a href="category.jsp">Hats</a></li> -->
<!--                                                                         <li><a href="category.jsp">Accessories</a></li> -->
<!--                                                                     </ul> -->
<!--                                                                 </li> -->
<!--                                                             </ul> -->
<!--                                                             <img class="img-responsive menu_bottom_img" alt="" src="images/menu_full_bg_bottom1.png" /> -->
<!--                                                         </div>                                         -->
<!--                                                         <div class="col-lg-3 col-md-3 col-sm-3"> -->
<!--                                                             <ul> -->
<!--                                                                 <li><a href="category.jsp" class="inner_menu">Accessories</a> -->
<!--                                                                     <ul class="int_menu"> -->
<!--                                                                         <li><a href="category.jsp">Hats</a></li> -->
<!--                                                                         <li><a href="category.jsp">Shirt<span class="label_hot">Hot</span></a></li> -->
<!--                                                                         <li><a href="category.jsp">New</a></li> -->
<!--                                                                     </ul> -->
<!--                                                                 </li> -->
<!--                                                             </ul> -->
<!--                                                             <img class="img-responsive menu_bottom_img" alt="" src="images/menu_full_bg_bottom2.png" /> -->
<!--                                                         </div>                                                 -->
<!--                                                         <div class="col-lg-3 col-md-3 col-sm-3"> -->
<!--                                                             <ul> -->
<!--                                                                 <li><a href="category.jsp" class="inner_menu">Jeans</a> -->
<!--                                                                     <ul class="int_menu"> -->
<!--                                                                         <li><a href="category.jsp">Long</a></li> -->
<!--                                                                         <li><a href="category.jsp">Short</a></li> -->
<!--                                                                         <li><a href="category.jsp">Medium</a></li> -->
<!--                                                                     </ul> -->
<!--                                                                 </li> -->
<!--                                                             </ul> -->
<!--                                                             <img class="img-responsive menu_bottom_img" alt="" src="images/menu_full_bg_bottom3.png" /> -->
<!--                                                         </div> -->
<!--                                                         <div class="col-lg-3 col-md-3 col-sm-3"> -->
<!--                                                             <ul> -->
<!--                                                                 <li><a href="category.jsp" class="inner_menu">Shirt</a> -->
<!--                                                                     <ul class="int_menu"> -->
<!--                                                                         <li><a href="category.jsp">Pants<span class="label_new">NEW</span></a></li> -->
<!--                                                                         <li><a href="category.jsp">Hats</a></li> -->
<!--                                                                         <li><a href="category.jsp">Accessories</a></li> -->
<!--                                                                     </ul> -->
<!--                                                                 </li> -->
<!--                                                             </ul> -->
<!--                                                             <img class="img-responsive menu_bottom_img" alt="" src="images/menu_full_bg_bottom4.png" /> -->
<!--                                                         </div>                                         -->
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                         </div> -->
<!--                                     </li> -->
                                                                
<!--                                     <li><a class="nav_link" href="">Page</a> -->
<!--                                         <div class="cat_submenuwrap"> -->
<!--                                             <ul class="cat_submenu"> -->
<!--                                                 <li><a href="category.jsp">Grid</a></li> -->
<!--                                                 <li><a href="list.jsp">List</a></li> -->
<!--                                                 <li><a href="product_detail.jsp">Product Detail</a></li> -->
<%--                                                 <li><a href="cart.do?action=showCart&userId=${sessionScope.loginId}">Shopping Cart</a></li> --%>
<!--                                                 <li><a href="checkout.jsp"> Checkout</a></li> -->
<!--                                                 <li><a href="wishlist.jsp">Wishlist</a></li> -->
<!--                                                 <li><a href="dashboard.jsp">Dashboard</a></li> -->
<!--                                                 <li><a href="register.jsp">Register</a></li> -->
<!--                                                 <li><a href="about_us.jsp">About us</a></li> -->
<!--                                                 <li class="with_sub_menu"><a href="blog.jsp">Blog</a> -->
<!--                                                     <div class="cat_submenuwrap1"> -->
<!--                                                         <ul class="cat_submenu1"> -->
<!--                                                             <li><a href="blog-detail.jsp">Blog Detail</a></li> -->
<!--                                                         </ul> -->
<!--                                                     </div> -->
<!--                                                 </li> -->
<!--                                                 <li><a href="contact.jsp">Contact us</a></li> -->
<!--                                                 <li><a href="404error.jsp">404 Error Page</a></li> -->
<!--                                                 <li><a href="login.jsp">Login</a></li> -->
<!--                                             </ul> -->
<!--                                         </div> -->
<!--                                     </li> -->
                                    
                                    <li><a class="nav_link" href="">Account</a>
                                        <div class="cat_submenuwrap">
                                            <ul class="cat_submenu">
                                            	<c:choose>
                                            		<c:when test="${empty sessionScope.loginId}">
                                                		<li><a href="member.do?action=register">Register</a></li>
                                                		<li><a href="member.do?action=signin">Login</a></li>
                                                	</c:when>
                                                	<c:otherwise>
                                                		<li><a href="member.do?action=logout">Logout</a></li>
                                                		<li><a href="cart.do?action=showCart&userId=${sessionScope.loginId}">Shopping Cart</a></li>
		                                                <li><a href="order.do?action=showOrder">Dashboard</a></li>
		                                            </c:otherwise>
                                            	</c:choose>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>	
                            </div>
                        </div>
                         <div class="col-lg-4 col-md-2 col-sm-2 col-xs-6">
                            <div class="log_in">
                                 <a id="cart-black">
                                    <span class="log_link nav_link">My Cart</span>
                                    <span id="cart_item_count" class="btn--cart nav_link">1</span>
                                </a>
                            </div>
                        </div>
                    </div>                
                </div>