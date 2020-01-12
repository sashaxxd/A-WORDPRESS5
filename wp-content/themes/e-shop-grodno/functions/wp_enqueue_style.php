<?php
/**
Cтили и скрипты
 */


function my_scripts(){
    wp_enqueue_style( 'style-1', get_template_directory_uri() . '/assets/css/core-style.css', false, null );
    wp_enqueue_style( 'style-2', get_template_directory_uri() . '/assets/css/bootstrap.min.css', false, null );
    wp_enqueue_style( 'style-3', get_template_directory_uri() . '/assets/css/owl.carousel.css', false, null );
    wp_enqueue_style( 'style-4', get_template_directory_uri() . '/assets/css/animate.css', false, null );
    wp_enqueue_style( 'style-5', get_template_directory_uri() . '/assets/css/magnific-popup.css', false, null );
    wp_enqueue_style( 'style-6', get_template_directory_uri() . '/assets/css/jquery-ui.min.css', false, null );
    wp_enqueue_style( 'style-7', get_template_directory_uri() . '/assets/css/core-style.css', false, null );
//    wp_enqueue_style( 'style-8', get_template_directory_uri() . '/assets/css/woocommerce-layout.css', false, null );
    wp_enqueue_style( 'style-9', get_template_directory_uri() . '/assets/css/main.css', false, null );
    wp_enqueue_style( 'style-10', get_template_directory_uri() . '/assets/css/flash_message.css', false, null );
    wp_enqueue_style( 'style-11', get_template_directory_uri() . '/assets/css/modal-cart.css', false, null );

    wp_enqueue_script( 'script-1', get_template_directory_uri() . '/assets/js/jquery/jquery-2.2.4.min.js', array(), null, true );
    wp_enqueue_script( 'script-2', get_template_directory_uri() . '/assets/js/popper.min.js', array(), null, true );
    wp_enqueue_script( 'script-3', get_template_directory_uri() . '/assets/js/bootstrap.min.js', array(), null, true );
    wp_enqueue_script( 'script-4', get_template_directory_uri() . '/assets/js/plugins.js', array(), null, true );
    wp_enqueue_script( 'script-5', get_template_directory_uri() . '/assets/js/active.js', array(), null, true );
    wp_enqueue_script( 'script-6', get_template_directory_uri() . '/assets/js/ajax-cart-button.js', array(), null, true );

    wp_enqueue_script( 'script-8', get_template_directory_uri() . '/assets/js/modal.min.js', array(), null, true );
    wp_enqueue_script('ajax-search' , get_template_directory_uri() . '/assets/js/ajax-search.js', array('jquery'), null, true);
    wp_localize_script('ajax-search', 'search_form' , array(
        'url' => admin_url( 'admin-ajax.php' ),
        'nonce' => wp_create_nonce('search-nonce')
    ));
    wp_enqueue_script( 'script-7', get_template_directory_uri() . '/assets/js/flash_message.js', array(), null, true );
//    // Если запись принадлежит определенной категории
//    if(is_category('acters')){
//        wp_enqueue_style( 'style-acters', get_template_directory_uri() . '/assets/css/acters.css', false, null );
//        wp_enqueue_script( 'my-ajax-request', get_template_directory_uri() . '/assets/js/filters.js', array(), null, true );
//        wp_localize_script( 'my-ajax-request', 'MyAjax', array( 'ajaxurl' => admin_url( 'admin-ajax.php' ) ) );
//
//    }
//
//    if ( is_single() && in_category( 'acters' )) {
//        wp_enqueue_style( 'style-ss', get_template_directory_uri() . '/assets/css/single-acters.css', false, null );
//        wp_enqueue_style( 'style-ss2', get_template_directory_uri() . '/assets/css/single-acters2.css', false, null );
//        wp_enqueue_script( 'my-ajax-request', get_template_directory_uri() . '/assets/js/single.js', array(), null, true );
//
//    }

}
add_action('wp_enqueue_scripts', 'my_scripts');

/**
 * функиция для подкл. шаблона определенной категории как подкл. css?
 */
add_filter('single_template', create_function(
        '$the_template',
        'foreach( (array) get_the_category() as $cat ) {
		if ( file_exists(TEMPLATEPATH . "/single-{$cat->slug}.php") )
			return TEMPLATEPATH . "/single-{$cat->slug}.php"; }
		return $the_template;' )
);


/**
 * функиция для подкл. css для записей определенной рубрики
 */
function my_scripts_single_css(){
    if ( is_single() && in_category( 'acters' )) {
        wp_enqueue_style( 'style-ss', get_template_directory_uri() . '/assets/css/single-acters.css', false, null );
        wp_enqueue_style( 'style-ss2', get_template_directory_uri() . '/assets/css/single-acters2.css', false, null );
        wp_enqueue_script( 'color-gallery', get_template_directory_uri() . '/assets/js/color-gallery.js', array(), null, true );
    }
    if(is_page( '47' )){
        wp_enqueue_style( 'style-sss5', get_template_directory_uri() . '/assets/css/single-acters.css', false, null );
    }
}
add_action('wp_enqueue_scripts', 'my_scripts_single_css');



