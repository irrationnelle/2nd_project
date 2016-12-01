<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <!-- style 적용, css 및 자바스크립트, 부트스트랩 불러오기 -->
    <jsp:include page="include\head.jsp" />
</head>

<!-- Body Start -->

<body class=" page_container side-menu-closed checkout_page_full">
	<div class="row">
    	<div class="container-fluid">
    
        	<header>
        	
		       	<!-- 최상단 메뉴 설정 -->
				<jsp:include page="include\header.jsp" />
			</header>
    
    		<div class="content-wrapper">	
        <section class="check_out_content">
            <div class="container">		
                <div class="page_title">
                <div class="page_top">
                    <h1> 결제하기 </h1>
                </div>
            </div>
			
			<!--Left Content Start-->
			
                <div class="col-lg-7 col-md-12 col-sm-12 col-xs-12">
                    <div class="customer_info">
                        
                            <h3>주문자 정보</h3>
                                <div class="section__summary">
                                    <p>${requestScope.member.id}</p>
                                    <p class="address"> ${requestScope.member.email}</p>
                                </div>
                                </div>
            
                    <div class="shipping">
                                    <div class="section step step--current" id="shipping-method">
              <div class="section__header">
                <h3>배송 방법</h3>
                <a href="#" class="section__edit-link">Edit</a>
              </div>
            
            
                  <div class="section__form">
                    <form method="post" id="edit_checkout_4977810628" class="edit_checkout"><input type="hidden" value="✓" name="utf8"><input type="hidden" value="patch" name="_method"><input type="hidden" value="D72ACDb5G/DxajhVbXheghdNCILd0Z51P2wLhTjO0Qh2lt7rXZUY0lWPNu0x2uC7Ex/+Jy0svmcyYenH0MSP3A==" name="authenticity_token">
                      <input type="hidden" value="shipping_and_payment_method" id="previous_step" name="previous_step">
            
                      <div class="fieldset">
                          <div class="field field--has-radio-button shipping-option">
                <input type="radio" id="checkout_shipping_rate_id_shopify-free20standard20worldwide20shipping20207-1020days-000" name="checkout[shipping_rate_id]" value="shopify-Free%20Standard%20Worldwide%20Shipping%20%20(7-10%20Days)-0.00" data-persist="shopify-Free%20Standard%20Worldwide%20Shipping%20%20(7-10%20Days)-0.00" data-checkout-payment-subform="required" data-checkout-payment-due-cents="95000" data-checkout-payment-due="$950.00" data-checkout-total-price-cents="95000" data-checkout-total-price="$950.00" data-checkout-total-taxes-cents="0" data-checkout-total-taxes="$0.00" data-checkout-shipping-rate="Free" data-checkout-total-shipping-cents="0" data-checkout-total-shipping="Free" data-checkout-subtotal-price-cents="95000" data-checkout-subtotal-price="$950.00" checked="checked">
                <label for="checkout_shipping_rate_id_shopify-free20standard20worldwide20shipping20207-1020days-000" class="label--full-width">
                  <small class="shipping-option__title">이메일로 티켓 발송  (5분 내)</small>
                  <strong class="shipping-option__price">무료</strong>
            </label>  </div>
            
                      </div>
                      
            <input type="hidden" name="checkout[client_details][browser_width]" value="1903"><input type="hidden" name="checkout[client_details][browser_height]" value="705"></form>      </div>
            
              <div class="section__summary">
              </div>
            </div>
                            
                            
                                </div>
                                
                    <div class="section step step--current " id="payment">
              <div class="section__header">
                <h3>결제 방법</h3>
            
                <a href="#" class="section__edit-link" data-edit-payment="true">Edit</a>
            
                  
              </div>
            
            
            
              <div class="section__form">
                <form method="post" id="edit_checkout_49778106289" class="secure-form"><input type="hidden" value="✓" name="utf8"><input type="hidden" value="CNQqmqJd2wRrVTe87gpiEZuFB7WE3Ic2M/3ZMrkNz4Jx/3R5yTHYJs+wOQSyqNwon9fxEHQhpyQ+8DtwUQeRVg==" name="authenticity_token">
                  <input type="hidden" id="checkout_shipping_rate_id" name="checkout[shipping_rate_id]" value="">
                  <div data-payment-subform="required">
                    <div class="fieldset">
                        <div data-select-gateway="8208532" class="field field--has-radio-button">
                            <input type="radio" name="checkout[payment_gateway]" checked="checked" value="8208532" id="checkout_payment_gateway_8208532">
            
                          <label for="checkout_payment_gateway_8208532" class="label--full-width">
                              	신용카드/체크카드
            </label>
                          <ul data-brand-icons-for-gateway="8208532" class="field__icon payment-methods">
                                
                                  <li class="payment-method visa" data-payment-icon="visa">Visa</li>
                                  <li class="payment-method master" data-payment-icon="master">MasterCard</li>
                                  <li class="payment-method american-express" data-payment-icon="american-express">American Express</li>
                                  <li class="payment-method discover" data-payment-icon="discover">Discover</li>
                                  <li class="payment-method jcb" data-payment-icon="jcb">JCB</li>
                                 
                          </ul>
                        </div>
            
                          <div data-subfields-for-gateway="8208532" class="field-group field-group--has-subfields">
                            
                              <div class="field field--required">
                                <label for="checkout_credit_card_number">카드 번호</label>
                                <input type="tel" class="checkout_form_text" id="checkout_credit_card_number" name="checkout[credit_card][number]" size="30" data-session-storage="false" data-autofocus="true" data-credit-card="number" data-persist="credit_card_number" value="" autocomplete="off" placeholder="Card number">
                                <i class="field__icon icon icon--lock-dark has-tooltip">
                                  <span class="tooltip tooltip--right-on-mobile">All transactions are secure and encrypted. Credit card information is never stored.</span>
                                </i>
            </div>
                              <div class="field field--required">
                                <label for="checkout_credit_card_name">사용자 이름</label>
                                <input type="text" class="checkout_form_text" id="checkout_credit_card_name" name="checkout" size="30" value="Name on card" placeholder="Name on card">
            </div>
                              <div class="field field--required">
                                <label for="checkout_credit_card_month">만료일</label>
            
                                <div class="select-group">
                                  <select id="checkout_credit_card_month" name="checkout[credit_card][month]"><option value="1">01</option>
            <option value="2">02</option>
            <option value="3">03</option>
            <option value="4">04</option>
            <option value="5">05</option>
            <option value="6">06</option>
            <option value="7">07</option>
            <option value="8">08</option>
            <option value="9">09</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option></select>
                                  <select id="checkout_credit_card_year" name="checkout[credit_card][year]"><option value="2015">2015</option>
            <option value="2016">2016</option>
            <option value="2017">2017</option>
            <option value="2018">2018</option>
            <option value="2019">2019</option>
            <option value="2020">2020</option>
            <option value="2021">2021</option>
            <option value="2022">2022</option>
            <option value="2023">2023</option>
            <option value="2024">2024</option>
            <option value="2025">2025</option></select>
                                </div>
            </div>
                              <div class="field field--required">
                                <label for="checkout_credit_card_verification_value">
                                  CVV
                                  <i class="icon icon--info has-tooltip">
                                    <span class="tooltip tooltip--left-on-mobile">
                                      	카드 뒷면 뒷자리 3번호
                                    </span>
                                  </i>
            </label>
                                <input type="tel" id="checkout_credit_card_verification_value" class="checkout_form_cvv" name="checkout[credit_card][verification_value]" size="30" data-session-storage="false" data-credit-card="cvv" data-persist="credit_card_cvv" maxlength="4" autocomplete="off" placeholder="CVV">
            </div>
                          </div>
                        <div data-select-gateway="3083988" class="field field--has-radio-button">
                            <input type="radio" name="checkout[payment_gateway]" value="3083988" id="checkout_payment_gateway_3083988">
            
                          <label for="checkout_payment_gateway_3083988" class="label--full-width">
                                <i class="payment-method paypal"></i>
            </label>
                          <ul data-brand-icons-for-gateway="3083988" class="field__icon payment-methods">
                                <li class="payment-method generic selected" data-payment-icon="generic">Credit Card</li>
                                  <li class="payment-method visa" data-payment-icon="visa">Visa</li>
                                  <li class="payment-method master" data-payment-icon="master">MasterCard</li>
                                  <li class="payment-method american-express" data-payment-icon="american-express">American Express</li>
                                 
                          </ul>
                        </div>
            
                       
                            <div data-subfields-for-gateway="15663236" class="field-group field-group--has-subfields hidden">
                              <div class="field field--blank-slate">
                                <i class="icon icon--offsite"></i>
                                <p>You will be redirected to Coinbase to complete your purchase securely.</p>
                              </div>
                            </div>
                    </div>
            
                    
              
            <div class="call-to-action call-to-action--final">
            	
              <input type="button" data-submit-payment="true" class="btn btn--primary" value="주문 완료" name="complete" onclick="location.href='order.do?action=orderCart'">
            </div>
            
            
            </div>
                  <div class="hidden" data-payment-subform="gift_cards">
                    <div class="section__blank-slate">
                      <input type="hidden" id="checkout_payment_gateway" name="checkout[payment_gateway]" disabled="" value="free">
                      <i class="icon icon--free-tag"></i>
                      <p>Your order is covered by your gift cards.</p>
                    </div>
            
                      
            <div class="call-to-action call-to-action--final">
            
              <input type="submit" data-submit-payment="true" class="btn btn--primary" value="주문 완료2" name="complete" disabled="">
            </div>
            
            
            </div>
                  <div class="hidden" data-payment-subform="free">
                    <div class="section__blank-slate">
                      <input type="hidden" id="checkout_payment_gateway1" name="checkout[payment_gateway]" disabled="" value="free">
                      <i class="icon icon--free-tag"></i>
                      <p>Your order is <strong>free</strong>. No payment is required.</p>
                    </div>
            
                      
            <div class="call-to-action call-to-action--final">
            
              <input type="submit" data-submit-payment="true" class="btn btn--primary" value="주문 완료3" name="complete" disabled="">
            </div>
            
            
            </div><input type="hidden" name="checkout[client_details][browser_width]" value="1903"><input type="hidden" name="checkout[client_details][browser_height]" value="705"></form>  </div>
            
              
            </div>			
                </div>
                    <!--Left Content End-->
					
					
					<!--오른쪽 요약 메뉴 시작-->
                <div class="col-lg-5 col-md-12 col-sm-12 col-xs-12">
                    <div class="order_summary">
                            <div class="order-summary" style="top: 692.75px;">
        
          <div class="order-summary__section order-summary__section--header">
            <h3>주문 요약 정보</h3>
          </div>
        
        <!-- 반복문 시작 -->
        <c:forEach var="items" items="${requestScope.cartPage.cartList}">
        
	          <div class="summary-body">
	            <div class="order-summary__section order-summary__section--product-list ">
	              <ul class="product-list">
	            <li class="product product--has-image">
	                <img src="${items.productImage}" alt="Flash Sweater" class="product__image">
	              <div class="product__info">
	                <span class="product__info__name"><strong>${items.productName}</strong>&nbsp;×&nbsp;${items.cartAmount}</span>
	                <span class="product__info__description">점심식사 / 팬미팅</span>
	              </div>
	                <strong class="product__price">₩ ${items.productPrice}</strong>
	            </li>
	        </ul>
	        
	            </div>
            </c:forEach>
            <!-- 반복문 종료-->
        
