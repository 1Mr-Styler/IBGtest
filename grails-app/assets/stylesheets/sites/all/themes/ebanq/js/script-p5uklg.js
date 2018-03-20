(function ($) {

    $(document).ready(function () {

        $('a.print').click(function(e) {
            window.open($(this).attr('href'), 'PrintWindow', 'fullscreen=yes,scrollbars=yes,menubar=no,resizable=no,toolbar=no');
            e.preventDefault();
        });

        var $toggle = $('.box-select .dropdown-toggle');
        var $hiddenSelect = $('#selectValue');
        // Change account number input value or trigger submit for small screens.
        $('.box-select .dropdown-menu li').click(function () {
            var link = $(this).find('a');
            var linkTitle = link.find('.account-number');
            var newValue = (linkTitle.length) ? linkTitle.text() : link.text();
            $toggle.text($.trim(newValue));
            $hiddenSelect.val(link.attr('data-id'));

            $('#edit-search-field').val('');
            $('#edit-date-from-datepicker-popup-0').val('');
            $('#edit-date-to-datepicker-popup-0').val('');
            $('#user-accounts').submit();
        });

        $('.close-input').each(function() {
            var parent = $(this).parent();
            parent.css('position', 'relative');
            parent.append('<a class="icon-cross close-search" href="#"></a>');
        });

        // Click handler for transition id field close icon.
        $('.close-search').click(function () {
            $(this).parent().find('input').val('');
        });

        // Click handler for dropdown items, insert text of clicked link to the selector before link action is go.
        $('.small-screen-tabs li').click(function (e) {
            var li = $(this);
            li.closest('.small-screen-tabs').children().first().text(li.find('a').text());
        });

        // Click handler for button that opens menu on small screens.
        $('.button-menu').click(function () {
            var $body = $('body');
            if ($body.prop('scrollHeight') > $(window).height()) {
                $body.height('auto');
            }
            else {
                $body.height('100%');
            }
            var $nav = $('.nav');
            $nav.fadeToggle(100);
            $('.menu-overflow').fadeToggle(100);
            $(this).toggleClass('opened-menu');
        });

        // Resize handler where remove nav-opener-button effect.
        $(window).resize(function () {
            if ($(window).width() <= 480) {
                return;
            }
            $('.nav').removeAttr('style');
            $('.menu-overflow').hide();
            $('.button-menu').removeClass('opened-menu');
        });

        // Datapicker click handler, it is used for open datepicker when click on inner icons.
        $('.datepicker').click(function () {
            var input = $(this).find('input');
            var e = jQuery.Event('focus');
            e.data = {
                func: 'datepicker',
                settings: Drupal.settings.datePopup[input.attr('id')]
            };
            input.trigger(e);
            input.datepicker('show');
        });

        $('[data-toggle="tooltip"]').tooltip();

        var customerContainer = $('#edit-customer-inf-container');
        var interBankContainer = $('#edit-intermediary-bank-container');
        if (customerContainer.length && interBankContainer.length) {
            interBankContainerPositioning(customerContainer, interBankContainer);
            $(window).resize(function() {
                interBankContainerPositioning(customerContainer, interBankContainer);
            });
        }

        // Fix .form-required span appended twice if we have ajax callback and #states.
        $(document).bind('state:required', function(e) {
            if (!e.trigger || !e.value) {
                return;
            }
            var label = $(e.target).closest('.form-item, .form-wrapper').find('label');
            var spans = label.find('.form-required');
            if (spans.length > 1) {
                spans.first().remove();
            }
        });

        $(document).on('select2-selecting', function(e) {
            var input = $(e.target).parent().find('input.use-select-2');
            // If value not changes do nothing.
            if (e.choice.id == input.val()) {
                return;
            }
            input.val(e.choice.id);
            input.attr('value',  e.choice.id);
            input.change();
        });

        var cardInput = $('.page-node-add-card .form-item-title input');
        cardInput.mask('?9999 9999 9999 9999');
        cardInput.attr('type', 'tel');
    });

    /**
     * Change checkboxes to custom styled.
     */
    Drupal.behaviors.changeCheckboxes = {
        attach: function(context, settings) {
            var checkboxWrappers = $('.form-type-checkbox', context);
            if (!checkboxWrappers.length) {
                return;
            }
            checkboxWrappers.each(function() {
                var checkboxWrapper = $(this);
                var checkbox = checkboxWrapper.find('input');
                if (checkbox.hasClass('processed-checkbox')) {
                    return;
                }
                checkbox.addClass('processed-checkbox');
                var iphoneType = checkbox.hasClass('iphone-checkbox');
                var newCheckbox = !iphoneType ? $('<div class="custom-checkbox"></div>') : $('<div class="iphone-checkbox"><div class="handler"></div></div>');

                if (checkbox.is(':checked')) {
                    newCheckbox.addClass('checked');
                }
                if (checkbox.attr('disabled')) {
                    newCheckbox.addClass('disabled');
                }

                newCheckbox.click(function() {
                    if (checkbox.attr('disabled')) {
                        return false;
                    }
                    newCheckbox.toggleClass('checked');
                    checkbox.click();
                });
                // Change view when checkbox value is changing.
                checkbox.change(function() {
                    !checkbox.is(':checked') ? newCheckbox.removeClass('checked') : newCheckbox.addClass('checked');
                });

                checkbox.hide();
                if (iphoneType) {
                    checkboxWrapper.append(newCheckbox);
                }
                else {
                    checkboxWrapper.prepend(newCheckbox);
                }
            });
        }
    };

    /**
     * Change select elements to custom.
     */
    Drupal.behaviors.changeStandardSelect = {
        attach: function(context, settings) {
            var selectWrappers = $('.form-type-select', context);
            if (!selectWrappers.length) {
                return;
            }
            selectWrappers.each(function() {
                var selectWrapper = $(this);
                if (selectWrapper.hasClass('big-select-wrapper') || selectWrapper.hasClass('select2')) {
                    return;
                }
                var select = selectWrapper.find('select');
                if (select.hasClass('use-select-2')) {
                    return;
                }
                select.selectmenu({appendTo: selectWrapper});
                var selectMenu = selectWrapper.find('.ui-selectmenu');
                selectMenu.addClass('form-control');

                var dropdown = selectWrapper.find('.ui-selectmenu-menu');
                selectWrapper.children('span').append(dropdown);
                var ul = dropdown.find('.ui-widget-content');
                var lis = ul.find('li');

                var all_details = select.attr('data-options');
                if (all_details) {
                    all_details = JSON.parse(all_details);
                    lis.each(function() {
                        var li = $(this);
                        var option = select.find('option').eq(li.data('index'));
                        if (option.val() == 0) {
                            li.remove();
                            return true;
                        }
                        var inner = getAvailableDropdownRow(all_details[option.val()]);
                        li.find('a').html(inner);
                    });
                }

                var wrapperWidth = selectMenu.outerWidth();
                wrapperWidth = (wrapperWidth < 73) ? 73 : wrapperWidth;
                dropdown.width(wrapperWidth);
                ul.width(wrapperWidth);
                lis.width(wrapperWidth);

                ul.width(selectMenu.outerWidth());
                select.on('selectmenuchange', function(event, ui) {
                    wrapperWidth = selectMenu.outerWidth();
                    dropdown.width(wrapperWidth);
                    ul.width(wrapperWidth);
                    lis.width(wrapperWidth);
                });
            });
        }
    };

    if (Drupal.select2functions !== undefined) {
        /**
         * Function that set select2 start value.
         */
        Drupal.select2functions.initSection = function (element, callback) {
            var data = {
                id: element.attr('data-select2-id'),
                text: element.attr('data-select2-text')
            };
            callback(data);
        };
    }

    function getAvailableDropdownRow(details) {
        return '' +
        '<div class="account-number">' + details.title + '</div>' +
        '<div class="account-details">' +
            '<div class="account-currency">' + details.currency + '</div>' +
            '<div class="account-available">' + details.available + '</div>' +
        '</div>';
    }

    /**
     * Align vertically intermediary bank container on owt form page.
     */
    function interBankContainerPositioning(customerContainer, interBankContainer) {
        if ($(window).width() <= 1220) {
            return;
        }
        var newTop = customerContainer.position().top + customerContainer.outerHeight();
        interBankContainer.css('top', newTop);
    }

    /**
     * Open select emulation.
     */
    var openSelect = function (selector) {
        var element = selector[0], worked = false;
        if (document.createEvent) { // all browsers
            var e = document.createEvent("MouseEvents");
            e.initMouseEvent("mousedown", true, true, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);
            worked = element.dispatchEvent(e);
        } else if (element.fireEvent) { // ie
            worked = element.fireEvent("onmousedown");
        }
        console.log(1);
        if (!worked) { // unknown browser / error
            alert("It didn't worked in your browser.");
        }
        return worked;
    }

})(jQuery);
