jQuery(function ($) {
    $('.search-content input[name="s"]').on('keyup', function () {
        var search = $('.search-content input[name="s"]').val();
        // console.log(search);

        if (search.length < 4) {
            return false;
        }
        var data = {
            s:search,
            action: 'search_action',
            nonce : search_form.nonce

        };

        $.ajax({
            url: search_form.url,
            data :data,
            type:'POST',
            dataType:'json',
            beforeSend:function(xhr){
            },
            success:function(data){
                $('.search-content .search-result').html(data.out);

            }
        });

    });
});