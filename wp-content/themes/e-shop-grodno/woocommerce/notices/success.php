<?php
/**
 * Show messages
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/notices/success.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see         https://docs.woocommerce.com/document/template-structure/
 * @package     WooCommerce/Templates
 * @version     3.5.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

if ( ! $messages ) {
	return;
}

?>

<?php foreach ( $messages as $message ) : ?>


    <div id="mess_msg-cntain" >
        <div id="msg-cntain">
            <div class="row">
                <div class="col-m-1">
                    <div id="mess_message_ok">
                        <div id="message_ok">
                            <div class="row">
                                <div class="col-m-1">
                                    <div id="mess_message_text">
                                        <span id="mess_uid0">
                                            <?php  global $woocommerce; ?>
                    В КОРЗИНЕ (<?php echo $woocommerce->cart->cart_contents_count; ?>) ТОВАРОВ
                  НА СУММУ <?php  echo $woocommerce->cart->get_cart_total(); ?>
                                            <?php

                                            echo wc_kses_notice( $message );
                                            ?></span>
                                    </div>
                                </div>
                                <div class="col-m-2">
                                    <div id="mess_message_close">
                                        <div id="message_close"><i class="fa fa-window-close">&nbsp;</i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php endforeach; ?>
