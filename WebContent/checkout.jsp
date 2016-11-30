<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <h1> CHECKOUT </h1>
                </div>
            </div>
			
			<!--Left Content Start-->
			
                <div class="col-lg-7 col-md-12 col-sm-12 col-xs-12">
                    <div class="customer_info">
                        
                            <h3>Customer information</h3>
                                <div class="section__summary">
                                    <p>james.desuja45@gmail.com</p>
                                    <p class="address"> James Desuja<br>City Mall, NewYork<br>NewYork, 424214<br> U.S.</p>
                                </div>
                                </div>
            
                    <div class="shipping">
                                    <div class="section step step--current" id="shipping-method">
              <div class="section__header">
                <h3>Shipping method</h3>
                <a href="#" class="section__edit-link">Edit</a>
              </div>
            
            
                  <div class="section__form">
                    <form method="post" id="edit_checkout_4977810628" class="edit_checkout"><input type="hidden" value="✓" name="utf8"><input type="hidden" value="patch" name="_method"><input type="hidden" value="D72ACDb5G/DxajhVbXheghdNCILd0Z51P2wLhTjO0Qh2lt7rXZUY0lWPNu0x2uC7Ex/+Jy0svmcyYenH0MSP3A==" name="authenticity_token">
                      <input type="hidden" value="shipping_and_payment_method" id="previous_step" name="previous_step">
            
                      <div class="fieldset">
                          <div class="field field--has-radio-button shipping-option">
                <input type="radio" id="checkout_shipping_rate_id_shopify-free20standard20worldwide20shipping20207-1020days-000" name="checkout[shipping_rate_id]" value="shopify-Free%20Standard%20Worldwide%20Shipping%20%20(7-10%20Days)-0.00" data-persist="shopify-Free%20Standard%20Worldwide%20Shipping%20%20(7-10%20Days)-0.00" data-checkout-payment-subform="required" data-checkout-payment-due-cents="95000" data-checkout-payment-due="$950.00" data-checkout-total-price-cents="95000" data-checkout-total-price="$950.00" data-checkout-total-taxes-cents="0" data-checkout-total-taxes="$0.00" data-checkout-shipping-rate="Free" data-checkout-total-shipping-cents="0" data-checkout-total-shipping="Free" data-checkout-subtotal-price-cents="95000" data-checkout-subtotal-price="$950.00" checked="checked">
                <label for="checkout_shipping_rate_id_shopify-free20standard20worldwide20shipping20207-1020days-000" class="label--full-width">
                  <small class="shipping-option__title">Free Standard Worldwide Shipping  (7-10 Days)</small>
                  <strong class="shipping-option__price">Free</strong>
            </label>  </div>
            
                      </div>
                      
            <input type="hidden" name="checkout[client_details][browser_width]" value="1903"><input type="hidden" name="checkout[client_details][browser_height]" value="705"></form>      </div>
            
              <div class="section__summary">
              </div>
            </div>
                            
                            
                                </div>
                                
                    <div class="section step step--current " id="payment">
              <div class="section__header">
                <h3>Payment method</h3>
            
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
                              Credit card
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
                                <label for="checkout_credit_card_number">Card number</label>
                                <input type="tel" class="checkout_form_text" id="checkout_credit_card_number" name="checkout[credit_card][number]" size="30" data-session-storage="false" data-autofocus="true" data-credit-card="number" data-persist="credit_card_number" value="" autocomplete="off" placeholder="Card number">
                                <i class="field__icon icon icon--lock-dark has-tooltip">
                                  <span class="tooltip tooltip--right-on-mobile">All transactions are secure and encrypted. Credit card information is never stored.</span>
                                </i>
            </div>
                              <div class="field field--required">
                                <label for="checkout_credit_card_name">Name on card</label>
                                <input type="text" class="checkout_form_text" id="checkout_credit_card_name" name="checkout" size="30" value="Name on card" placeholder="Name on card">
            </div>
                              <div class="field field--required">
                                <label for="checkout_credit_card_month">Expiry</label>
            
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
                                      3-digit security code usually found on the back of your card. American Express cards have a 4-digit code located on the front.
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
            
                    <h3 class="billing_address_title " data-billing-address="">Billing address</h3>
            <div data-billing-address="" class="fieldset fieldset--billing-address">
                <div data-shown-if-js="" class="field field--has-radio-button field--same-billing-address">
                  <input type="radio" id="checkout_different_billing_address_false" name="checkout[different_billing_address]" checked="checked" value="false" data-persist="different_billing_address_false">
                  <label for="checkout_different_billing_address_false" class="label--full-width">
                    <span class="address">
              James Desuja <br>City Mall NewYork<br>NewYork, 424214<br>U.S. Outlying Islands
            </span>
            
            </label>    </div>
              
                
            
              <div data-billing-address-fields="" id="billing-address" class="field-group field-group--has-subfields hidden">
                
                  <div class="field field--required">
                    <label for="checkout_billing_address_first_name">First name</label>
                    <input type="text" id="checkout_billing_address_first_name" name="checkout[billing_address][first_name]" size="30" data-persist="billing_address_first_name" placeholder="First name" disabled="">
            </div>
                  <div class="field field--required">
                    <label for="checkout_billing_address_last_name">Last name</label>
                    <input type="text" id="checkout_billing_address_last_name" name="checkout[billing_address][last_name]" size="30" data-persist="billing_address_last_name" placeholder="Last name" disabled="">
            </div>
                    <div class="field field--optional">
                      <label for="checkout_billing_address_company">Company</label>
                      <input type="text" id="checkout_billing_address_company" name="checkout[billing_address][company]" size="30" data-persist="billing_address_company" placeholder="Company (optional)" disabled="">
            </div>
                  <div class="field field--required">
                    <label for="checkout_billing_address_address1">Address</label>
                    <input type="text" id="checkout_billing_address_address1" name="checkout[billing_address][address1]" size="30" data-persist="billing_address_address1" placeholder="Address" disabled="">
            </div>
            
                  <div class="field field--required">
                    <label for="checkout_billing_address_city">City</label>
                    <input type="text" id="checkout_billing_address_city" name="checkout[billing_address][city]" size="30" data-persist="billing_address_city" placeholder="City" disabled="">
            </div>
                  <div class="field field--required" data-country-section="1">
                    <label for="checkout_billing_address_country">Country</label>
                    <select id="checkout_billing_address_country" name="checkout[billing_address][country]" data-persist="billing_address_country" size="1" disabled="">
                    	<option value="AFG">Afghanistan</option>
                    <option value="ALA">Åland Islands</option>
                    <option value="ALB">Albania</option>
                    <option value="DZA">Algeria</option>
                    <option value="ASM">American Samoa</option>
                    <option value="AND">Andorra</option>
                    <option value="AGO">Angola</option>
                    <option value="AIA">Anguilla</option>
                    <option value="ATA">Antarctica</option>
                    <option value="ATG">Antigua and Barbuda</option>
                    <option value="ARG">Argentina</option>
                    <option value="ARM">Armenia</option>
                    <option value="ABW">Aruba</option>
                    <option value="AUS">Australia</option>
                    <option value="AUT">Austria</option>
                    <option value="AZE">Azerbaijan</option>
                    <option value="BHS">Bahamas</option>
                    <option value="BHR">Bahrain</option>
                    <option value="BGD">Bangladesh</option>
                    <option value="BRB">Barbados</option>
                    <option value="BLR">Belarus</option>
                    <option value="BEL">Belgium</option>
                    <option value="BLZ">Belize</option>
                    <option value="BEN">Benin</option>
                    <option value="BMU">Bermuda</option>
                    <option value="BTN">Bhutan</option>
                    <option value="BOL">Bolivia, Plurinational State of</option>
                    <option value="BES">Bonaire, Sint Eustatius and Saba</option>
                    <option value="BIH">Bosnia and Herzegovina</option>
                    <option value="BWA">Botswana</option>
                    <option value="BVT">Bouvet Island</option>
                    <option value="BRA">Brazil</option>
                    <option value="IOT">British Indian Ocean Territory</option>
                    <option value="BRN">Brunei Darussalam</option>
                    <option value="BGR">Bulgaria</option>
                    <option value="BFA">Burkina Faso</option>
                    <option value="BDI">Burundi</option>
                    <option value="KHM">Cambodia</option>
                    <option value="CMR">Cameroon</option>
                    <option value="CAN">Canada</option>
                    <option value="CPV">Cape Verde</option>
                    <option value="CYM">Cayman Islands</option>
                    <option value="CAF">Central African Republic</option>
                    <option value="TCD">Chad</option>
                    <option value="CHL">Chile</option>
                    <option value="CHN">China</option>
                    <option value="CXR">Christmas Island</option>
                    <option value="CCK">Cocos (Keeling) Islands</option>
                    <option value="COL">Colombia</option>
                    <option value="COM">Comoros</option>
                    <option value="COG">Congo</option>
                    <option value="COD">Congo, the Democratic Republic of the</option>
                    <option value="COK">Cook Islands</option>
                    <option value="CRI">Costa Rica</option>
                    <option value="CIV">Côte d'Ivoire</option>
                    <option value="HRV">Croatia</option>
                    <option value="CUB">Cuba</option>
                    <option value="CUW">Curaçao</option>
                    <option value="CYP">Cyprus</option>
                    <option value="CZE">Czech Republic</option>
                    <option value="DNK">Denmark</option>
                    <option value="DJI">Djibouti</option>
                    <option value="DMA">Dominica</option>
                    <option value="DOM">Dominican Republic</option>
                    <option value="ECU">Ecuador</option>
                    <option value="EGY">Egypt</option>
                    <option value="SLV">El Salvador</option>
                    <option value="GNQ">Equatorial Guinea</option>
                    <option value="ERI">Eritrea</option>
                    <option value="EST">Estonia</option>
                    <option value="ETH">Ethiopia</option>
                    <option value="FLK">Falkland Islands (Malvinas)</option>
                    <option value="FRO">Faroe Islands</option>
                    <option value="FJI">Fiji</option>
                    <option value="FIN">Finland</option>
                    <option value="FRA">France</option>
                    <option value="GUF">French Guiana</option>
                    <option value="PYF">French Polynesia</option>
                    <option value="ATF">French Southern Territories</option>
                    <option value="GAB">Gabon</option>
                    <option value="GMB">Gambia</option>
                    <option value="GEO">Georgia</option>
                    <option value="DEU">Germany</option>
                    <option value="GHA">Ghana</option>
                    <option value="GIB">Gibraltar</option>
                    <option value="GRC">Greece</option>
                    <option value="GRL">Greenland</option>
                    <option value="GRD">Grenada</option>
                    <option value="GLP">Guadeloupe</option>
                    <option value="GUM">Guam</option>
                    <option value="GTM">Guatemala</option>
                    <option value="GGY">Guernsey</option>
                    <option value="GIN">Guinea</option>
                    <option value="GNB">Guinea-Bissau</option>
                    <option value="GUY">Guyana</option>
                    <option value="HTI">Haiti</option>
                    <option value="HMD">Heard Island and McDonald Islands</option>
                    <option value="VAT">Holy See (Vatican City State)</option>
                    <option value="HND">Honduras</option>
                    <option value="HKG">Hong Kong</option>
                    <option value="HUN">Hungary</option>
                    <option value="ISL">Iceland</option>
                    <option value="IND">India</option>
                    <option value="IDN">Indonesia</option>
                    <option value="IRN">Iran, Islamic Republic of</option>
                    <option value="IRQ">Iraq</option>
                    <option value="IRL">Ireland</option>
                    <option value="IMN">Isle of Man</option>
                    <option value="ISR">Israel</option>
                    <option value="ITA">Italy</option>
                    <option value="JAM">Jamaica</option>
                    <option value="JPN">Japan</option>
                    <option value="JEY">Jersey</option>
                    <option value="JOR">Jordan</option>
                    <option value="KAZ">Kazakhstan</option>
                    <option value="KEN">Kenya</option>
                    <option value="KIR">Kiribati</option>
                    <option value="PRK">Korea, Democratic People's Republic of</option>
                    <option value="KOR">Korea, Republic of</option>
                    <option value="KWT">Kuwait</option>
                    <option value="KGZ">Kyrgyzstan</option>
                    <option value="LAO">Lao People's Democratic Republic</option>
                    <option value="LVA">Latvia</option>
                    <option value="LBN">Lebanon</option>
                    <option value="LSO">Lesotho</option>
                    <option value="LBR">Liberia</option>
                    <option value="LBY">Libya</option>
                    <option value="LIE">Liechtenstein</option>
                    <option value="LTU">Lithuania</option>
                    <option value="LUX">Luxembourg</option>
                    <option value="MAC">Macao</option>
                    <option value="MKD">Macedonia, the former Yugoslav Republic of</option>
                    <option value="MDG">Madagascar</option>
                    <option value="MWI">Malawi</option>
                    <option value="MYS">Malaysia</option>
                    <option value="MDV">Maldives</option>
                    <option value="MLI">Mali</option>
                    <option value="MLT">Malta</option>
                    <option value="MHL">Marshall Islands</option>
                    <option value="MTQ">Martinique</option>
                    <option value="MRT">Mauritania</option>
                    <option value="MUS">Mauritius</option>
                    <option value="MYT">Mayotte</option>
                    <option value="MEX">Mexico</option>
                    <option value="FSM">Micronesia, Federated States of</option>
                    <option value="MDA">Moldova, Republic of</option>
                    <option value="MCO">Monaco</option>
                    <option value="MNG">Mongolia</option>
                    <option value="MNE">Montenegro</option>
                    <option value="MSR">Montserrat</option>
                    <option value="MAR">Morocco</option>
                    <option value="MOZ">Mozambique</option>
                    <option value="MMR">Myanmar</option>
                    <option value="NAM">Namibia</option>
                    <option value="NRU">Nauru</option>
                    <option value="NPL">Nepal</option>
                    <option value="NLD">Netherlands</option>
                    <option value="NCL">New Caledonia</option>
                    <option value="NZL">New Zealand</option>
                    <option value="NIC">Nicaragua</option>
                    <option value="NER">Niger</option>
                    <option value="NGA">Nigeria</option>
                    <option value="NIU">Niue</option>
                    <option value="NFK">Norfolk Island</option>
                    <option value="MNP">Northern Mariana Islands</option>
                    <option value="NOR">Norway</option>
                    <option value="OMN">Oman</option>
                    <option value="PAK">Pakistan</option>
                    <option value="PLW">Palau</option>
                    <option value="PSE">Palestinian Territory, Occupied</option>
                    <option value="PAN">Panama</option>
                    <option value="PNG">Papua New Guinea</option>
                    <option value="PRY">Paraguay</option>
                    <option value="PER">Peru</option>
                    <option value="PHL">Philippines</option>
                    <option value="PCN">Pitcairn</option>
                    <option value="POL">Poland</option>
                    <option value="PRT">Portugal</option>
                    <option value="PRI">Puerto Rico</option>
                    <option value="QAT">Qatar</option>
                    <option value="REU">Réunion</option>
                    <option value="ROU">Romania</option>
                    <option value="RUS">Russian Federation</option>
                    <option value="RWA">Rwanda</option>
                    <option value="BLM">Saint Barthélemy</option>
                    <option value="SHN">Saint Helena, Ascension and Tristan da Cunha</option>
                    <option value="KNA">Saint Kitts and Nevis</option>
                    <option value="LCA">Saint Lucia</option>
                    <option value="MAF">Saint Martin (French part)</option>
                    <option value="SPM">Saint Pierre and Miquelon</option>
                    <option value="VCT">Saint Vincent and the Grenadines</option>
                    <option value="WSM">Samoa</option>
                    <option value="SMR">San Marino</option>
                    <option value="STP">Sao Tome and Principe</option>
                    <option value="SAU">Saudi Arabia</option>
                    <option value="SEN">Senegal</option>
                    <option value="SRB">Serbia</option>
                    <option value="SYC">Seychelles</option>
                    <option value="SLE">Sierra Leone</option>
                    <option value="SGP">Singapore</option>
                    <option value="SXM">Sint Maarten (Dutch part)</option>
                    <option value="SVK">Slovakia</option>
                    <option value="SVN">Slovenia</option>
                    <option value="SLB">Solomon Islands</option>
                    <option value="SOM">Somalia</option>
                    <option value="ZAF">South Africa</option>
                    <option value="SGS">South Georgia and the South Sandwich Islands</option>
                    <option value="SSD">South Sudan</option>
                    <option value="ESP">Spain</option>
                    <option value="LKA">Sri Lanka</option>
                    <option value="SDN">Sudan</option>
                    <option value="SUR">Suriname</option>
                    <option value="SJM">Svalbard and Jan Mayen</option>
                    <option value="SWZ">Swaziland</option>
                    <option value="SWE">Sweden</option>
                    <option value="CHE">Switzerland</option>
                    <option value="SYR">Syrian Arab Republic</option>
                    <option value="TWN">Taiwan, Province of China</option>
                    <option value="TJK">Tajikistan</option>
                    <option value="TZA">Tanzania, United Republic of</option>
                    <option value="THA">Thailand</option>
                    <option value="TLS">Timor-Leste</option>
                    <option value="TGO">Togo</option>
                    <option value="TKL">Tokelau</option>
                    <option value="TON">Tonga</option>
                    <option value="TTO">Trinidad and Tobago</option>
                    <option value="TUN">Tunisia</option>
                    <option value="TUR">Turkey</option>
                    <option value="TKM">Turkmenistan</option>
                    <option value="TCA">Turks and Caicos Islands</option>
                    <option value="TUV">Tuvalu</option>
                    <option value="UGA">Uganda</option>
                    <option value="UKR">Ukraine</option>
                    <option value="ARE">United Arab Emirates</option>
                    <option value="GBR">United Kingdom</option>
                    <option selected value="USA">United States</option>
                    <option value="UMI">United States Minor Outlying Islands</option>
                    <option value="URY">Uruguay</option>
                    <option value="UZB">Uzbekistan</option>
                    <option value="VUT">Vanuatu</option>
                    <option value="VEN">Venezuela, Bolivarian Republic of</option>
                    <option value="VNM">Viet Nam</option>
                    <option value="VGB">Virgin Islands, British</option>
                    <option value="VIR">Virgin Islands, U.S.</option>
                    <option value="WLF">Wallis and Futuna</option>
                    <option value="ESH">Western Sahara</option>
                    <option value="YEM">Yemen</option>
                    <option value="ZMB">Zambia</option>
                    <option value="ZWE">Zimbabwe</option>                    
                    </select>
            </div>
                  <div class="field field--required" data-province-section="1">
                    <label for="checkout_billing_address_province">State</label>
                    <input type="hidden" name="checkout[billing_address][province]" disabled="">
                    <select id="checkout_billing_address_province" name="checkout[billing_address][province]" disabled="">
                    <option value="AL">Alabama</option>
                        <option value="AK">Alaska</option>
                        <option value="AZ">Arizona</option>
                        <option value="AR">Arkansas</option>
                        <option value="CA">California</option>
                        <option value="CO">Colorado</option>
                        <option value="CT">Connecticut</option>
                        <option value="DE">Delaware</option>
                        <option value="DC">District Of Columbia</option>
                        <option value="FL">Florida</option>
                        <option value="GA">Georgia</option>
                        <option value="HI">Hawaii</option>
                        <option value="ID">Idaho</option>
                        <option value="IL">Illinois</option>
                        <option value="IN">Indiana</option>
                        <option value="IA">Iowa</option>
                        <option value="KS">Kansas</option>
                        <option value="KY">Kentucky</option>
                        <option value="LA">Louisiana</option>
                        <option value="ME">Maine</option>
                        <option value="MD">Maryland</option>
                        <option value="MA">Massachusetts</option>
                        <option value="MI">Michigan</option>
                        <option value="MN">Minnesota</option>
                        <option value="MS">Mississippi</option>
                        <option value="MO">Missouri</option>
                        <option value="MT">Montana</option>
                        <option value="NE">Nebraska</option>
                        <option value="NV">Nevada</option>
                        <option value="NH">New Hampshire</option>
                        <option value="NJ">New Jersey</option>
                        <option value="NM">New Mexico</option>
                        <option selected value="NY">New York</option>
                        <option value="NC">North Carolina</option>
                        <option value="ND">North Dakota</option>
                        <option value="OH">Ohio</option>
                        <option value="OK">Oklahoma</option>
                        <option value="OR">Oregon</option>
                        <option value="PA">Pennsylvania</option>
                        <option value="RI">Rhode Island</option>
                        <option value="SC">South Carolina</option>
                        <option value="SD">South Dakota</option>
                        <option value="TN">Tennessee</option>
                        <option value="TX">Texas</option>
                        <option value="UT">Utah</option>
                        <option value="VT">Vermont</option>
                        <option value="VA">Virginia</option>
                        <option value="WA">Washington</option>
                        <option value="WV">West Virginia</option>
                        <option value="WI">Wisconsin</option>
                        <option value="WY">Wyoming</option>
                    </select>
            </div>
                  <div class="field field--required" data-zip-section="1">
                    <label for="checkout_billing_address_zip">Postal code</label>
                    <input type="text" id="checkout_billing_address_zip" name="checkout[billing_address][zip]" size="30" data-persist="billing_address_zip" class="postal-code" placeholder="Postal code" disabled="">
            </div>
              </div>
            </div>
            
            
            
                      
            <div class="call-to-action call-to-action--final">
            
              <input type="submit" data-submit-payment="true" class="btn btn--primary" value="Complete order" name="complete">
            </div>
            
            
            </div>
                  <div class="hidden" data-payment-subform="gift_cards">
                    <div class="section__blank-slate">
                      <input type="hidden" id="checkout_payment_gateway" name="checkout[payment_gateway]" disabled="" value="free">
                      <i class="icon icon--free-tag"></i>
                      <p>Your order is covered by your gift cards.</p>
                    </div>
            
                      
            <div class="call-to-action call-to-action--final">
            
              <input type="submit" data-submit-payment="true" class="btn btn--primary" value="Complete order" name="complete" disabled="">
            </div>
            
            
            </div>
                  <div class="hidden" data-payment-subform="free">
                    <div class="section__blank-slate">
                      <input type="hidden" id="checkout_payment_gateway1" name="checkout[payment_gateway]" disabled="" value="free">
                      <i class="icon icon--free-tag"></i>
                      <p>Your order is <strong>free</strong>. No payment is required.</p>
                    </div>
            
                      
            <div class="call-to-action call-to-action--final">
            
              <input type="submit" data-submit-payment="true" class="btn btn--primary" value="Complete order" name="complete" disabled="">
            </div>
            
            
            </div><input type="hidden" name="checkout[client_details][browser_width]" value="1903"><input type="hidden" name="checkout[client_details][browser_height]" value="705"></form>  </div>
            
              
            </div>			
                </div>
                    <!--Left Content End-->
					
					<!--Right Content Start-->
                <div class="col-lg-5 col-md-12 col-sm-12 col-xs-12">
                    <div class="order_summary">
                            <div class="order-summary" style="top: 692.75px;">
        
          <div class="order-summary__section order-summary__section--header">
            <h3>Order summary</h3>
          </div>
        
          <div class="summary-body">
            <div class="order-summary__section order-summary__section--product-list ">
              <ul class="product-list">
            <li class="product product--has-image">
                <img src="images/small_image.jpg" alt="Flash Sweater" class="product__image">
              <div class="product__info">
                <span class="product__info__name"><strong>Flash Sweater</strong>&nbsp;×&nbsp;19</span>
                <span class="product__info__description">Small / Heather Grey</span>
              </div>
                <strong class="product__price">$950.00</strong>
            </li>
        </ul>
        
            </div>
        
              <div id="discount" class="order-summary__section ">
        
                  <form method="post" class="edit_checkout"><input type="hidden" value="✓" name="utf8"><input type="hidden" value="put" name="_method"><input type="hidden" name="authenticity_token">
                    <input type="hidden" value="shipping_and_payment_method" id="current_step" name="current_step">
                        <div class="check_discount">
                      <a id="show-discount-form-link" data-show-on-click="#discount-field" data-shown-if-js="" href="#">
                        Have a discount code? Click here to enter it
                      </a>
                            </div>
                    <div class="fieldset discount-field hidden" id="discount-field">
                      <div class="field field--has-inset-btn ">
                        
                          <label for="checkout_discount_code">Discount</label>
                          <input type="text" id="checkout_discount_code" name="checkout[discount][code]" size="30" placeholder="Discount">
                        <p class="field__error-message"></p>
                        <input type="submit" class="btn btn--inset" value="Apply" name="commit">
                      </div>
                    </div>
        </form>
              </div>
        
            <div data-order-summary-section="payment-lines" class="order-summary__section">
              <div class="total-line total-line--subtotal">
                <span class="total-line__name">
                  Subtotal
                </span>
                <strong data-checkout-subtotal-price-target="95000" class="total-line__price">$950.00</strong>
              </div>
              <div class="total-line total-line--shipping">
                <span class="total-line__name">
                  Shipping
                </span>
                <strong data-checkout-total-shipping-target="0" class="total-line__price">Free</strong>
              </div>
              <div class="total-line total-line--taxes">
                <span class="total-line__name">
                  Taxes
                </span>
                <strong data-checkout-total-taxes-target="0" class="total-line__price">$0.00</strong>
              </div>
              <div class="total-line total-line--total order_bottom">
                <span class="total-line__name">
                  Total
                </span>
                <strong data-checkout-total-price-target="95000" class="total-line__price">$950.00</strong>
              </div>
            </div>
        
            <div data-order-summary-section="payment-due" class="order-summary__section">
              <div class="payment-due-container">
                <span class="payment-due__label">
                    Payment due
                </span>
                <div class="payment-due">
                  <div data-checkout-payment-due-target="95000" class="payment-due__price">$950.00</div>
                  <div class="payment-due__currency">USD</div>
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