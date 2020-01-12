<!DOCTYPE html>
<html>
<head>

	<?php wp_head(); ?>
    <title><?php echo wp_get_document_title(); ?></title>
    
</head>
<body id="index" <?php body_class(); ?>>

<!-- Search Wrapper Area Start -->
<div class="search-wrapper section-padding-100">
    <div class="search-close">
        <i class="fa fa-close" aria-hidden="true"></i>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="search-content">
                    <form action="#" method="get">
                        <input type="search" name="s" id="search" placeholder="..." autocomplete="off">
                        <button type="submit"><img src="<?php echo get_template_directory_uri() ?>/assets/img/core-img/search.png" alt=""></button>
                    </form>
                    <div class="search-result">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Search Wrapper Area End -->

<!-- ##### Main Content Wrapper Start ##### -->
<div class="main-content-wrapper d-flex clearfix">

    <!-- Mobile Nav (max width 767px)-->
    <div class="mobile-nav">
        <!-- Navbar Brand -->
        <div class="amado-navbar-brand">
            <a href="/"><img src="<?php echo get_template_directory_uri() ?>/assets/img/core-img/logo.png" alt=""></a>
        </div>
        <!-- Navbar Toggler -->
        <div class="amado-navbar-toggler">
            <span></span><span></span><span></span>
        </div>
    </div>

    <!-- Header Area Start -->
    <header class="header-area clearfix">
        <!-- Close Icon -->
        <div class="nav-close">
            <i class="fa fa-close" aria-hidden="true"></i>
        </div>
        <!-- Logo -->
        <div class="logo">
            <a href="/"><img src="<?php the_field('logo', 9) ?>" alt=""></a>
        </div>
        <!-- Главное меню -->
        <nav class="amado-nav">
            <?php
            $menu_items = wp_get_nav_menu_items('Основное меню');

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
                            <li><a href="<?= $item2->url?>"><?= $item2->title?></a></li><?php  if($i == count($item->subs)): ?></ul><?php endif;?>

                        <?php  endforeach; ?>
                    <?php endif; ?>

                <?php  endforeach; ?>
<!--                <li class="active"><a href="index.html">Главная</a></li>-->
<!--                <li><a href="shop.html">Shop</a></li>-->
<!--                <li><a href="product-details.html">Product</a></li>-->
<!--                <li><a href="cart.html">Cart</a></li>-->
<!--                <li><a href="checkout.html">Checkout</a></li>-->
            </ul>
        </nav>
        <!-- Button Group -->
        <div class="amado-btn-group mt-30 mb-100">
            <a href="javascript:void(0);" class="btn amado-btn mb-15">%АКЦИИ!!!%</a>
            <a href="javascript:void(0);" class="btn amado-btn active">ПОПУЛЯРНЫЕ!!!</a>
        </div>
        <!-- Cart Menu -->
        <div class="cart-fav-search mb-100">
            <a href="/cart" class="cart-customlocation cart-nav"><img src="<?php echo get_template_directory_uri() ?>/assets/img/core-img/cart.png" alt=""> Корзина <span>
                    <br>

                    <?php
                    global $woocommerce; ?>
                    В КОРЗИНЕ (<?php echo $woocommerce->cart->cart_contents_count; ?>) ТОВАРОВ
                  НА СУММУ <?php  echo $woocommerce->cart->get_cart_total(); ?>
                </span></a>
            <a href="/populyarnye-tovary/" class="fav-nav"><img src="<?php echo get_template_directory_uri() ?>/assets/img/core-img/favorites.png" alt=""> Популярные товары</a>
            <a href="#" class="search-nav"><img src="<?php echo get_template_directory_uri() ?>/assets/img/core-img/search.png" alt=""> Поиск</a>
        </div>
        <!-- Social Button -->
<!--        <div class="social-info d-flex justify-content-between">-->
<!--            <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>-->
<!--            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>-->
<!--            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>-->
<!--            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>-->
<!--        </div>-->
    </header>
    <!-- Header Area End -->



