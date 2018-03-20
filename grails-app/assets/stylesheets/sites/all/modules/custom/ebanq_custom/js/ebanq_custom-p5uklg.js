(function($) {

    /**
     * Align errors popovers on form.
     */
    Drupal.behaviors.showFormTooltips = {
        attach: function(context, settings) {
            var errorTooltips = $('.messages.error.messages-inline', context);
            if (!errorTooltips.length) {
                return;
            }
            // After fonts loading we align form errors blocks.
            $(window).load(function() {
                errorTooltips.each(function() {
                    var errorTooltip = $(this);
                    var prev = errorTooltip.prev();
                    var input = prev.find('input[type="text"], select');
                    var inputHeight = input.length ? input.height() : prev.find('label').height();
                    var errorHeight = errorTooltip.outerHeight();

                    var prevHeight = prev.height();
                    var prevMarginTop = parseInt(prev.css('margin-top'));
                    // If input height is less than error block height put additional space.
                    if (inputHeight < errorHeight) {
                        var diff = (errorHeight - inputHeight) / 2;
                        prev.height(prevHeight + diff);
                        prevMarginTop = diff + prevMarginTop;
                        prev.css('margin-top', prevMarginTop);
                        prev.css('padding-bottom', parseInt(prev.css('padding-bottom')) + diff);
                    }

                    var newPosition = prev.position().top + prevMarginTop + (- 1) * Math.abs((errorHeight - inputHeight) / 2);
                    errorTooltip.css('top',  newPosition);
                });
            });
        }
    };

    /**
     * Replace document type select with custom select element.
     */
    Drupal.behaviors.replaceDocumentType = {
        attach: function(context, settings) {
            var documentFields = $('.field-name-field-user-document-type, .field-name-field--user-bo-document-type', context);
            if (!documentFields.length) {
                return;
            }

            documentFields.each(function() {
                var documentField = $(this);
                var oldSelect = documentField.find('select');
                // Do not init custom selects if it is field output.
                if (!oldSelect.length) {
                    return true;
                }
                var select = $(getEbanqSelectContent(oldSelect.find('option')));

                documentField.find('.form-item').hide();
                documentField.css('visibility', 'visible');
                documentField.append(select);

                var displayedValue = select.find('.ebanq-displayed-value');
                var values = select.find('.ebanq-select-values');
                var valuesHeight = values.outerHeight();
                values.css({
                    display: 'none',
                    visibility: 'visible',
                    top: (displayedValue.outerHeight() - valuesHeight) / 2
                });
                displayedValue.click(function() {
                    values.fadeIn(100);
                });
                values.find('.ebanq-select-value').click(function() {
                    var value = $(this);
                    values.fadeOut(100);
                    oldSelect.find('option').removeAttr('selected');
                    oldSelect.find('option[value="' + value.attr('data-value') + '"]').attr('selected', 'selected');
                    displayedValue.find('.displayed-value-inner').text(value.text());
                });
            });

            $(document).click(function(e) {
                if ($(e.target).closest('.ebanq-select').length) {
                    return;
                }
                $('.ebanq-select .ebanq-select-values').fadeOut(100);
            });
        }
    };

    /**
     * Put placeholders from field labels or change select none to label value.
     */
    Drupal.behaviors.putPlaceholdersInsteadTitles = {
        attach: function(context, settings) {
            var isRegister = $('.page-user-register', context).length;
            var isProfileEdit = $('.page-user-edit', context).length;
            if (!isRegister && !isProfileEdit) {
                return;
            }

            $(window).resize(function() {
                var windowWidth = $(window).width();
                if ((isRegister && (windowWidth > 910 || windowWidth < 700))
                || (isProfileEdit && (windowWidth > 480))) {
                    return;
                }
                putPlaceholdersInsteadTitles();
            });

            var windowWidth = $(window).width();
            if ((isRegister && windowWidth > 910) || (isProfileEdit && windowWidth > 480)) {
                return;
            }
            putPlaceholdersInsteadTitles();
        }
    };

    /**
     * Add actions on rows where it needed.
     */
    Drupal.behaviors.addRowActions = {
        attach: function(context, settings) {
            var rowsWithAction = $('[data-row-action]', context);
            if (!rowsWithAction.length) {
                return;
            }
            rowsWithAction.click(function(e) {
                if ($(e.target).closest('a').length) {
                    return;
                }
                window.location.href = $(this).attr('data-row-action');
            });
        }
    };

    /**
     * Init big selects on big screens.
     */
    Drupal.behaviors.initBigSelects = {
        attach: function(context, settings) {
            var selects = $('.big-custom-select', context);
            if (!selects.length ||  $(window).width() <= 480) {
                return;
            }
            selects.each(function() {
                var select = $(this);
                if (select.hasClass('big-select-processed')) {
                    return true;
                }
                select.addClass('big-select-processed');
                var selectWrapper = select.parent();
                selectWrapper.addClass('big-select-wrapper');
                var nextDiv = selectWrapper.next();
                var infoWrapper = nextDiv.hasClass('select-info-wrapper') ? nextDiv : null;

                var bigSelect = $(getBigSelectContent(select));
                var activeValue = bigSelect.find('.dropdown-toggle');
                if (select.attr('disabled')) {
                    bigSelect.addClass('disabled');
                    activeValue.addClass('disabled');
                }
                if (select.hasClass('error')) {
                    bigSelect.addClass('error');
                }
                selectWrapper.append(bigSelect);
                select.hide();

                bigSelect.find('li a').click(function(e) {
                    var link = $(this);
                    select.val(link.attr('data-id'));
                    select.change();

                    var accountNumber = link.find('.account-number');
                    activeValue.text(accountNumber.length ? accountNumber.text() : link.text());
                });

                selectWrapper.find('label').click(function(e) {
                    e.preventDefault();
                    e.stopPropagation();
                    activeValue.dropdown('toggle');
                });

                if (infoWrapper !== null) {
                    selectWrapper.append(infoWrapper);
                    infoWrapper.click(function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        activeValue.dropdown('toggle');
                    });
                }
            });
        }
    };

    /**
     * Add keyboard to tan fields.
     */
    Drupal.behaviors.addTanKeybordOnInput = {
        attach: function(context, settings) {
            var tanItems = $('.form-item-tan', context);
            if (!tanItems.length) {
                return;
            }
            tanItems.each(function() {
                var tanItem = $(this);
                var input = tanItem.find('input');

                // Don't open keyboard when input disabled.
                if (input.attr('disabled')) {
                    return true;
                }

                // Not allow user insert values from real keyboard.
                input.keydown(function() {
                    return false;
                });

                var keyboardWrapper = $(getTanKeyboardContent());
                var toggler = keyboardWrapper.find('.tan-keyboard-toggler');
                var keyboard = keyboardWrapper.find('.tan-keyboard');
                tanItem.append(keyboardWrapper);

                input.click(function() {
                    keyboardWrapper.toggleClass('opened');
                });
                toggler.click(function() {
                    keyboardWrapper.toggleClass('opened');
                    input.focus();
                });
                // Tan keyboard keys events.
                keyboard.find('.tan-keyboard-number').click(function() {
                    input.val(input.val() + $(this).text());
                });
                keyboard.find('.tan-keyboard-delete').click(function() {
                    input.val(input.val().substring(0, input.val().length - 1));
                });
            });

            $(document).click(function(e) {
                if ($(e.target).closest('.form-item-tan').length) {
                    return;
                }
                $(this).find('.tan-keyboard-wrapper').removeClass('opened');
            });
        }
    };

    /**
     * Trigger form submit with load button when template list field change value.
     */
    Drupal.behaviors.attachLoadTemplateTigger = {
        attach: function(context, settings) {
            var templateList = $('#edit-templates-list', context);
            if (!templateList.length) {
                return;
            }
            var loadButton = $('#edit-load-template');
            templateList.change(function() {
                if ($(this).val() == '_none') {
                    return;
                }
                loadButton.click();
            });
        }
    };

    /**
     * Get tan keyboard.
     */
    function getTanKeyboardContent() {
        var numberBlocks = '', i;
        for (i = 0; i < 10; i++) {
            numberBlocks += '<div class="tan-keyboard-number">' + i + '</div>';
        }
        return '' +
            '<div class="tan-keyboard-wrapper">' +
                '<div class="tan-keyboard-toggler">' +
                    '<div class="tan-keyboard-icon"></div>' +
                    '<div class="tan-arrow"></div>' +
                '</div>' +
                '<div class="tan-keyboard">' +
                    '<div class="tan-keyboard-numbers">' + numberBlocks + '</div>' +
                    '<div class="tan-keyboard-delete"></div>' +
                '</div>' +
            '</div>';
    }

    function getDropdownRow(value, inner) {
        return '' +
        '<li role="presentation">' +
            '<a role="menuitem" data-id="' + value + '">' + inner + '</a>' +
        '</li>';
    }

    function getAvailableDropdownRow(details) {
        if (details.available === undefined) {
            return '';
        }
        return '' +
        '<div class="account-number">' + details.title + '</div>' +
        '<div class="account-details">' +
            '<div class="account-currency">' + details.currency + '</div>' +
            '<div class="account-available">' + details.available + '</div>' +
        '</div>';
    }

    /**
     * Get big select content that change simple select.
     */
    function getBigSelectContent(select) {
        var optionsString = '';
        var selectedValue = '';
        if (select.attr('data-options')) {
            var options = JSON.parse(select.attr('data-options'));
            $.each(options, function(nid, details) {
                var inner = getAvailableDropdownRow(details);
                optionsString += getDropdownRow(nid, inner);
                if (details.selected) {
                    selectedValue = details.title;
                }
            });
        }
        else {
            select.find('option').each(function() {
                var option = $(this);
                optionsString += getDropdownRow(option.val(), option.text(), option.attr('selected'));
                if (option.attr('selected')) {
                    selectedValue = option.text();
                }
            });
        }

        return '' +
            '<div class="dropdown big-select">' +
                '<a data-toggle="dropdown" class="btn btn-default-themes dropdown-toggle" href="#">' + selectedValue + '</a>' +
                '<ul class="dropdown-menu" role="select">'
                    + optionsString +
                '</ul>' +
            '</div>';
    }

    /**
     * Put registration placeholders from field labels or change select none to label value.
     */
    function putPlaceholdersInsteadTitles() {
        $('.form-item').each(function() {
            var item = $(this);
            var label = item.find('label').text();
            var input = item.find('input');
            var select = item.find('select');
            if (input.length) {
                input.attr('placeholder', label);
            }
            else if (select.length) {
                select.find('option[value="_none"]').text(label);
            }
        });
    }

    /**
     * Get custom select content.
     */
    function getEbanqSelectContent(options) {
        var optionsDiv = '<div class="ebanq-select-values">';
        var selectedText = '';
        options.each(function() {
            var option = $(this);
            if (option.attr('selected')) {
                selectedText = option.text();
            }
            optionsDiv += '<div class="ebanq-select-value" data-value="' + option.attr('value') + '">' + option.text() + '</div>';
        });
        optionsDiv += '</div>';

        if (selectedText == '') {
            selectedText = ' - None -';
            options.filter('[value="_none"]').attr('selected', 'selected');
        }
        return '' +
        '<div class="ebanq-select">' +
            '<div class="ebanq-displayed-value"><div class="displayed-value-inner">' + selectedText + '</div></div>' +
            optionsDiv +
        '</div>'
    }

})(jQuery);