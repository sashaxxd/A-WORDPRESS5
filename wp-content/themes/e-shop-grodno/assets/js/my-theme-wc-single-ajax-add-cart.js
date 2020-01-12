// function myThemeWc_SingleProductAddToCart(thisObj) {
//     if (typeof($) === 'undefined') {
//         var $ = jQuery.noConflict();
//     }
//
//     var thisForm = thisObj.closest('form');
//     var button = thisForm.find('.button');
//     var formUrl = thisForm.attr('action');
//     var formMethod = thisForm.attr('method');
//     if (typeof(formMethod) === 'undefined' || formMethod == '') {
//         formMethod = 'POST';
//     }
//     var formData = new FormData(thisForm[0]);
//     formData.append(button.attr('name'), button.val());
//
//     button.removeClass('added');
//     button.addClass('loading');
//
//     myThemeWc_SingleProductCartAjaxTask = $.ajax({
//         url: formUrl,
//         method: formMethod,
//         data: formData,
//         cache: false,
//         contentType: false,
//         processData: false
//     })
//         .done(function(data, textStatus, jqXHR) {
//             $(document.body).trigger('wc_fragment_refresh');
//
//             $.when(myThemeWc_SingleProductCartAjaxTask)
//                 .then(myThemeWc_SingleProductUpdateCartWidget)
//                 .done(function() {
//                     button.removeClass('loading');
//                     button.addClass('added');
//                     setTimeout(function() {
//                         button.removeClass('added');
//                     }, 2000);
//                 });
//         })
//         .fail(function(jqXHR, textStatus, errorThrown) {
//             button.removeClass('loading');
//         })
//         .always(function(jqXHR, textStatus, errorThrown) {
//             $('.cart').off('submit');
//             myThemeWc_SingleProductListenAddToCart();
//         });
// }// myThemeWc_SingleProductAddToCart
//
//
// function myThemeWc_SingleProductListenAddToCart() {
//     if (typeof($) === 'undefined') {
//         var $ = jQuery.noConflict();
//     }
//
//     $('.cart').on('submit', function(e) {
//         e.preventDefault();
//         myThemeWc_SingleProductAddToCart($(this));
//     });
// }// myThemeWc_SingleProductListenAddToCart
//
//
// /**
//  * Update WooCommerce cart widget by called the trigger and listen to the event.
//  *
//  * @returns {undefined}
//  */
// function myThemeWc_SingleProductUpdateCartWidget() {
//     if (typeof($) === 'undefined') {
//         var $ = jQuery.noConflict();
//     }
//
//     var deferred = $.Deferred();
//
//     $(document.body).on('wc_fragments_refreshed', function() {
//         deferred.resolve();
//     });
//
//     return deferred.promise();
// }// myThemeWc_SingleProductUpdateCartWidget
//
//
// var myThemeWc_SingleProductCartAjaxTask;
//
//
// // on page load --------------------------------------------
// jQuery(function($) {
//     $(document.body).on('wc_fragments_refreshed', function() {
//         console.log('woocommerce event fired: wc_fragments_refreshed');
//     });
//
//     myThemeWc_SingleProductListenAddToCart();
// });