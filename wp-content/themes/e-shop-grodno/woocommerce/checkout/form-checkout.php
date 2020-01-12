<?php
/**
 * Checkout Form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-checkout.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.5.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;

}


/**
 * КУПОНЫ
 */
//do_action( 'woocommerce_before_checkout_form', $checkout );
//
//// If checkout registration is disabled and not logged in, the user cannot checkout.
//if ( ! $checkout->is_registration_enabled() && $checkout->is_registration_required() && ! is_user_logged_in() ) {
//	echo esc_html( apply_filters( 'woocommerce_checkout_must_be_logged_in_message', __( 'You must be logged in to checkout.', 'woocommerce' ) ) );
//	return;
//}

?>



<form name="checkout" method="post" class="checkout woocommerce-checkout" action="<?php echo esc_url( wc_get_checkout_url() ); ?>" enctype="multipart/form-data">
    <div class="cart-title">
        <h2>Доставка</h2>
    </div>
    <div class="row">

        <?php
        if ( WC()->cart->needs_shipping() && WC()->cart->show_shipping() ) : ?>

            <div class="col-12 mb-3">
                <ul id="shipping_method" class="woocommerce-shipping-methods">
                    <?php
                    //$packages           = WC()->shipping->get_packages()[0]['rates'];
                    //
                    foreach  ( WC()->shipping->get_packages() as $key => $package ) : ?>
                        <?php $i = 0;  foreach($package['rates'] as $rate_id => $rate ) : $i++ ?>
                            <?php Debug($rate->get_cost() ) ?>
                            <li>
                                <input type="radio" name="shipping_method[0]" data-index="0" id="shipping_method_0_flat_rate<?= $rate->get_instance_id() ?>"
                                       value="flat_rate:<?= $rate->get_instance_id() ?>" class="shipping_method"
                                    <?php if($i == 1):?>
                                        checked
                                    <?php endif; ?>
                                >
                                <label for="shipping_method_0_flat_rate<?= $rate->get_instance_id() ?>"><?= $rate->get_label() ?></label>
                            </li>
                        <?php endforeach; ?>
                    <?php endforeach; ?>
                </ul>

            </div>

        <?php endif; ?>



    </div>



    <div class="cart-title">
        <h2>Оплата</h2>
    </div>
    <div class="row">

        	<?php if ( WC()->cart->needs_payment() ) : ?>
        		<ul class="wc_payment_methods payment_methods methods">
        			<?php
                    $WC_Payment_Gateways = new WC_Payment_Gateways();
                    $available_gateways = $WC_Payment_Gateways->get_available_payment_gateways();
        			if ( ! empty( $available_gateways ) ) {
        				foreach ( $available_gateways as $gateway ) {
        					wc_get_template( 'checkout/payment-method.php', array( 'gateway' => $gateway ) );
        				}
        			} else {
        				echo '<li class="woocommerce-notice woocommerce-notice--info woocommerce-info">' . apply_filters( 'woocommerce_no_available_payment_methods_message', WC()->customer->get_billing_country() ? esc_html__( 'Sorry, it seems that there are no available payment methods for your state. Please contact us if you require assistance or wish to make alternate arrangements.', 'woocommerce' ) : esc_html__( 'Please fill in your details above to see available payment methods.', 'woocommerce' ) ) . '</li>'; // @codingStandardsIgnoreLine
        			}
        			?>
        		</ul>
        	<?php endif; ?>


    </div>




    <div class="cart-title">
        <h2>Оформление заказа</h2>
    </div>

    <div class="row">


        <?php

        /**
         * ВМЕСТО <?php do_action( 'woocommerce_checkout_billing' ); ?> ВЫВОДИМ ПОЛЯ КАК НАМ НАДО В ВЕРСТКЕ
         */
        /**
         * ПОЛУЧАЕМ ПОЛЯ ДЛЯ ОФОРМЛЕНИЯ
         */
        $fields = $checkout->get_checkout_fields( 'billing' );
        ?>

        <div class="col-md-6 mb-3">

            <input type="text" class="form-control form-row-first" id="first_name"  name="billing_first_name" autocomplete="<?= $fields["billing_first_name"]['autocomplete'] ?>" placeholder="<?= $fields["billing_first_name"]['label'] ?>" required>
        </div>
        <div class="col-md-6 mb-3">
            <input type="text" class="form-control" id="last_name" value="" placeholder="<?= $fields["billing_last_name"]['label'] ?>" required>
        </div>
        <!--                            <div class="col-12 mb-3">-->
        <!--                                <input type="text" class="form-control" id="company" placeholder="Company Name" value="">-->
        <!--                            </div>-->
        <div class="col-12 mb-3">
            <input type="email" class="form-control" name="billing_email" id="email" placeholder="<?= $fields["billing_email"]['label'] ?>" value="">
        </div>
        <!--                            <div class="col-12 mb-3">-->
        <!--                                <select class="w-100" id="country">-->
        <!--                                    <option value="usa">United States</option>-->
        <!--                                    <option value="uk">United Kingdom</option>-->
        <!--                                    <option value="ger">Germany</option>-->
        <!--                                    <option value="fra">France</option>-->
        <!--                                    <option value="ind">India</option>-->
        <!--                                    <option value="aus">Australia</option>-->
        <!--                                    <option value="bra">Brazil</option>-->
        <!--                                    <option value="cana">Canada</option>-->
        <!--                                </select>-->
        <!--                            </div>-->
        <div class="col-12 mb-3">
            <input type="text" class="form-control mb-3 form-row-wide address-field" id="street_address" autocomplete="address-line1" name="billing_address_1" placeholder="<?= $fields["billing_address_1"]['label'] ?>" value="">
        </div>
        <!--                            <div class="col-12 mb-3">-->
        <!--                                <input type="text" class="form-control" id="city" placeholder="Town" value="">-->
        <!--                            </div>-->
        <!--                            <div class="col-md-6 mb-3">-->
        <!--                                <input type="text" class="form-control" id="zipCode" placeholder="Zip Code" value="">-->
        <!--                            </div>-->
        <div class="col-md-6 mb-3">
            <input type="number" class="form-control" name="billing_phone" id="phone_number" min="0" placeholder="<?= $fields["billing_phone"]['label'] ?>" value="">
        </div>
        <!--                                    <div class="col-12 mb-3">-->
        <!--                                        <textarea name="comment" class="form-control w-100" id="comment" cols="30" rows="10" placeholder=""></textarea>-->
        <!--                                    </div>-->
        <!---->
        <!--                                    <div class="col-12">-->
        <!--                                        <div class="custom-control custom-checkbox d-block mb-2">-->
        <!--                                            <input type="checkbox" class="custom-control-input" id="customCheck2">-->
        <!--                                            <label class="custom-control-label" for="customCheck2">Create an accout</label>-->
        <!--                                        </div>-->
        <!--                                        <div class="custom-control custom-checkbox d-block">-->
        <!--                                            <input type="checkbox" class="custom-control-input" id="customCheck3">-->
        <!--                                            <label class="custom-control-label" for="customCheck3">Ship to a different address</label>-->
        <!--                                        </div>-->
        <!--                                    </div>-->

    </div>

    <div class="row">



        <div id="order_review" class="woocommerce-checkout-review-order">

            <?php do_action( 'woocommerce_checkout_order_review' ); ?>
        </div>
    </div>






</form>
<?php




//Debug($fields)	;
?>












