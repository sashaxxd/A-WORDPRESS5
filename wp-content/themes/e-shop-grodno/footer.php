<!-- ##### Footer Area Start ##### -->

<footer class="footer_area clearfix" style="width: 100%;">
    <div class="container" style="margin: auto; width: 100%;">
        <div class="row align-items-center">
            <!-- Single Widget Area -->
            <div class="col-12 col-lg-4">
                <div class="single_widget_area">
                    <!-- Logo -->
                    <div class="footer-logo mr-50">
                        <a href="index.html"><img src="<?php echo get_template_directory_uri() ?>/assets/img/core-img/logo2.png" alt=""></a>
                    </div>
                    <!-- Copywrite Text -->
                    <p class="copywrite"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>
            </div>
            <!-- Single Widget Area -->
            <div class="col-12 col-lg-8">
                <div class="single_widget_area">
                    <!-- Footer Menu -->
                    <div class="footer_menu">
                        <nav class="navbar navbar-expand-lg justify-content-end">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#footerNavContent" aria-controls="footerNavContent" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                            <div class="collapse navbar-collapse" id="footerNavContent">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="index.html">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="shop.html">Shop</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="product-details.html">Product</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="cart.html">Cart</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="checkout.html">Checkout</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>



</footer>

<!-- МОДАЛКА ТОВАР В КОРЗИНЕ -->
<div id="modal_window" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <hr id="modal_line">
                <div id="wb_mod_cont">
                    <div id="mod_cont">
                        <div class="row">
                            <div class="col-mod-1">
                                <div id="wb_modal_title">
                                    <span id="wb_uid0">ТОВАР ДОБАВЛЕН В КОРЗИНУ</span>
                                </div>
                                <div id="wb_modal_product">
                                    <span id="wb_uid1"><br>Название товара</span>
                                </div>
                                <input type="button" id="modal_shopping" onclick="$('#modal_window').modal('hide');return false;" name="" value="ПРОДОЛЖИТЬ ПОКУПКИ" class="button_m">
                                <a href="/cart">
                                <input type="button" id="modal_cart"   name="" value="ПЕРЕЙТИ В КОРЗИНУ" class="button_m">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- ##### Footer Area End ##### -->


<!-- end #footer -->
<?php wp_footer(); ?>



</body>

</html>