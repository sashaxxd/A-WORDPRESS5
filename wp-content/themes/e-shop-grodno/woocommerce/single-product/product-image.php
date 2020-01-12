<?php
/**
 * Single Product Image
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/product-image.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.5.1
 */

defined( 'ABSPATH' ) || exit;

// Note: `wc_get_gallery_image_html` was added in WC 3.3.2 and did not exist prior. This check protects against theme overrides being used on older versions of WC.
if ( ! function_exists( 'wc_get_gallery_image_html' ) ) {
	return;
}

global $product;

?>


<div class="single_product_thumb">
    <?php
    $image = wp_get_attachment_image_src( get_post_thumbnail_id( $loop->post->ID ), 'single-post-thumbnail' );

    $attachment_ids = $product->get_gallery_image_ids();

    ?>
<!--    Ниже вывод фото и галереи фото пока не нужно -->
<!--    <img src="--><?php // echo $image[0]; ?><!--" data-id="--><?php //echo $loop->post->ID; ?><!--"> -->
    <div id="product_details_slider" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <?php $i =-1; foreach ($attachment_ids as $gallery_photo): $i ++?>

            <li class="active" data-target="#product_details_slider" data-slide-to="<?= $i ?>" style="background-image: url(<?php   echo wp_get_attachment_image_src($gallery_photo, 'large')[0];
                ?>);">
            </li>
            <?php endforeach; ?>


        </ol>
        <div class="carousel-inner">
            <?php $i =0; foreach ($attachment_ids as $gallery_photo): $i ++?>
            <div class="carousel-item
            <?php if( $i == 1): ?>
             active
             <?php endif; ?>
">
                <a class="gallery_img" href="<?php   echo wp_get_attachment_image_src($gallery_photo, [300, 300])[0];
                ?>">
                    <img class="d-block w-100" src="<?php echo  wp_get_attachment_image_src($gallery_photo, [300, 300])[0];
                    ?>" alt="First slide">
                </a>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>
