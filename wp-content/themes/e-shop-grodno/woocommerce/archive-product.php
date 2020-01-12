

<?php
/**
 * The Template for displaying product archives, including the main shop page which is a post type archive
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/archive-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.4.0
 */

defined( 'ABSPATH' ) || exit;

get_header( 'shop' );

?>


    <div class="shop_sidebar_area">

        <!-- ##### Single Widget ##### -->
        <div class="widget catagory mb-50">
            <!-- Widget Title -->
            <h6 class="widget-title mb-30">КАТАЛОГ</h6>

            <!--  Меню категорий -->
            <div class="catagories-menu">
                <?php
                $menu_items = wp_get_nav_menu_items('Меню каталога');

                foreach ($menu_items as $item) {
                    $item->subs = array();
                    $indexedItems[$item->ID] = $item;
                }
                $topLevel = array();
                foreach ($indexedItems as $item) {
                    if ($item->menu_item_parent == 0) {
                        $topLevel[] = $item;
                    } else {
                        $indexedItems[$item->menu_item_parent]->subs[] = $item;
                    }
                }
                ?>
                <ul>
                    <?php foreach ($topLevel as $item) : ?>

                        <li><a href="<?= $item->url?>"><?= $item->title?>

                            <?php  if(!empty($item->subs)): ?><b class="arrow-down"></b><?php endif;?></a>
                        <?php  if(empty($item->subs)): ?></li><?php else:?><ul><?php endif;?>


                        <?php  if(!empty($item->subs)): ?>
                            <?php $i = 0; foreach ($item->subs as $item2) : ?>
                                <?php $i++;?>
                                <li>
                                    <a href="<?= $item2->url?>">--<?= $item2->title?></a>
                                    <?php  if(!empty($item2->subs)): ?>
                                        <?php  foreach ($item2->subs as $item3) : ?>
                                        <li>
                                            <a href="<?= $item3->url?>">---<?= $item3->title?></a>
                                        </li>
                                        <?php  endforeach; ?>
                                    <?php endif; ?>
                                </li>
                                <?php  if($i == count($item->subs)): ?></ul><?php endif;?>

                            <?php  endforeach; ?>
                        <?php endif; ?>

                    <?php  endforeach; ?>
<!--                    <li class="active"><a href="#">Chairs</a></li>-->
<!--                    <li><a href="#">Beds</a></li>-->
<!--                    <li><a href="#">Accesories</a></li>-->
<!--                    <li><a href="#">Furniture</a></li>-->
<!--                    <li><a href="#">Home Deco</a></li>-->
<!--                    <li><a href="#">Dressings</a></li>-->
<!--                    <li><a href="#">Tables</a></li>-->
                </ul>
            </div>
        </div>

        <!-- ##### Фильтры бренды ##### -->
        <div class="widget brands mb-50">


            <?php dynamic_sidebar( 'true_side' ); ?>
            <?php dynamic_sidebar( 'sidebar' ); ?>
            <!-- Widget Title -->


<!--            <div class="widget-desc">-->
<!--                <!-- Single Form Check -->
<!--                <div class="form-check">-->
<!--                    <input class="form-check-input" type="checkbox" value="" id="amado">-->
<!--                    <label class="form-check-label" for="amado">Amado</label>-->
<!--                </div>-->
<!--                <!-- Single Form Check -->
<!--                <div class="form-check">-->
<!--                    <input class="form-check-input" type="checkbox" value="" id="ikea">-->
<!--                    <label class="form-check-label" for="ikea">Ikea</label>-->
<!--                </div>-->
<!--                <!-- Single Form Check -->
<!--                <div class="form-check">-->
<!--                    <input class="form-check-input" type="checkbox" value="" id="furniture">-->
<!--                    <label class="form-check-label" for="furniture">Furniture Inc</label>-->
<!--                </div>-->
<!--                <!-- Single Form Check -->
<!--                <div class="form-check">-->
<!--                    <input class="form-check-input" type="checkbox" value="" id="factory">-->
<!--                    <label class="form-check-label" for="factory">The factory</label>-->
<!--                </div>-->
<!--                <!-- Single Form Check -->
<!--                <div class="form-check">-->
<!--                    <input class="form-check-input" type="checkbox" value="" id="artdeco">-->
<!--                    <label class="form-check-label" for="artdeco">Artdeco</label>-->
<!--                </div>-->
<!--            </div>-->
        </div>

        <!-- ##### Single Widget ##### -->
