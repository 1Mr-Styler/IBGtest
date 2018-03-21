<%--
  Created by IntelliJ IDEA.
  User: styl3r
  Date: 3/20/18
  Time: 11:15 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="lg"/>
    <title>Interbank Transfer</title>
</head>

<body class="page-transfer page-transfer-tbu section-transfer">
<div class="content">
    <h1 class="page__title title" id="page-title">Transfer Between Users</h1>

    <div class="clearfix"></div>

    <div class="clearfix"></div>

    <g:if test="${flash.message}">
        <div class="messages--${flash.message} messages ${flash.message}">
            <h2 class="element-invisible">${(flash.message as String).capitalize()} message</h2>
            <ul class="messages__list">
                <g:each in="${jerrors}" var="jerror">
                    <li class="messages__item">${jerror}</li>
                </g:each>
            </ul>
        </div>
    </g:if>
    <form action="${createLink(controller: 'transfer', action: 'processibt')}" method="post" id="ebanq-transfer-transfer-between-users-form"
          accept-charset="UTF-8">
        <div>
            <div id="edit-template-list-wrapper" class="form-wrapper">
                <div class="form-item form-type-select form-item-templates-list">
                    <select id="edit-templates-list" name="templates_list" class="form-select">
                        <option value="_none">Choose Template</option>
                    </select>
                </div>
                <input class="btn btn-success form-submit" type="submit" id="edit-load-template" name="load"
                       value="Load"/><input class="btn btn-success form-submit" type="submit"
                                            id="edit-delete-template" name="delete" value=""/></div>

            <div id="debit-from-wrapper" class="form-wrapper">
                <div class="form-item form-type-select form-item-debit-from">
                    <label for="edit-debit-from">Debit from <span class="form-required"
                                                                  title="This field is required.">*</span></label>
                    <select class="big-custom-select form-select required"

                            id="edit-debit-from" name="debit_from">
                        <option value="0" selected="selected">Select account</option>
                        <g:each in="${accounts}" var="account">
                            <option value="${account.number}">${account.number}:
                                ${formatNumber(number: account.available, type: 'currency', currencyCode: account.currency.name())}</option>
                        </g:each>
                    </select>
                </div>

                <div id="debit-account-info-wrapper" class="select-info-wrapper"></div>
            </div>
            <fieldset class="form-wrapper" id="edit-credit-to">
                <legend><span class="fieldset-legend">Credit to</span></legend>

                <div class="fieldset-wrapper">
                    <div class="form-item form-type-textfield form-item-account">
                        <label for="edit-account">Account <span class="form-required"
                                                                title="This field is required.">*</span></label>
                        <input required class="form-control form-text required" type="text" id="edit-account"
                               name="account" value="" size="60" maxlength="128"/>
                    </div>
                </div>
            </fieldset>

            <div class="transfer-form-title">Transfer details</div>

            <div class="form-item form-type-textfield form-item-amount-to-transfer">
                <label for="edit-amount-to-transfer">Amount to transfer <span class="form-required"
                                                                              title="This field is required.">*</span>
                </label>
                <input class="form-control form-text required" type="text" id="edit-amount-to-transfer"
                       name="amount_to_transfer" value="" size="60" maxlength="128"/>
            </div>

            <div id="fee-value-wrapper"></div>

            <div class="form-item form-type-textarea form-item-description">
                <label for="edit-description">Description</label>

                <div class="form-textarea-wrapper"><textarea class="form-control form-textarea"
                                                             id="edit-description" name="description" cols="60"
                                                             rows="5"></textarea></div>
            </div>

            <div id="fee-wrapper"><input type="hidden" name="transfer_fee"/>
            </div>

            <div class="form-item form-type-textfield form-item-tan">
                <label for="edit-tan">TAN <span class="form-required"
                                                title="This field is required.">*</span></label>
                <input class="form-control form-text required" type="text" id="edit-tan" name="tan" value=""
                       size="60" maxlength="128"/>
            </div>

            <div class="form-item form-type-textfield form-item-template-name">
                <input placeholder="Template name" class="form-control form-text" type="text"
                       id="edit-template-name" name="template_name" value="" size="60" maxlength="128"/>
            </div>

            <div class="form-item form-type-checkbox form-item-save-as-template">
                <input type="checkbox" id="edit-save-as-template" name="save_as_template" value="1"
                       class="form-checkbox"/> <label class="option" for="edit-save-as-template">Save as
            template</label>

            </div>

            <div id="edit-actions-wrapper" class="form-wrapper"><input class="btn btn-success form-submit"
                                                                       type="submit" id="edit-next" name="next"
                                                                       value="Continue"/></div>
            <input type="hidden" name="form_build_id" value="form-N9_dwrxaFuGJCzn15rjnkt-ePuUUElpIXspqojRp2Pw"/>
            <input type="hidden" name="form_token" value="8sRzhJfOKGooNbyXE9Mabn49sT3R6QNCZ5iPOg8GOl8"/>
            <input type="hidden" name="form_id" value="ebanq_transfer_transfer_between_users_form"/>
        </div>
    </form>

    <div class="powered-by"><a href="#" class="powered-by-link" target="_blank">Powered by
    EBANQ&reg;</a></div>
</div>
</body>
</html>