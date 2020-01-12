

<?php
/**
 * The Template for displaying product archives, including the main shop page which is a post type archive
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/archive-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.4.0
 */

defined( 'ABSPATH' ) || exit;

get_header( 'shop' );

?>

<?php //while ( have_posts() ) : the_post(); ?>
<!---->
<!--    --><?php //wc_get_template_part( 'content', 'single-product' ); ?>
<!---->
<?php //endwhile; // end of the loop. ?>

<!-- Product Details Area Start -->
<div class="single-product-area section-padding-100 clearfix">
    <?php
    /**
     * Действия после нажатия на кнопку в корзину
     */
//    do_action( 'woocommerce_before_single_product' );
    ?>
	<div class="container-fluid">

		<div class="row">
			<div class="col-12">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb mt-50">
						<?php
                        /**
                         * woocommerce_before_main_content hook.
                         *
                         * @hooked woocommerce_output_content_wrapper - 10 (outputs opening divs for the content)
                         * @hooked woocommerce_breadcrumb - 20
                         */
                        do_action( 'woocommerce_before_main_content' );
                        ?>
					</ol>
				</nav>
			</div>
		</div>

        <?php while ( have_posts() ) : the_post(); ?>

		<div class="row">
			<div class="col-12 col-lg-7">

                <?php
                /**
                 * вызываем фото
                 * Hook: woocommerce_before_single_product_summary.
                 *
                 * @hooked woocommerce_show_product_sale_flash - 10
                 * @hooked woocommerce_show_product_images - 20
                 */
                do_action( 'woocommerce_before_single_product_summary' );
                ?>


			</div>
			<div class="col-12 col-lg-5">
				<div class="single_product_desc">
					<!-- Product Meta Data -->
					<div class="product-meta-data">
						<div class="line"></div>
						<p class="product-price"><?php  woocommerce_template_single_price()?></p>
						<a href="product-details.html">

							<h6><?php the_title(  ); ?>


                            </h6>
						</a>
						<!-- Ratings & Review -->
						<div class="ratings-review mb-15 d-flex align-items-center justify-content-between">
							<div class="ratings">
<!--								<i class="fa fa-star" aria-hidden="true"></i>-->
<!--								<i class="fa fa-star" aria-hidden="true"></i>-->
<!--								<i class="fa fa-star" aria-hidden="true"></i>-->
<!--								<i class="fa fa-star" aria-hidden="true"></i>-->
<!--								<i class="fa fa-star" aria-hidden="true"></i>-->
                                <?php  woocommerce_template_single_rating()?>

							</div>
<!--							<div class="review">-->
<!--								<a href="#">Write A Review</a>-->
<!--							</div>-->
						</div>
						<!-- АКЦИЯ -->
            <?php if ( $product->is_on_sale() ) : ?>
						<p class="avaibility"><i class="fa fa-circle"></i>АКЦИЯ</p>
                <?php else:?>
                <p class="avaibility-red"><i class="fa fa-circle"></i> АКЦИИ НЕТ</p>
                <?php endif; ?>

					</div>

					<div class="short_overview my-5">
						<p><?php the_content()?></p>
                        <p><?= get_field('czveta')?></p>
						<p><?php woocommerce_template_single_excerpt()?></p>
					</div>

					<!-- Add to Cart Form -->
					<form class="cart clearfix" method="post">


						<div class="cart-btn d-flex mb-50">
<!--							<p>Qty</p>-->
<!--							<div class="quantity">-->
<!--								<span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-caret-down" aria-hidden="true"></i></span>-->
<!--								<input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="quantity" value="1">-->
<!--								<span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-caret-up" aria-hidden="true"></i></span>-->
<!--							</div>-->
                            <?php woocommerce_template_single_sharing  () ?>

						</div>
						<?php
                        /**
                         * Добавляем кнопку  single-product/add-to-cart/simple.php работает без ajax для работы ajax my-theme-wc-single-ajax-add-cart.js
                         * добавляем скрипт
                         */
                        woocommerce_template_single_add_to_cart() ?>
                        <?php
                        /**
                         * КНОПКА ВЗЯТА ИЗ КОРЗИНЫ  ИЗ АРХИВА ЧТО БЫ РАБОТАЛ AJAX - СКРИПТ ajax my-theme-wc-single-ajax-add-cart.js НЕ НУЖЕН
                         */
//                        woocommerce_template_loop_add_to_cart() ?>
<!--						<button type="submit" name="addtocart" value="5" class="btn amado-btn">В КОРЗИНУ</button>-->
					</form>

				</div>
			</div>
		</div>
        <?php endwhile; // end of the loop. ?>


	</div>
</div>
<!-- Тут можно сделать отзывы, похожие товары -->

<?php
///**
// * Hook: woocommerce_after_single_product_summary.
// *
// * @hooked woocommerce_output_product_data_tabs - 10
// * @hooked woocommerce_upsell_display - 15
// * @hooked woocommerce_output_related_products - 20
// */
//do_action( 'woocommerce_after_single_product_summary' );
//?>

</div>
<!-- ##### Main Content Wrapper End ##### -->

<!-- ##### Newsletter Area Start ##### -->
<section class="newsletter-area section-padding-100-0">
	<div class="container">
		<div class="row align-items-center">
			<!-- Newsletter Text -->
			<div class="col-12 col-lg-6 col-xl-7">
				<div class="newsletter-text mb-100">
					<h2>Subscribe for a <span>25% Discount</span></h2>
					<p>Nulla ac convallis lorem, eget euismod nisl. Donec in libero sit amet mi vulputate consectetur. Donec auctor interdum purus, ac finibus massa bibendum nec.</p>
				</div>
			</div>
			<!-- Newsletter Form -->
			<div class="col-12 col-lg-6 col-xl-5">
				<div class="newsletter-form mb-100">
					<form action="#" method="post">
						<input type="email" name="email" class="nl-email" placeholder="Your E-mail">
						<input type="submit" value="Subscribe">
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- ##### Newsletter Area End ##### -->

<?php

get_footer( 'shop' );
