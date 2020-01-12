/**
 * Сообщения флеш
 */
$(document).ready(function($) {
$("#mess_message_close").on('click', function () {
    $("#mess_msg-cntain").hide();
});

    $(document).on("click", '#message_message_close_error', function () {




        $(this).parent().parent().parent().parent().parent().parent().parent().hide();
});
$('.cart-btn').on('click', function () {


});
});

// $('.modal_button').click(function (){
//
//     if ($(".error-modal").find('*').length == 0) {
//         if(!$('div').is("#appen")){
//             $(".close").after('<div id="appen"></div>');
//         }
//         $('#site_uid25').hide();
//     }
// });

