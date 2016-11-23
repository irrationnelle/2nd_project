<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML>
<html>
<head>
<title>You Never Die If You Buy to The Death</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/owl.carousel.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
	<!-- cart -->
		<script src="js/simpleCart.min.js"> </script>
	<!-- cart -->
</head>
<body>
	<!--header-->
		<div class="header">
			<div class="header-top">
			<c:choose>
				<c:when test="${empty sessionScope.loginId}">
					<div class="top-right">
					<ul>
						<li class="text"><a href="login.html">login</a></li>
						<li><div class="cart box_1">
								<a href="checkout.html">
									 <span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)
								</a>	
								<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
								<div class="clearfix"> </div>
							</div></li>
					</ul>
					</div>
				</c:when>
				<c:otherwise>
					<div class="top-right">
					<ul>
						<li class="text"><a href="member.do?action=logout">logout</a></li>
						<li><div class="cart box_1">
								<a href="checkout.html">
									 <span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)
								</a>	
								<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
								<div class="clearfix"> </div>
							</div></li>
					</ul>
					</div>
					<div class="top-right">
						<font color="white">照括馬室推! ${sessionScope.loginId} 還!</font>
					</div>
				</c:otherwise>
			</c:choose>
				<div class="clearfix"></div>
			</div>
			</div>
			<div class="header-bottom">
					<div class="container">
<!--/.content-->
<div class="content white">
	<nav class="navbar navbar-default" role="navigation">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
	        <h1 class="navbar-brand"><a  href="index.html">2nd Project</a></h1>
	    </div>
	    <!--/.navbar-header-->
	
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	        <ul class="nav navbar-nav">
			<li><a href="index.html">Home</a></li>
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
						            <li><a class="list" href="products.html">Women</a></li>
						            <li><a class="list1" href="products.html">PrettySecrets</a></li>
						            <li><a class="list1" href="products.html">N-Gal</a></li>
						            <li><a class="list1" href="products.html">Lobster</a></li>
						            <li><a class="list1" href="products.html">Citypret</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
						            <li><a class="list" href="products.html">Kids</a></li>
						            <li><a class="list1" href="products.html">River Island</a></li>
						            <li><a class="list1" href="products.html">Penny</a></li>
						            <li><a class="list1" href="products.html">Nidhi Munim</a></li>
						            <li><a class="list1" href="products.html">Divaat</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
						            <li><a class="list" href="products.html">Men</a></li>
						            <li><a class="list1" href="products.html">Fiesta Clara</a></li>
						            <li><a class="list1" href="products.html">Quiksilver</a></li>
						            <li><a class="list1" href="products.html">Incult</a></li>
						            <li><a class="list1" href="products.html">Proline</a></li>
					            </ul>
				            </div>
			            </div>
		            </ul>
		        </li>
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">women <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">
				            <div class="col-sm-4">
					           <ul class="multi-column-dropdown">
						            <li><a class="list" href="products.html">Women</a></li>
						            <li><a class="list1" href="products.html">PrettySecrets</a></li>
						            <li><a class="list1" href="products.html">N-Gal</a></li>
						            <li><a class="list1" href="products.html">Lobster</a></li>
						            <li><a class="list1" href="products.html">Citypret</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					             <ul class="multi-column-dropdown">
						            <li><a class="list"  href="products.html">Kids</a></li>
						            <li><a class="list1" href="products.html">River Island</a></li>
						            <li><a class="list1" href="products.html">Penny</a></li>
						            <li><a class="list1" href="products.html">Nidhi Munim</a></li>
						            <li><a class="list1" href="products.html">Divaat</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
						            <li><a  class="list" href="products.html">Men</a></li>
						            <li><a class="list1" href="products.html">Fiesta Clara</a></li>
						            <li><a class="list1" href="products.html">Quiksilver</a></li>
						            <li><a class="list1" href="products.html">Incult</a></li>
						            <li><a class="list1" href="products.html">Proline</a></li>
					            </ul>
				            </div>
			            </div>
		            </ul>
		        </li>
		        <li class="dropdown">
		        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">kids <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
						            <li><a class="list" href="products.html">Women</a></li>
						            <li><a class="list1" href="products.html">PrettySecrets</a></li>
						            <li><a class="list1" href="products.html">N-Gal</a></li>
						            <li><a class="list1" href="products.html">Lobster</a></li>
						            <li><a class="list1" href="products.html">Citypret</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					             <ul class="multi-column-dropdown">
						            <li><a  class="list" href="products.html">Kids</a></li>
						            <li><a class="list1" href="products.html">River Island</a></li>
						            <li><a class="list1" href="products.html">Penny</a></li>
						            <li><a class="list1" href="products.html">Nidhi Munim</a></li>
						            <li><a class="list1" href="products.html">Divaat</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
						            <li><a class="list" href="products.html">Men</a></li>
						            <li><a class="list1" href="products.html">Fiesta Clara</a></li>
						            <li><a class="list1" href="products.html">Quiksilver</a></li>
						            <li><a class="list1" href="products.html">Incult</a></li>
						            <li><a class="list1" href="products.html">Proline</a></li>
					            </ul>
				            </div>
			            </div>
		            </ul>
		        </li>
					<li><a href="products.html">Top</a></li>
					<li><a href="products.html">Bikini</a></li>
	        </ul>
	    </div>
	    <!--/.navbar-collapse-->
	</nav>
	<!--/.navbar-->
