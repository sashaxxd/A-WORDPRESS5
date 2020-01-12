<?php get_header(); ?>
<?php
/*
Template Name: ОФормление заказа

*/
defined( 'ABSPATH' ) || exit;
?>


<div class="cart-table-area section-padding-100">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 col-lg-8">
                <div class="checkout_details_area mt-50 clearfix">















                    <?php
                    while ( have_posts() ) :
                        the_post();
                    the_content();

                    ?>







                        <?php
                    endwhile; // End of the loop.
                    ?>

                </div>
            </div>
            <div class="col-12 col-lg-4">
                <div class="cart-summary">
                    <h5><?php
                        /**
                         * Ваш заказ
                         */
                        esc_html_e( 'Your order', 'woocommerce' );   ?></h5>
                    <ul class="summary-table">
                        <li><span>Товаров:</span> <span><?php

                                echo WC()->cart->get_cart_contents_count();

                                ?> </span></li>
                        <li><span>На сумму:</span> <span><?php
                                wc_cart_totals_order_total_html()
//                                echo WC()->cart->get_cart_subtotal();

                                ?></span></li>
                    </ul>

<!--                    <div class="payment-method">-->
<!--                        <!-- Cash on delivery -->
<!--                        <div class="custom-control custom-checkbox mr-sm-2">-->
<!--                            <input type="checkbox" class="custom-control-input" id="cod" checked>-->
<!--                            <label class="custom-control-label" for="cod">Cash on Delivery</label>-->
<!--                        </div>-->
<!--                        <!-- Paypal -->
<!--                        <div class="custom-control custom-checkbox mr-sm-2">-->
<!--                            <input type="checkbox" class="custom-control-input" id="paypal">-->
<!--                            <label class="custom-control-label" for="paypal">Paypal <img class="ml-15" src="img/core-img/paypal.png" alt=""></label>-->
<!--                        </div>-->
<!--                    </div>-->

                    <div class="cart-btn mt-100">
                        <a href="#" class="btn amado-btn w-100">Оформить</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>



<?php get_footer(); ?>
