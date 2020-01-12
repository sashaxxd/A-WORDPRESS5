<?php get_header(); ?>
<?php
/*
Template Name: Корзина

*/
defined( 'ABSPATH' ) || exit;

do_action( 'woocommerce_before_cart' ); ?>

<?php if(WC()->cart->get_cart_contents_count() !== 0):?>

    <form action="<?php echo esc_url( wc_get_cart_url() ); ?>" method="post" class="cart-table-area section-padding-100">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 col-lg-10">
                <div class="cart-title mt-50">
                    <h2>Ваша корзина</h2>
                </div>

                <div class="cart-table clearfix">
                    <table class="table table-responsive">
                        <thead>
                        <tr>
                            <th>Фото товара</th>
                            <th>Название</th>
                            <th>Цена за шт.</th>
                            <th>Количество</th>
                            <th>Cумма</th>
                            <th>Удалить</th>
                        </tr>
                        </thead>
                        <tbody>



                        <?php foreach ( WC()->cart->get_cart() as $cart_item_key => $cart_item ) : ?>
                            <?php
                            $_product   = apply_filters( 'woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key );
                            $product_id = apply_filters( 'woocommerce_cart_item_product_id', $cart_item['product_id'], $cart_item, $cart_item_key );
                            if ( $_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters( 'woocommerce_cart_item_visible', true, $cart_item, $cart_item_key ) ) {
                                $product_permalink = apply_filters('woocommerce_cart_item_permalink', $_product->is_visible() ? $_product->get_permalink($cart_item) : '', $cart_item, $cart_item_key);
                            }
                            ?>
                        <tr>
                            <td class="cart_product_img">
                                <?php
                                $thumbnail = apply_filters( 'woocommerce_cart_item_thumbnail', $_product->get_image(), $cart_item, $cart_item_key );

                                if ( ! $product_permalink ) {
                                    echo $thumbnail; // PHPCS: XSS ok.
                                } else {
                                    printf( '<a href="%s">%s</a>', esc_url( $product_permalink ), $thumbnail ); // PHPCS: XSS ok.
                                }
                                ?>
<!--                                <a href="#"><img src="img/bg-img/cart1.jpg" alt="Product"></a>-->
                            </td>
                            <td class="cart_product_desc">
                                <h5>
                                    <?php
                                    if ( ! $product_permalink ) {
                                        echo wp_kses_post( apply_filters( 'woocommerce_cart_item_name', $_product->get_name(), $cart_item, $cart_item_key ) . '&nbsp;' );
                                    } else {
                                        echo wp_kses_post( apply_filters( 'woocommerce_cart_item_name', sprintf( '<a href="%s">%s</a>', esc_url( $product_permalink ), $_product->get_name() ), $cart_item, $cart_item_key ) );
                                    }

                                    do_action( 'woocommerce_after_cart_item_name', $cart_item, $cart_item_key );

                                    // Meta data.
                                    echo wc_get_formatted_cart_item_data( $cart_item ); // PHPCS: XSS ok.

                                    // Backorder notification.
                                    if ( $_product->backorders_require_notification() && $_product->is_on_backorder( $cart_item['quantity'] ) ) {
                                        echo wp_kses_post( apply_filters( 'woocommerce_cart_item_backorder_notification', '<p class="backorder_notification">' . esc_html__( 'Available on backorder', 'woocommerce' ) . '</p>', $product_id ) );
                                    }
                                    ?>
                                </h5>
                            </td>
                            <td class="price">
                                <span>
                                    <?php
                                    echo apply_filters( 'woocommerce_cart_item_price', WC()->cart->get_product_price( $_product ), $cart_item, $cart_item_key ); // PHPCS: XSS ok.
                                    ?>
                                </span>
                            </td>
                            <td class="qty">
                                <div class="qty-btn d-flex">
                                    <p>Кол-во

                                    </p>
                                    <?php
                                    if ( $_product->is_sold_individually() ) {
                                        $product_quantity = sprintf( '1 <input type="hidden" name="cart[%s][qty]" value="1" />', $cart_item_key );
                                    } else {
                                        $product_quantity = woocommerce_quantity_input(
                                            array(
                                                'input_name'   => "cart[{$cart_item_key}][qty]",
                                                'input_value'  => $cart_item['quantity'],
                                                'max_value'    => $_product->get_max_purchase_quantity(),
                                                'min_value'    => '0',
//                                                'product_name' => $_product->get_name(),
                                            ),
                                            $_product,
                                            false
                                        );
                                    }

                                    echo apply_filters( 'woocommerce_cart_item_quantity', $product_quantity, $cart_item_key, $cart_item ); // PHPCS: XSS ok.
                                    ?>

<!--                                    <div class="quantity">-->
<!--                                        <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>-->
<!--                                        <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="quantity" value="1">-->
<!--                                        <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>-->
<!--                                    </div>-->
                                </div>
                            </td>
                            <td class="product-subtotal" data-title="<?php esc_attr_e( 'Subtotal', 'woocommerce' ); ?>">
                                <?php
                                echo apply_filters( 'woocommerce_cart_item_subtotal', WC()->cart->get_product_subtotal( $_product, $cart_item['quantity'] ), $cart_item, $cart_item_key ); // PHPCS: XSS ok.
                                ?>
                            </td>
                            <td class="product-remove">
                                <?php
                                echo apply_filters( // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
                                    'woocommerce_cart_item_remove_link',
                                    sprintf(
                                        '<a href="%s" class="remove" aria-label="%s" data-product_id="%s" data-product_sku="%s"><i class="fa fa-window-close" 
                                        style="color: red;">&nbsp;</i></a>',
                                        esc_url( wc_get_cart_remove_url( $cart_item_key ) ),
                                        esc_html__( 'Remove this item', 'woocommerce' ),
                                        esc_attr( $product_id ),
                                        esc_attr( $_product->get_sku() )
                                    ),
                                    $cart_item_key
                                );
                                ?>
                            </td>
                        </tr>
                        <?php endforeach; ?>


                        </tbody>

                    </table>
                    <?php do_action( 'woocommerce_cart_contents' ); ?>

                    <tr>
                        <td colspan="6" class="actions">

<!--                            --><?php //if ( wc_coupons_enabled() ) { ?>
<!--                                <div class="coupon">-->
<!--                                    <label for="coupon_code">--><?php //esc_html_e( 'Coupon:', 'woocommerce' ); ?><!--</label> <input type="text" name="coupon_code" class="input-text" id="coupon_code" value="" placeholder="--><?php //esc_attr_e( 'Coupon code', 'woocommerce' ); ?><!--" /> <button type="submit" class="button" name="apply_coupon" value="--><?php //esc_attr_e( 'Apply coupon', 'woocommerce' ); ?><!--">--><?php //esc_attr_e( 'Apply coupon', 'woocommerce' ); ?><!--</button>-->
<!--                                    --><?php //do_action( 'woocommerce_cart_coupon' ); ?>
<!--                                </div>-->
<!--                            --><?php //} ?>
                           <!--  КНОПКА ОБНОВИТЬ КОРЗИНУ выключена т.к. повешан js на инпуты qty -->
                            <button type="submit" class="button btn amado-btn" name="update_cart" value="<?php esc_attr_e( 'Update cart', 'woocommerce' ); ?>"><?php esc_html_e( 'Update cart', 'woocommerce' ); ?></button>

                            <?php do_action( 'woocommerce_cart_actions' ); ?>

                            <?php wp_nonce_field( 'woocommerce-cart', 'woocommerce-cart-nonce' ); ?>
                        </td>
                    </tr>

                    <?php do_action( 'woocommerce_after_cart_contents' ); ?>
                </div>
            </div>

        </div>
    </div>
    <div class="col-12 col-lg-4">
        <div class="cart-summary">
<!--            --><?php
//            /**
//             * Cart collaterals hook.
//             *
//             * @hooked woocommerce_cross_sell_display
//             * @hooked woocommerce_cart_totals - 10
//             */
//            do_action( 'woocommerce_cart_collaterals' );
//            ?>
            <h5>Итого: </h5>
            <ul class="summary-table">
                <li><span>Товаров:</span> <span><?php

                        echo WC()->cart->get_cart_contents_count();

                        ?> </span></li>

                <li><span>На сумму:</span> <span><?php

                        echo WC()->cart->get_cart_subtotal();

                        ?></span></li>
            </ul>
            <div class="cart-btn mt-100">
                <a href="/checkout/" class="btn amado-btn w-100">ОФОРМИТЬ ЗАКАЗ</a>
            </div>
            <div class="cart-btn mt-100">
                <form class="clear-cart " action="<?php echo esc_url( wc_get_cart_url() ); ?>" method="post"><button type="submit" onclick='javascript:if(!confirm("Удалить все товары из корзины?")) {return false;}' class="button amado-btn" name="clear-cart">Очистить корзину</button></form>
            </div>
        </div>
    </div>
    </form>
    <?php else:?>
<div class="cart-table-area section-padding-100">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 col-lg-10">
                <div class="cart-title mt-50">
                    <h2>Ваша корзина пуста</h2>
                </div>


            </div>

        </div>
    </div>
</div>
<?php endif; ?>


</div>

<?php do_action( 'woocommerce_after_cart' ); ?>

<?php get_footer(); ?>
