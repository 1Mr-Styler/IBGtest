(function($) {

    function ajaxStartBlocker() {
        $(this).find('input[type="submit"]').attr('disabled', 'disabled');
    }

    function ajaxCompleteUnblocking() {
        $(this).find('input[type="submit"]').removeAttr('disabled');
    }

    $(document).ready(function() {
        $('form').ajaxStart(ajaxStartBlocker).ajaxComplete(ajaxCompleteUnblocking);
    });

})(jQuery);