<!--               <div id="discount" class="order-summary__section "> -->
        
<!--                   <form method="post" class="edit_checkout"><input type="hidden" value="✓" name="utf8"><input type="hidden" value="put" name="_method"><input type="hidden" name="authenticity_token"> -->
<!--                     <input type="hidden" value="shipping_and_payment_method" id="current_step" name="current_step"> -->
<!--                         <div class="check_discount"> -->
<!--                       <a id="show-discount-form-link" data-show-on-click="#discount-field" data-shown-if-js="" href="#"> -->
<!--                         Have a discount code? Click here to enter it -->
<!--                       </a> -->
<!--                             </div> -->
<!--                     <div class="fieldset discount-field hidden" id="discount-field"> -->
<!--                       <div class="field field--has-inset-btn "> -->
                        
<!--                           <label for="checkout_discount_code">Discount</label> -->
<!--                           <input type="text" id="checkout_discount_code" name="checkout[discount][code]" size="30" placeholder="Discount"> -->
<!--                         <p class="field__error-message"></p> -->
<!--                         <input type="submit" class="btn btn--inset" value="Apply" name="commit"> -->
<!--                       </div> -->
<!--                     </div> -->
<!--         </form> -->
<!--               </div> -->
        
            <div data-order-summary-section="payment-lines" class="order-summary__section">
              <div class="total-line total-line--subtotal">
                <span class="total-line__name">
                  	티켓 금액
                </span>
                <strong data-checkout-subtotal-price-target="95000" class="total-line__price">₩ ${requestScope.cartPage.totalPrice}</strong>
              </div>
              <div class="total-line total-line--shipping">
                <span class="total-line__name">
                  	배송료
                </span>
                <strong data-checkout-total-shipping-target="0" class="total-line__price">무료</strong>
              </div>
              <div class="total-line total-line--taxes">
                <span class="total-line__name">
                  	부가세
                </span>
                <strong data-checkout-total-taxes-target="0" class="total-line__price">₩0.00</strong>
              </div>
              <div class="total-line total-line--total order_bottom">
                <span class="total-line__name">
                  	총액
                </span>
                <strong data-checkout-total-price-target="95000" class="total-line__price">₩ ${requestScope.cartPage.totalPrice}</strong>
              </div>
            </div>
        
            <div data-order-summary-section="payment-due" class="order-summary__section">
              <div class="payment-due-container">
                <span class="payment-due__label">
                    	납부 기한
                </span>
                <div class="payment-due">
                  <div data-checkout-payment-due-target="95000" class="payment-due__price">₩ ${requestScope.cartPage.totalPrice}</div>
                  <div class="payment-due__currency">KRW</div>
                </div>
              </div>
        
            </div>
          </div>
        </div>
                    
        
        
                
                </div>
                </div>
				<!--Right Content End-->
				
            </div>
        </section>
	</div>
    
		</div>
	</div>
	
	
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