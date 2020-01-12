<?php
/* ЗАПИСЬ НА КНОПКЕ  */
add_filter( 'woocommerce_product_single_add_to_cart_text', 'tb_woo_custom_cart_button_text' );
add_filter( 'woocommerce_product_add_to_cart_text', 'tb_woo_custom_cart_button_text' );
function tb_woo_custom_cart_button_text() {
    return __( 'КУПИТЬ', 'woocommerce' );
}


/**
 * Auto update cart after quantity change
 *
 * @return  string
 **/
add_action( 'wp_footer', 'cart_update_qty_script' );
function cart_update_qty_script() {
    if (is_cart()) :
        ?>
        <script>
            jQuery('.quantity').on('change', '.qty', function(){
                jQuery("[name='update_cart']").trigger("click");
            });
        </script>
        <?php
    endif;
}


/**
 * Добавляем поле количества на страницу архивов и меняем стили кнопки
 */
add_filter( 'woocommerce_loop_add_to_cart_link', 'quantity_inputs_for_loop_ajax_add_to_cart', 10, 2 );
function quantity_inputs_for_loop_ajax_add_to_cart( $html, $product ) {
    if ( $product && $product->is_type( 'simple' ) && $product->is_purchasable() && $product->is_in_stock() && ! $product->is_sold_individually() ) {
        // Get the necessary classes
        $class = implode( ' ', array_filter( array(
            'button',
            'product_type_' . $product->get_type(),
            $product->is_purchasable() && $product->is_in_stock() ? 'add_to_cart_button' : '',
            $product->supports( 'ajax_add_to_cart' ) ? 'ajax_add_to_cart' : '',
        ) ) );

        // Adding embeding <form> tag and the quantity field
        $html = sprintf( '
%s%s<a rel="nofollow" href="%s" data-toggle="tooltip" data-placement="left" title="ДОБАВИТЬ В КОРЗИНУ" data-quantity="%s" data-product_id="%s" data-product_sku="%s" class="%s">
<img src="/wp-content/themes/e-shop-grodno/assets/img/core-img/cart.png" alt="">%s</a>%s',
            '<form class="cart">',
            woocommerce_quantity_input( array(), $product, false ),
            esc_url( $product->add_to_cart_url() ),
            esc_attr( isset( $quantity ) ? $quantity : 1 ),
            esc_attr( $product->get_id() ),
            esc_attr( $product->get_sku() ),
            esc_attr( isset( $class ) ? $class : 'button' ),
            esc_html( '' ),
            '</form>'
        );
    }
    return $html;
}

add_action( 'wp_footer' , 'archives_quantity_fields_script' );
function archives_quantity_fields_script(){?>
    <script type='text/javascript'>

        jQuery(function($){
            // Update quantity
            $(".add_to_cart_button.product_type_simple").on('click input', function() {
                $(this).data('quantity', $(this).parent().find('input.qty').val() );
            });

            // On "adding_to_cart" delegated event, removes others "view cart" buttons
            $(document.body).on("adding_to_cart", function() {
                $(".added_to_cart").remove();
            });
        });
    </script>
    <?php //endif;
}


