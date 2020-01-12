<?php
/**
 * ДОБАВЛЯЕМ ВИДЖЕТЫ
 */
function true_register_wp_sidebars() {

    /* В боковой колонке - фильтры */
    register_sidebar(
        array(
            'id' => 'true_side', // уникальный id
            'name' => 'Для фильтров', // название сайдбара
            'description' => 'Перетащите сюда виджеты, чтобы добавить их в сайдбар.', // описание
            'before_widget' => '<div class="form-check">', // по умолчанию виджеты выводятся <li>-списком
            'after_widget' => '</div>',
            'before_title' => '<h3 class="widget-title">', // по умолчанию заголовки виджетов в <h2>
            'after_title' => '</h3>'
        )
    );


}

add_action( 'widgets_init', 'true_register_wp_sidebars' );