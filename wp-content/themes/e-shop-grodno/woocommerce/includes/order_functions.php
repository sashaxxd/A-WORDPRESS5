<?php
/**
 * Обязательные поля перекл. на необязат
 */
function custom_my_fields($fields) {

    $fields["billing"]["billing_first_name"]["required"] = false;
    $fields["billing"]["billing_last_name"]["required"] = false;
    $fields["billing"]["billing_company"]["required"] = false;
    $fields["billing"]["billing_address_1"]["required"] = false;
    $fields["billing"]["billing_address_2"]["required"] = false;
    $fields["billing"]["billing_city"]["required"] = false;
    $fields["billing"]["billing_postcode"]["required"] = false;
    $fields["billing"]["billing_country"]["required"] = false;
    $fields["billing"]["billing_state"]["required"] = false;
    $fields["billing"]["billing_email"]["required"] = true;
    $fields["billing"]["billing_phone"]["required"] = true;

    unset($fields['billing']['billing_country']);  //удаляем! тут хранится значение страны оплаты
    unset($fields['shipping']['shipping_country']); ////удаляем! тут хранится значение страны доставки

//    Debug($fields);
    return $fields;

}

add_filter("woocommerce_checkout_fields", "custom_my_fields");


/**
 * КНОПКА НА ЗАКАЗЕ
 */
add_filter( 'woocommerce_order_button_text', 'woo_custom_order_button_text' );
function woo_custom_order_button_text() {
    return __( 'Купить', 'woocommerce' );
}

/**
 * ДОБАВЛЕНИЕ ПОЛЕЙ СВОИХ В ОПЛАТУ
 */
//add_action( 'woocommerce_checkout_order_review', 'my_checkbox' );
//
//function my_checkbox() {
//    echo '<div class="my_split_checkbox"><h2>' . __('Split Order', 'woocommerce') . '</h2>';
//
//    woocommerce_form_field( 'my_split_checkbox', array(
//        'type'     => 'checkbox',
//        'class'    => array('checkbox_field'),
//        'label'    => __('Split Order', 'woocommerce'),
//        'required' => false,
//    ));
//
//    echo '</div>';
//}


