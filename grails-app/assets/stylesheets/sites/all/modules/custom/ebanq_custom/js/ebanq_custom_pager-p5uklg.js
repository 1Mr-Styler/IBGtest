(function($) {

    /**
     * Add per page select action, add params per page on select change.
     */
    Drupal.behaviors.addPerPageSelectAction = {
        attach: function(context, settings) {
            var pagerSelect = $('.pager-select select', context);
            if (!pagerSelect.length) {
                return;
            }
            var selectField = (settings.select_field === undefined) ? 'per_page' : settings.select_field;
            pagerSelect.change(function() {
                insertParam($(this).val(), selectField);
            });
        }
    };

    /**
     * Insert param in query.
     */
    function insertParam(value, selectField) {
        var key = encodeURI(selectField);
        value = encodeURI(value);
        var kvp = document.location.search.substr(1).split('&');
        var i = kvp.length;
        var param, perPageChanged = false;
        while(i--) {
            param = kvp[i].split('=');
            if (param[0] == key) {
                perPageChanged = true;
                param[1] = value;
                kvp[i] = param.join('=');
                break;
            }
        }
        if(i < 0) {
            kvp[kvp.length] = [key,value].join('=');
            perPageChanged = true;
        }
        // If per_page value was changed then reset page param to 1.
        if (perPageChanged) {
            i = kvp.length;
            while(i--) {
                param = kvp[i].split('=');
                if (param[0] == 'page') {
                    param[1] = 0;
                    kvp[i] = param.join('=');
                    break;
                }
            }
        }
        document.location.search = kvp.join('&');
    }

})(jQuery);
