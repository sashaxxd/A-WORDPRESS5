<?php
/**
 * Очистка корзины
 */
add_action('init', 'woocommerce_clear_cart_url');
function woocommerce_clear_cart_url() {
    global $woocommerce;
    if( isset($_REQUEST['clear-cart']) ) {
        $woocommerce->cart->empty_cart();
    }
}


/**
 * аякс мини корзина
 */
add_filter( 'woocommerce_add_to_cart_fragments', 'header_add_to_cart_fragment', 30, 1 );
function header_add_to_cart_fragment( $fragments ) {


    ob_start();

    ?>
    <a href="/cart" class="cart-customlocation cart-nav"><img src="<?php echo get_template_directory_uri() ?>/assets/img/core-img/cart.png" alt=""> Корзина <span>
                    <br>

            <?php
            global $woocommerce; ?>
            В КОРЗИНЕ (<?php echo $woocommerce->cart->cart_contents_count; ?>) ТОВАРОВ
                  НА СУММУ <?php  echo $woocommerce->cart->get_cart_total(); ?>
                </span></a>
    <?php
    $fragments['a.cart-customlocation'] = ob_get_clean();

    return $fragments;
}


/**
Cообщение после нажатия на корзину
 */
//remove_action( 'woocommerce_before_single_product', 'woocommerce_output_all_notices', 10 );


add_filter('wc_add_to_cart_message', 'my_test',10,2);
function my_test($message, $product_id){
    $message = str_replace('Вы отложили', ' - Вы положили', $message);
    return $message;
}

/**
Вешаем на этот же хук свои
 */
//ДЛЯ ХЛЕБНЫХ
// Add our custom function
function my_function_before_single_product() {
    echo '<h2>тут будет флеш сообщение</h2>';
}

// Add the action
add_action( 'woocommerce_before_single_product', 'my_function_before_single_product', 11 );

add_action('wp_enqueue_scripts', 'mythemewc_enqueue_scripts');
function mythemewc_enqueue_scripts() {
    if (class_exists('WooCommerce') && is_product()) {
        wp_enqueue_script('mythemewc-single-product', trailingslashit(get_stylesheet_directory_uri()) . '/assets/js/my-theme-wc-single-ajax-add-cart.js', ['jquery'], false, true);
    }
}

remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_add_to_cart', 10 );

