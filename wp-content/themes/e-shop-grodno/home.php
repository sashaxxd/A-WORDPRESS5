<?php get_header(); ?>
<?php
/*
Template Name: Главная
Template Post Type: post, page, product
*/
?>
<?php
/**
* АРГУМЕНТЫ ДЛЯ ТОВАРОВ С АКЦИЕЙ
*/
$args_sale = array(
    'post_type'      => 'product',
    'meta_query'     => array(
        'relation' => 'OR',
        array( // Simple products type
            'key'           => '_sale_price',
            'value'         => 0,
            'compare'       => '>',
            'type'          => 'numeric'
        ),
        array( // Variable products type
            'key'           => '_min_variation_sale_price',
            'value'         => 0,
            'compare'       => '>',
            'type'          => 'numeric'
        )
    )
);
/**
 * ЗАПРОС В БАЗУ ДЛЯ ПОЛУЧЕНИЯ ТОВАРОВ С АКЦИЕЙ
 */
$sales = new WP_Query( $args_sale );
//Debug($sales);




/**
 * АРГУМЕНТЫ ДЛЯ ПОПУЛЯРНЫХ ТОВАРОВ
 */
$args_popular = array(
    'post_type'      => 'product',
    'meta_query'     => array(
        'relation' => 'OR',
        array( // Simple products type
            'key'           => 'populyarnyj',
            'value'         => 0,
            'compare'       => '>',
            'type'          => 'numeric'
        ),
        array( // Variable products type
            'key'           => '_min_variation_sale_price',
            'value'         => 0,
            'compare'       => '>',
            'type'          => 'numeric'
        )
    )
);
/**
 * ЗАПРОС В БАЗУ ДЛЯ ПОЛУЧЕНИЯ ПОПУЛЯРНЫХ ТОВАРОВ
 */
$popular = new WP_Query( $args_popular);
//Debug($sales);
?>
    <!-- Product Catagories Area Start -->

    <div class="products-catagories-area clearfix">
        <h1>АКЦИИ</h1>
        <div class="amado-pro-catagory clearfix">

            <!-- Single Catagory -->

            <?php   if ( $sales->have_posts() ):?>
                <?php while ( $sales->have_posts() ) : $sales->the_post(); ?>
            <div class="single-products-catagory clearfix">
                <a href="<?php
                /**
                 * ССЫЛКА
                 */
                the_permalink()?>">
                    <?php
                    $image = wp_get_attachment_image_src( get_post_thumbnail_id( $loop->post->ID ), [300, 300] );
                    ?>

                    <img src="<?php  echo $image[0]; ?>" data-id="<?php echo $loop->post->ID; ?>">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p><?php  woocommerce_template_single_price()?></p>
                        <h4><?php the_title() ?></h4>
                    </div>
                </a>
            </div>
                    <?php endwhile; ?>
             <?php endif; ?>

        </div>



        <h1>ПОПУЛЯРНЫЕ ТОВАРЫ</h1>
        <div class="amado-pro-catagory clearfix">

            <!-- Single Catagory -->

            <?php   if ( $popular->have_posts() ):?>
                <?php while ( $popular->have_posts() ) : $popular->the_post(); ?>
                    <div class="single-products-catagory clearfix">
                        <a href="<?php
                        /**
                         * ССЫЛКА
                         */
                        the_permalink()?>">
                            <?php
                            $image = wp_get_attachment_image_src( get_post_thumbnail_id( $loop->post->ID ), [300, 300]  );
                            ?>

                            <img src="<?php  echo $image[0]; ?>" data-id="<?php echo $loop->post->ID; ?>">
                            <!-- Hover Content -->
                            <div class="hover-content">
                                <div class="line"></div>
                                <p><?php  woocommerce_template_single_price()?></p>
                                <h4><?php the_title() ?></h4>
                            </div>
                        </a>
                    </div>
                <?php endwhile; ?>
            <?php endif; ?>

        </div>
    </div>




    <!-- Product Catagories Area End -->
    </div>
    <!-- ##### Main Content Wrapper End ##### -->


    <!-- ##### Newsletter Area Start ##### -->
    <section class="newsletter-area section-padding-100-0">
        <div class="container">
            <div class="row align-items-center">
                <!-- Newsletter Text -->
                <div class="col-12 col-lg-6 col-xl-7">
                    <div class="newsletter-text mb-100">
                        <h2>Subscribe for a <span>25% Discount</span></h2>
                        <p>Nulla ac convallis lorem, eget euismod nisl. Donec in libero sit amet mi vulputate consectetur. Donec auctor interdum purus, ac finibus massa bibendum nec.</p>
                    </div>
                </div>
                <!-- Newsletter Form -->
                <div class="col-12 col-lg-6 col-xl-5">
                    <div class="newsletter-form mb-100">
                        <form action="#" method="post">
                            <input type="email" name="email" class="nl-email" placeholder="Your E-mail">
                            <input type="submit" value="Subscribe">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>



<?php get_footer(); ?>