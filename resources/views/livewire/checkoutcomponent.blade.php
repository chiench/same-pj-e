<div>
    <main id="main" class="main-site">

        <div class="container">

            <div class="wrap-breadcrumb">
                <ul>
                    <li class="item-link"><a href="#" class="link">home</a></li>
                    <li class="item-link"><span>checkout</span></li>
                </ul>
            </div>
            <div class=" main-content-area">
                <form wire:submit.prevent='placeOrder'>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="wrap-address-billing">
                                <h3 class="box-title">Billing Address</h3>
                                <div class="billing">
                                    <p class="row-in-form">
                                        <label for="fname">first name<span>*</span></label>
                                        <input id="fname" type="text" name="fname" value="" wire:model='fisrtname'
                                            placeholder="Your name">
                                    </p>
                                    <p class="row-in-form">
                                        <label for="lname">last name<span>*</span></label>
                                        <input id="lname" type="text" name="lname" value="" wire:model='lastname'
                                            placeholder="Your last name">
                                    </p>
                                    <p class="row-in-form">
                                        <label for="email">Email Addreess:</label>
                                        <input id="email" type="text" name="email" value="" wire:model='email'
                                            placeholder="Type your email">
                                    </p>
                                    <p class="row-in-form">
                                        <label for="phone">Phone number<span>*</span></label>
                                        <input id="phone" type="text" name="phone" value="" wire:model='phone'
                                            placeholder="10 digits format">
                                    </p>
                                    <p class="row-in-form">
                                        <label for="phone">Line 1<span>*</span></label>
                                        <input id="phone" type="text" name="line1" value="" wire:model='line1'
                                            placeholder="10 digits format">
                                    </p>
                                    <p class="row-in-form">
                                        <label for="phone">Line 2<span>*</span></label>
                                        <input id="phone" type="text" name="line2" value="" wire:model='line2'
                                            placeholder="10 digits format">
                                    </p>

                                    <p class="row-in-form">
                                        <label for="country">Country<span>*</span></label>
                                        <input id="country" type="text" name="country" value="" wire:model='country'
                                            placeholder="United States">
                                    </p>
                                    <p class="row-in-form">
                                        <label for="zip-code">Postcode / ZIP:</label>
                                        <input id="zip-code" type="text" name="zip-code" value="" wire:model='zipcode'
                                            placeholder="Your postal code">
                                    </p>
                                    <p class="row-in-form">
                                        <label for="city">Town / City<span>*</span></label>
                                        <input id="city" type="text" name="city" value="" wire:model='city'
                                            placeholder="City name">
                                    </p>
                                    <p class="row-in-form fill-wife">

                                        <label class="checkbox-field">
                                            <input name="different-add" id="different-add" value="1" type="checkbox"
                                                wire:model='is_shipping_different'>
                                            <span>Ship to a different address?</span>
                                        </label>
                                    </p>

                                </div>
                            </div>
                        </div>

                        @if ($is_shipping_different)
                        <div class="col-md-12">
                            <div class="wrap-address-billing">
                                <h3 class="box-title">Shipping Address</h3>
                                <div class="billing">

                                            <p class="row-in-form">
                                                <label for="fname">first name<span>*</span></label>
                                                <input id="fname" type="text" name="fname" value=""
                                                    wire:model='s_fisrtname' placeholder="Your name">
                                            </p>
                                            <p class="row-in-form">
                                                <label for="lname">last name<span>*</span></label>
                                                <input id="lname" type="text" name="lname" value=""
                                                    wire:model='s_lastname' placeholder="Your last name">
                                            </p>
                                            <p class="row-in-form">
                                                <label for="email">Email Addreess:</label>
                                                <input id="email" type="text" name="email" value="" wire:model='s_email'
                                                    placeholder="Type your email">
                                            </p>
                                            <p class="row-in-form">
                                                <label for="phone">Phone number<span>*</span></label>
                                                <input id="phone" type="text" name="phone" value="" wire:model='s_phone'
                                                    placeholder="10 digits format">
                                            </p>
                                            <p class="row-in-form">
                                                <label for="phone">Line 1<span>*</span></label>
                                                <input id="phone" type="text" name="line1" value="" wire:model='s_line1'
                                                    placeholder="10 digits format">
                                            </p>
                                            <p class="row-in-form">
                                                <label for="phone">Line 2<span>*</span></label>
                                                <input id="phone" type="text" name="line2" value="" wire:model='s_line2'
                                                    placeholder="10 digits format">
                                            </p>

                                            <p class="row-in-form">
                                                <label for="country">Country<span>*</span></label>
                                                <input id="country" type="text" name="country" value=""
                                                    wire:model='s_country' placeholder="United States">
                                            </p>
                                            <p class="row-in-form">
                                                <label for="zip-code">Postcode / ZIP:</label>
                                                <input id="zip-code" type="text" name="zip-code" value=""
                                                    wire:model='s_zipcode' placeholder="Your postal code">
                                            </p>
                                            <p class="row-in-form">
                                                <label for="city">Town / City<span>*</span></label>
                                                <input id="city" type="text" name="city" value="" wire:model='s_city'
                                                    placeholder="City name">
                                            </p>


                                </div>
                            </div>
                        </div>
                        @endif
                    </div>



                        <div class="summary summary-checkout">
                            <div class="summary-item payment-method">
                                <h4 class="title-box">Payment Method</h4>
                                <p class="summary-info"><span class="title">Check / Money order</span></p>
                                <p class="summary-info"><span class="title">Credit Cart (saved)</span></p>
                                <div class="choose-payment-methods">
                                    <label class="payment-method">
                                        <input name="payment-method" id="code" wire:model='paymode'
                                            value="code" type="radio">
                                        <span>Cash On delivery</span>
                                        <span class="payment-desc">Order Now Pay on Delivery</span>
                                    </label>
                                    <label class="payment-method">
                                        <input name="payment-method" id="payment-method-visa" wire:model='paymode'
                                            value="visa" type="radio">
                                        <span>Debit</span>
                                        <span class="payment-desc">There are many variations of passages of Lorem
                                            Ipsum
                                            available</span>
                                    </label>
                                    <label class="payment-method">
                                        <input name="payment-method" id="payment-method-paypal" wire:model='paymode'
                                            value="paypal" type="radio">
                                        <span>Paypal</span>
                                        <span class="payment-desc">You can pay with your credit</span>
                                        <span class="payment-desc">card if you don't have a paypal account</span>
                                    </label>
                                </div>
                                @if (Session::has('checkout'))


                                    <p class="summary-info grand-total"><span>Grand Total</span> <span
                                            class="grand-total-price">${{ Session::get('checkout')['total'] }}</span>
                                    </p>
                                @endif
                                <button type="submit" class="btn btn-medium">Place order now</button>
                            </div>

                        </div>


                        <div class="wrap-show-advance-info-box style-1 box-in-site">
                            <h3 class="title-box">Most Viewed Products</h3>
                            <div class="wrap-products">
                                <div class="products slide-carousel owl-carousel style-nav-1 equal-container"
                                    data-items="5" data-loop="false" data-nav="true" data-dots="false"
                                    data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"3"},"1200":{"items":"5"}}'>

                                    <div class="product product-style-2 equal-elem ">
                                        <div class="product-thumnail">
                                            <a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                <figure><img src="{{ url('file') }}/images/products/digital_4.jpg"
                                                        width="214" height="214"
                                                        alt="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                </figure>
                                            </a>
                                            <div class="group-flash">
                                                <span class="flash-item new-label">new</span>
                                            </div>
                                            <div class="wrap-btn">
                                                <a href="#" class="function-link">quick view</a>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <a href="#" class="product-name"><span>Radiant-360 R6 Wireless
                                                    Omnidirectional
                                                    Speaker [White]</span></a>
                                            <div class="wrap-price"><span class="product-price">$250.00</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="product product-style-2 equal-elem ">
                                        <div class="product-thumnail">
                                            <a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                <figure><img src="{{ url('file') }}/images/products/digital_17.jpg"
                                                        width="214" height="214"
                                                        alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
                                            </a>
                                            <div class="group-flash">
                                                <span class="flash-item sale-label">sale</span>
                                            </div>
                                            <div class="wrap-btn">
                                                <a href="#" class="function-link">quick view</a>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <a href="#" class="product-name"><span>Radiant-360 R6 Wireless
                                                    Omnidirectional
                                                    Speaker [White]</span></a>
                                            <div class="wrap-price"><ins>
                                                    <p class="product-price">$168.00</p>
                                                </ins> <del>
                                                    <p class="product-price">$250.00</p>
                                                </del></div>
                                        </div>
                                    </div>

                                    <div class="product product-style-2 equal-elem ">
                                        <div class="product-thumnail">
                                            <a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                <figure><img src="{{ url('file') }}/images/products/digital_15.jpg"
                                                        width="214" height="214"
                                                        alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
                                            </a>
                                            <div class="group-flash">
                                                <span class="flash-item new-label">new</span>
                                                <span class="flash-item sale-label">sale</span>
                                            </div>
                                            <div class="wrap-btn">
                                                <a href="#" class="function-link">quick view</a>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <a href="#" class="product-name"><span>Radiant-360 R6 Wireless
                                                    Omnidirectional
                                                    Speaker [White]</span></a>
                                            <div class="wrap-price"><ins>
                                                    <p class="product-price">$168.00</p>
                                                </ins> <del>
                                                    <p class="product-price">$250.00</p>
                                                </del></div>
                                        </div>
                                    </div>

                                    <div class="product product-style-2 equal-elem ">
                                        <div class="product-thumnail">
                                            <a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                <figure><img src="{{ url('file') }}/images/products/digital_1.jpg"
                                                        width="214" height="214"
                                                        alt="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                </figure>
                                            </a>
                                            <div class="group-flash">
                                                <span class="flash-item bestseller-label">Bestseller</span>
                                            </div>
                                            <div class="wrap-btn">
                                                <a href="#" class="function-link">quick view</a>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <a href="#" class="product-name"><span>Radiant-360 R6 Wireless
                                                    Omnidirectional
                                                    Speaker [White]</span></a>
                                            <div class="wrap-price"><span class="product-price">$250.00</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="product product-style-2 equal-elem ">
                                        <div class="product-thumnail">
                                            <a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                <figure><img src="{{ url('file') }}/images/products/digital_21.jpg"
                                                        width="214" height="214"
                                                        alt="T-Shirt Raw Hem Organic Boro Constrast Denim"></figure>
                                            </a>
                                            <div class="wrap-btn">
                                                <a href="#" class="function-link">quick view</a>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <a href="#" class="product-name"><span>Radiant-360 R6 Wireless
                                                    Omnidirectional
                                                    Speaker [White]</span></a>
                                            <div class="wrap-price"><span class="product-price">$250.00</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="product product-style-2 equal-elem ">
                                        <div class="product-thumnail">
                                            <a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                <figure><img src="{{ url('file') }}/images/products/digital_3.jpg"
                                                        width="214" height="214"
                                                        alt="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                </figure>
                                            </a>
                                            <div class="group-flash">
                                                <span class="flash-item sale-label">sale</span>
                                            </div>
                                            <div class="wrap-btn">
                                                <a href="#" class="function-link">quick view</a>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <a href="#" class="product-name"><span>Radiant-360 R6 Wireless
                                                    Omnidirectional
                                                    Speaker [White]</span></a>
                                            <div class="wrap-price"><ins>
                                                    <p class="product-price">$168.00</p>
                                                </ins> <del>
                                                    <p class="product-price">$250.00</p>
                                                </del></div>
                                        </div>
                                    </div>

                                    <div class="product product-style-2 equal-elem ">
                                        <div class="product-thumnail">
                                            <a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                <figure><img src="{{ url('file') }}/images/products/digital_4.jpg"
                                                        width="214" height="214"
                                                        alt="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                </figure>
                                            </a>
                                            <div class="group-flash">
                                                <span class="flash-item new-label">new</span>
                                            </div>
                                            <div class="wrap-btn">
                                                <a href="#" class="function-link">quick view</a>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <a href="#" class="product-name"><span>Radiant-360 R6 Wireless
                                                    Omnidirectional
                                                    Speaker [White]</span></a>
                                            <div class="wrap-price"><span class="product-price">$250.00</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="product product-style-2 equal-elem ">
                                        <div class="product-thumnail">
                                            <a href="#" title="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                <figure><img src="{{ url('file') }}/images/products/digital_5.jpg"
                                                        width="214" height="214"
                                                        alt="T-Shirt Raw Hem Organic Boro Constrast Denim">
                                                </figure>
                                            </a>
                                            <div class="group-flash">
                                                <span class="flash-item bestseller-label">Bestseller</span>
                                            </div>
                                            <div class="wrap-btn">
                                                <a href="#" class="function-link">quick view</a>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <a href="#" class="product-name"><span>Radiant-360 R6 Wireless
                                                    Omnidirectional
                                                    Speaker [White]</span></a>
                                            <div class="wrap-price"><span class="product-price">$250.00</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--End wrap-products-->
                        </div>
                </form>
            </div>
            <!--end main content area-->
        </div>
        <!--end container-->

    </main>
</div>
