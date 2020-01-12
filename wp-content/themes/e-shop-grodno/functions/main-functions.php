<?php
/**
Дебагер
 */
function Debug($arr)
{
    echo '<pre>'.print_r($arr, true).'</pre>';
}

/**
 * Отключаем админ панель для всех пользователей.
 */
show_admin_bar(false);


/**
 * Обрубает ненужные скрипты с кода
 */
function wpassist_remove_block_library_css(){
    wp_dequeue_style( 'wp-block-library' );
}
add_action( 'wp_enqueue_scripts', 'wpassist_remove_block_library_css' );
remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
remove_action( 'wp_print_styles', 'print_emoji_styles' );
function my_deregister_scripts(){
    wp_deregister_script( 'wp-embed' );
}
add_action( 'wp_footer', 'my_deregister_scripts');



/**
 * Регистрируем меню
 */

register_nav_menus(array(
    'top'    => 'Основное меню',    //Название месторасположения меню в шаблоне
    'bottom' => 'Меню каталога'      //Название другого месторасположения меню в шаблоне
));