</div>
			   <div class="search-box">
					<div id="sb-search" class="sb-search">
						<form>
							<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
							<input class="sb-search-submit" type="submit" value="">
							<span class="sb-icon-search"> </span>
						</form>
					</div>
				</div>
			
<!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
					<!-- //search-scripts -->
					<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!--header-->
		<div class="banner-section">
			<div class="container">
				<div class="banner-grids">
					<div class="col-md-6 banner-grid">
						<h2>the latest collections</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						<a href="products.html" class="button"> shop now </a>
					</div>
				<div class="col-md-6 banner-grid1">
						<img src="images/white.jpg" class="img-responsive" alt=""/>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</div>
		<div class="header-end">
            <div class="container">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                  <!-- Indicators -->
                  <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                  </ol>

                  <!-- Wrapper for slides -->
                  <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="images/cat01.png" alt="...">
                        <div class="carousel-caption car-re-posn">
                            <h3>AirMax</h3>
                            <h4>You feel to fall</h4>
                            <span class="color-bar"></span>
                        </div>
                    </div>
                    <div class="item">
                      <img src="images/cat01.png" alt="...">
                        <div class="carousel-caption car-re-posn">
                            <h3>AirMax</h3>
                            <h4>You feel to fall</h4>
                            <span class="color-bar"></span>
                        </div>
                    </div>
                    <div class="item">
                      <img src="images/cat01.png" alt="...">
                        <div class="carousel-caption car-re-posn">
                            <h3>AirMax</h3>
                            <h4>You feel to fall</h4>
                            <span class="color-bar"></span>
                        </div>
                    </div>
                  </div>

                  <!-- Controls -->
                  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left car-icn" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right car-icn" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
		<div class="banner-bottom">
		<div class="gallery-cursual">
		<!--requried-jsfiles-for owl-->
		<script src="js/owl.carousel.js"></script>
			<script>
				$(document).ready(function() {
					$("#owl-demo").owlCarousel({
						items : 3,
						lazyLoad : true,
						autoPlay : true,
						pagination : false,
					});
				});
			</script>
		<!--requried-jsfiles-for owl -->
		<!--start content-slider-->
		<div id="owl-demo" class="owl-carousel text-center">
			<div class="item">
				<img class="lazyOwl" data-src="images/cat01.png" alt="name">
				<div class="item-info">
					<h5>Lorem ipsum</h5>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl" data-src="images/cat02.jpg" alt="name">
			<div class="item-info">
					<h5>Lorem ipsum</h5>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl" data-src="images/cat03.jpg" alt="name">
			<div class="item-info">
					<h5>Lorem ipsum</h5>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl" data-src="images/cat04.jpg" alt="name">
			<div class="item-info">
					<h5>Lorem ipsum</h5>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl" data-src="images/cat05.jpg" alt="name">
			<div class="item-info">
					<h5>Lorem ipsum</h5>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl" data-src="images/cat06.jpg" alt="name">
			<div class="item-info">
					<h5>Lorem ipsum</h5>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl" data-src="images/cat07.jpg" alt="name">
			<div class="item-info">
					<h5>Lorem ipsum</h5>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl" data-src="images/b1.jpg" alt="name">
			<div class="item-info">
					<h5>Lorem ipsum</h5>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl" data-src="images/b2.jpg" alt="name">
			<div class="item-info">
					<h5>Lorem ipsum</h5>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl" data-src="images/b3.jpg" alt="name">
			<div class="item-info">
					<h5>Lorem ipsum</h5>
				</div>
			</div>
		</div>
		<!--sreen-gallery-cursual-->
		</div>
		</div>
		<div class="gallery">
			<div class="container">
			<h3>Featured products</h3>
			<div class="gallery-grids">
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="images/g1.png" class="img-responsive" alt=""/>
					<div class="gallery-info">
					<div class="quick">
					<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
					</div>
					</div></a>
					<div class="galy-info">
						<p>Amour Women¨s Amour...</p>
						<div class="galry">
						<div class="prices">
						<h5 class="item_price">$95.00</h5>
						</div>
					<div class="rating">
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
								</div>
						
					<div class="clearfix"></div>
					</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
						<a href="products.html"><img src="images/g2.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
					<div class="quick">
					<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
					</div>
					</div></a>
					<div class="galy-info">
						<p>Amour Women¨s Amour...</p>
						<div class="galry">
						<div class="prices">
						<h5 class="item_price">$95.00</h5>
						</div>
					<div class="rating">
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
								</div>
						
					<div class="clearfix"></div>
					</div>
					</div>
				</div>
					<div class="col-md-3 gallery-grid">
						<a href="products.html"><img src="images/g3.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
					<div class="quick">
					<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
					</div>
					</div></a>
					<div class="galy-info">
						<p>Amour Women¨s Amour...</p>
						<div class="galry">
						<div class="prices">
						<h5 class="item_price">$95.00</h5>
						</div>
					<div class="rating">
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
								</div>
						
					<div class="clearfix"></div>
					</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
						<a href="products.html"><img src="images/g4.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
					<div class="quick">
					<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
					</div>
					</div></a>
					<div class="galy-info">
						<p>Amour Women¨s Amour...</p>
						<div class="galry">
						<div class="prices">
						<h5 class="item_price">$95.00</h5>
						</div>
					<div class="rating">
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
								</div>
						
					<div class="clearfix"></div>
					</div>
					</div>
				</div>
					<div class="col-md-3 gallery-grid ">
						<a href="products.html"><img src="images/g5.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
					<div class="quick">
					<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
					</div>
					</div></a>
					<div class="galy-info">
						<p>Amour Women¨s Amour...</p>
						<div class="galry">
						<div class="prices">
						<h5 class="item_price">$95.00</h5>
						</div>
					<div class="rating">
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
								</div>
						
					<div class="clearfix"></div>
					</div>
					</div>
				</div>
					<div class="col-md-3 gallery-grid">
						<a href="products.html"><img src="images/g6.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
					<div class="quick">
					<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
					</div>
					</div></a>
					<div class="galy-info simpleCart_shelfItem">
						<p>Amour Women¨s Amour...</p>
						<div class="galry">
						<div class="prices">
						<h5 class="item_price">$95.00</h5>
						</div>
					<div class="rating">
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
								</div>
						
					<div class="clearfix"></div>
					</div>
					</div>
				</div>
					<div class="col-md-3 gallery-grid">
						<a href="products.html"><img src="images/g7.jpg" class="img-responsive" alt=""/><div class="gallery-info">
					<div class="quick">
					<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
					</div>
					</div></a>
					<div class="galy-info simpleCart_shelfItem">
						<p>Amour Women¨s Amour...</p>
						<div class="galry">
						<div class="prices">
						<h5 class="item_price">$95.00</h5>
						</div>
					<div class="rating">
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
								</div>
						
					<div class="clearfix"></div>
					</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
						<a href="products.html"><img src="images/g8.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
					<div class="quick">
					<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
					</div>
					</div></a>
					<div class="galy-info simpleCart_shelfItem">
						<p>Amour Women¨s Amour...</p>
						<div class="galry">
						<div class="prices">
						<h5 class="item_price">$95.00</h5>
						</div>
					<div class="rating">
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
									<span>』</span>
								</div>
						
					<div class="clearfix"></div>
					</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</div>
		<div class="subscribe">
	 <div class="container">
	 <div class="subscribe1">
		 <h4>the latest from swim wear</h4>
		 </div>
		 <div class="subscribe2">
		 <form>
			 <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
			 <input type="submit" value="JOIN">
		 </form>
	 </div>
	 <div class="clearfix"></div>
	 </div>