<!--        <div class="widget color mb-50">-->
<!--            <!-- Widget Title -->
<!--            <h6 class="widget-title mb-30">Color</h6>-->
<!---->
<!--            <div class="widget-desc">-->
<!--                <ul class="d-flex">-->
<!--                    <li><a href="#" class="color1"></a></li>-->
<!--                    <li><a href="#" class="color2"></a></li>-->
<!--                    <li><a href="#" class="color3"></a></li>-->
<!--                    <li><a href="#" class="color4"></a></li>-->
<!--                    <li><a href="#" class="color5"></a></li>-->
<!--                    <li><a href="#" class="color6"></a></li>-->
<!--                    <li><a href="#" class="color7"></a></li>-->
<!--                    <li><a href="#" class="color8"></a></li>-->
<!--                </ul>-->
<!--            </div>-->
<!--        </div>-->

        <!-- ##### Single Widget ##### -->
<!--        <div class="widget price mb-50">-->
<!--            <!-- Widget Title -->
<!--            <h6 class="widget-title mb-30">Price</h6>-->
<!---->
<!--            <div class="widget-desc">-->
<!--                <div class="slider-range">-->
<!--                    <div data-min="10" data-max="1000" data-unit="$" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="10" data-value-max="1000" data-label-result="">-->
<!--                        <div class="ui-slider-range ui-widget-header ui-corner-all"></div>-->
<!--                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>-->
<!--                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>-->
<!--                    </div>-->
<!--                    <div class="range-price">$10 - $1000</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
    </div>

    <div class="amado_product_area section-padding-100">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="product-topbar d-xl-flex align-items-end justify-content-between">
                        <!-- Total Products -->
                        <div class="total-products">
                            <p>Showing 1-8 0f 25</p>
                            <div class="view d-flex">
                                <a href="#"><i class="fa fa-th-large" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-bars" aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <!-- Sorting -->
                        <div class="product-sorting d-flex">
                            <div class="sort-by-date d-flex align-items-center mr-15">
                                <p>Sort by</p>
                                <form action="#" method="get">
                                    <select name="select" id="sortBydate">
                                        <option value="value">Date</option>
                                        <option value="value">Newest</option>
                                        <option value="value">Popular</option>
                                    </select>
                                </form>
                            </div>
                            <div class="view-product d-flex align-items-center">
                                <p>View</p>
                                <form action="#" method="get">
                                    <select name="select" id="viewProduct">
                                        <option value="value">12</option>
                                        <option value="value">24</option>
                                        <option value="value">48</option>
                                        <option value="value">96</option>
                                    </select>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
