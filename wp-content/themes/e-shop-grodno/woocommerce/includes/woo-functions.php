<?php
require_once 'cart-functions.php';
require_once 'order_functions.php';
require_once 'button-functions.php';


/**
Удаляем хлебные
 */
remove_action('woocommerce_before_main_content', 'woocommerce_breadcrumb', 20);


/**
Вешаем на этот же хук свои
 */
//ДЛЯ ХЛЕБНЫХ
add_action( 'woocommerce_before_main_content', 'sasha_function_breadcrumb' );
function sasha_function_breadcrumb(  ) { ?>

        <li class="breadcrumb-item"><?php woocommerce_breadcrumb();

        ?></li>

<?php
}