</div>
	<!--footer-->
		<div class="footer-section">
			<div class="container">
				<div class="footer-grids">
					<div class="col-md-2 footer-grid">
					<h4>company</h4>
					<ul>
						<li><a href="products.html">products</a></li>
						<li><a href="#">Work Here</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Happenings</a></li>
						<li><a href="#">Dealer Locator</a></li>
					</ul>
				</div>
					<div class="col-md-2 footer-grid">
					<h4>service</h4>
					<ul>
						<li><a href="#">Support</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Warranty</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
					</div>
					<div class="col-md-2 footer-grid">
					<h4>order & returns</h4>
					<ul>
						<li><a href="#">Order Status</a></li>
						<li><a href="#">Shipping Policy</a></li>
						<li><a href="#">Return Policy</a></li>
						<li><a href="#">Digital Gift Card</a></li>
					</ul>
					</div>
					<div class="col-md-2 footer-grid">
					<h4>legal</h4>
					<ul>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Terms and Conditions</a></li>
						<li><a href="#">Social Responsibility</a></li>
					</ul>
					</div>
					<div class="col-md-4 footer-grid1">
					<div class="social-icons">
						<a href="#"><i class="icon"></i></a>
						<a href="#"><i class="icon1"></i></a>
						<a href="#"><i class="icon2"></i></a>
						<a href="#"><i class="icon3"></i></a>
						<a href="#"><i class="icon4"></i></a>
					</div>
					<p>Copyright &copy; 2015 Swim Wear. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
					</div>
				<div class="clearfix"></div>
				</div>
			</div>
		</div>
	<!--footer-->
		
</body>
</html>