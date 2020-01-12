$(document).ready(function($) {


    $('.add_to_cart_button').click(function () {
       var id = $(this).attr('href')
       var but_id = id.replace(/[^0-9]/gim,'')
        var product =  $('[data-id='+but_id +']').text();

        // alert(product)
        $('#wb_uid1').html(product)
        $("#modal_window").modal('show');



    });


});


