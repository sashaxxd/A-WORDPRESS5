<?php
/**
 * Show messages
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/notices/notice.php.
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
	exit; // Exit if accessed directly.
}

if ( ! $messages ) {
	return;
}

?>

<?php foreach ( $messages as $message ) : ?>
    <div id="message_msg-cntain-error">
        <div id="msg-cntain-error">
            <div class="row">
                <div class="col-m-1">
                    <div id="message_message_error">
                        <div id="message_error">
                            <div class="row">
                                <div class="col-m-1">
                                    <div id="message_message_error_text" style="cursor: pointer;">
                                            <span id="message_uid0">
                                                <?php
                                                echo wc_kses_notice( $message );
                                                ?>
                                            </span>
                                    </div>
                                </div>
                                <div class="col-m-2">
                                    <div id="message_message_close_error">
                                        <div id="message_close_error"><i class="fa fa-window-close">&nbsp;</i></div>
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