<?php
if ( woocommerce_product_loop() ) {

    /**
     * Hook: woocommerce_before_shop_loop.
     *
     * @hooked woocommerce_output_all_notices - 10
     * @hooked woocommerce_result_count - 20
     * @hooked woocommerce_catalog_ordering - 30
     */
  //  do_action( 'woocommerce_before_shop_loop' );
// //Cортировка надо настроить

    woocommerce_product_loop_start();
    woocommerce_product_loop_end();
    ?>

<!--    РАЗДЕЛИТЕЛЬ КАТЕГОРИЙ ОТ ТОВАРОВ - ВВЕРХУ ВЫВОД КАТЕГОРИЙ
 woocommerce_product_loop_start();
    woocommerce_product_loop_end();
 -->
    <div class="products_container" style="width: 100%; height: 2px; background-color: #00a699; float: left;
    margin-bottom: 50px;
"></div>

    <?php
    if ( wc_get_loop_prop( 'total' ) ) {
        while ( have_posts() ) {
            the_post();

            /**
             * Hook: woocommerce_shop_loop.
             */
            do_action( 'woocommerce_shop_loop' );

            ?>
            <?
            global $product;

            // Ensure visibility.
            if ( empty( $product ) || ! $product->is_visible() ) {
            return;
            }
            ?>



            <!-- Single Product Area -->
            <div class="col-12 col-sm-6 col-md-12 col-xl-6">
                <?php
                /**
                 * АКЦИЯ loop/sale-flash.php
                 */
                woocommerce_show_product_loop_sale_flash() ?>
                <div class="single-product-wrapper">
                    <!-- Product Image -->

                    <div class="product-img">

                        <a href="<?php
                        /**
                         * ССЫЛКА
                         */
                        the_permalink()?>">
                        <?php
                        /**
                         * ГЛАВНОЕ ИЗОБРАЖЕНИЕ ТОВАРА
                         */
                        $image = wp_get_attachment_image_src( get_post_thumbnail_id( $loop->post->ID ),  [300, 300]  ); ?>
                            <img src="<?php  echo $image[0]; ?>" data-id="<?php echo $loop->post->ID; ?>">
                        </a>

                    </div>

                    <!-- Product Description -->
                    <div class="product-description d-flex align-items-center justify-content-between">
                        <!-- Product Meta Data -->
                        <div class="product-meta-data">
                            <div class="line"></div>
                            <p class="product-price"><?php
                                /**
                                 * ЦЕНА (СО СКИДКОЙ И БЕЗ)
                                 */
                                woocommerce_template_loop_price(); ?></p>
                            <a href="<?php
                            /**
                             * ССЫЛКА
                             */
                            the_permalink()?>">
                                <span class="product_title" data-id="<?php the_ID()?>">
                                <h2><?php
                                    /**
                                     * ТАЙТЛ
                                     */
                                    the_title(); ?></h2>
                                    </span>
                            </a>
                        </div>
                        <!-- Ratings & Cart -->
                        <div class="ratings-cart text-right">
                            <div class="ratings">
<!--                                <i class="fa fa-star" aria-hidden="true"></i>-->
<!--                                <i class="fa fa-star" aria-hidden="true"></i>-->
<!--                                <i class="fa fa-star" aria-hidden="true"></i>-->
<!--                                <i class="fa fa-star" aria-hidden="true"></i>-->
<!--                                <i class="fa fa-star" aria-hidden="true"></i>-->

                                <?php
                                /**
                                 * ЗВЕЗДНЫЙ РЕЙТИНГ
                                 */
                                woocommerce_template_loop_rating() ?>
                            </div>
                            <div class="cart">
<!--                                <a rel="nofollow" href="?add-to-cart=28" data-quantity="1" data-product_id="28" data-product_sku="" class="button product_type_simple add_to_cart_button ajax_add_to_cart added">КУПИТЬ</a>-->
                                <?php
                                /**
                                 * КНОПКА КОРЗИНЫ
                                 *
                                 * woo-functions.php - Добавляем поле количества на страницу архивов и меняем стили кнопки
                                 */

                                //                                do_action('woocommerce_after_shop_loop_item');
                                                                woocommerce_template_loop_add_to_cart()

                                ?>
<!--                                <a href=""  title="ДОБАВИТЬ В КОРЗИНУ"><img src="--><?php //echo get_template_directory_uri() ?><!--/assets/img/core-img/cart.png" alt=""></a>-->
<!--                                <form class="cart" method="post" enctype="multipart/form-data">-->
<!--                                --><?php //do_action( 'woocommerce_before_add_to_cart_button' ); ?>
<!--                                --><?php //if ( ! $product->is_sold_individually() )
//                                    woocommerce_quantity_input( array(
//                                        "min_value" => apply_filters( "woocommerce_quantity_input_min", 1, $product ),
//                                        "max_value" => apply_filters( "woocommerce_quantity_input_max", $product->backorders_allowed() ? ” : $product->get_stock_quantity(), $product )
//                                    ) );
//                                ?>
<!--                                <input type="hidden" name="add-to-cart" value="--><?php //echo esc_attr( $product->id ); ?><!--" />-->
<!--                                <button type="submit" class="add_to_cart_button  button alt">--><?php //echo $product->single_add_to_cart_text(); ?><!--</button>-->
<!--                                --><?php //do_action( 'woocommerce_after_add_to_cart_button' ); ?>
<!--                                </form>-->

<!--                                <a href="cart.html" data-toggle="tooltip" data-placement="left" title="ДОБАВИТЬ В КОРЗИНУ"><img src="--><?php //echo get_template_directory_uri() ?><!--/assets/img/core-img/cart.png" alt=""></a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <?php

//            wc_get_template_part( 'content', 'product' );
        }
    }



    /**
     * Hook: woocommerce_after_shop_loop.
     *
     * @hooked woocommerce_pagination - 10
     */
    do_action( 'woocommerce_after_shop_loop' );
}
else {
    /**
     * Hook: woocommerce_no_products_found.
     *
     * @hooked wc_no_products_found - 10
     */
    do_action( 'woocommerce_no_products_found' );
}
?>





            </div>

            <div class="row">
                <div class="col-12">
                    <!-- Pagination -->
                    <nav aria-label="navigation">
                        <ul class="pagination justify-content-end mt-50">
                            <li class="page-item active"><a class="page-link" href="#">01.</a></li>
                            <li class="page-item"><a class="page-link" href="#">02.</a></li>
                            <li class="page-item"><a class="page-link" href="#">03.</a></li>
                            <li class="page-item"><a class="page-link" href="#">04.</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Main Content Wrapper End ##### -->

<?php

get_footer( 'shop' );
