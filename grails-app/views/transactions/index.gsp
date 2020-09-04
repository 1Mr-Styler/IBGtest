<%--
  Created by IntelliJ IDEA.
  User: styl3r
  Date: 3/20/18
  Time: 3:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Register</title>
</head>

<body class="html not-front not-logged-in no-sidebars page-user page-user-register section-user login-pages">
<div class="ie-browser-header">
    You are using Internet Explorer 8. Some features might not work or display properly. It is highly recommended to
    update the browser or use a different one.
</div>

<p id="skip-link">
    <a href="#main-menu" class="element-invisible element-focusable">Jump to navigation</a>
</p>

<div class="header high-header">
    <a href="${createLink(uri: '/')}" class="logo">
        <div class="default-logo-wrapper" style="padding-top: 26.5px;"><img style="width:201px; height34px;"
                                                                            src="${assetPath(src: "sites/all/themes/ebanq/images/logo.png")}"
                                                                            alt="KuveytTurk  "/></div>
    </a></div>

<div class="content">
    <ul class="big-screen-tabs">
        <li class="active"><a href="#" class="active">Add Transaction</a></li>
    </ul>

    <div class="registration-form">
        <form class="user-info-from-cookie" enctype="multipart/form-data" action="${createLink(controller: 'transactions', action: 'process')}" method="post"
              id="user-register-form" accept-charset="UTF-8">
            <div>
                <fieldset class="required-fields group-user-information field-group-fieldset form-wrapper">
                    <g:if test="${flash.message}">
                        <legend><span class="fieldset-legend"
                        style="color: red;">${flash.message}</span></legend>
                    </g:if>
                    <g:else>
                        <legend><span class="fieldset-legend">User information</span></legend>
                    </g:else>

                    <div class="fieldset-wrapper">
                        <div class="field-type-list-text field-name-field-profile-type field-widget-options-select form-wrapper"
                             id="edit-field-profile-type">
                            <div class="form-item form-type-select form-item-field-profile-type-und">
                                <label for="edit-field-profile-type-und">Transaction Type <span class="form-required"
                                                                                            title="This field is required.">*</span>
                                </label>
                                <select id="edit-field-profile-type-und" name="type"
                                        class="form-select required">
                                    <option value="0" selected="selected">Credit</option>
                                    <option value="1">Debit</option>
                                </select>
                            </div>
                        </div>


                        <div class="field-type-list-text field-name-field-user-title field-widget-options-select form-wrapper"
                             id="edit-field-user-title"></div>

                        <div class="field-type-text field-name-field-user-first-name field-widget-text-textfield form-wrapper"
                             id="edit-field-user-first-name">
                            <div id="field-user-first-name-add-more-wrapper">
                                <div class="form-item form-type-textfield form-item-field-user-first-name-und-0-value">
                                    <label for="edit-field-user-first-name-und-0-value">Receiving Account No <span
                                            class="form-required" title="This field is required.">*</span></label>
                                    <input required class="text-full form-control form-text required" type="number"
                                           id="edit-field-user-first-name-und-0-value"
                                           name="account" value="" size="60"
                                           maxlength="500"/>
                                </div>
                            </div>
                        </div>

                        <div class="field-type-text field-name-field-user-last-name field-widget-text-textfield form-wrapper"
                             id="edit-field-user-last-name">
                            <div id="field-user-last-name-add-more-wrapper">
                                <div class="form-item form-type-textfield form-item-field-user-last-name-und-0-value">
                                    <label for="edit-field-user-last-name-und-0-value">Amount <span
                                            class="form-required" title="This field is required.">*</span></label>
                                    <input required class="text-full form-control form-text required" type="text"
                                           id="edit-field-user-last-name-und-0-value"
                                           name="amount" value="" size="60"
                                           maxlength="500"/>
                                </div>
                            </div>
                        </div>

                        <div id="edit-account" class="form-wrapper">
                            <div class="form-item form-type-textfield form-item-name">
                                <label for="edit-name">Senders Bank <span class="form-required"
                                                                      title="This field is required.">*</span></label>
                                <input required class="username form-control form-text required" type="text" id="edit-name"
                                       name="bank" value="" size="60" maxlength="60"/>
                            </div>

                            <div class="form-item form-type-textfield form-item-name">
                                <label for="edit-name">Description <span class="form-required"
                                                                      title="This field is required.">*</span></label>
                                <input required class="username form-control form-text required" type="text" id="edit-desc"
                                       name="description" value="" size="100" maxlength="160"/>
                            </div>

                            <div class="field-type-list-text field-name-field-profile-type field-widget-options-select form-wrapper"
                                 id="currency-type">
                                <div class="form-item form-type-select form-item-field-profile-type-und">
                                    <label for="edit-field-profile-type-und">Transaction Type <span class="form-required"
                                                                                                    title="This field is required.">*</span>
                                    </label>
                                    <select id="currency-type-und" name="currency"
                                            class="form-select required">
                                        <option value="USD" selected="selected">USD</option>
                                        <option value="GBP">GBP</option>
                                        <option value="EUR">EUR</option>
                                    </select>
                                </div>
                            </div>

                        </div>

                        <div class="field-type-datetime field-name-field-user-date-of-birth field-widget-date-select form-wrapper"
                             id="edit-field-user-date-of-birth">
                            <div id="field-user-date-of-birth-add-more-wrapper">
                                <fieldset class="date-combo form-wrapper">
                                    <legend><span class="fieldset-legend">Date of Transaction</span></legend>

                                    <div class="fieldset-wrapper">
                                        <div class="date-no-float container-inline-date">
                                            <div class="form-item form-type-date-select form-item-field-user-date-of-birth-und-0-value">
                                                <div id="edit-field-user-date-of-birth-und-0-value"
                                                     class="date-padding clearfix">
                                                    <div class="form-item form-type-select form-item-field-user-date-of-birth-und-0-value-month">
                                                        <label for="edit-field-user-date-of-birth-und-0-value-month">Month</label>

                                                        <div class="date-month"><select class="date-clear form-select"
                                                                                        id="edit-field-user-date-of-birth-und-0-value-month"
                                                                                        name="dobmonth">
                                                            <option value="" selected="selected"></option>
                                                            <option value="01">Jan</option>
                                                            <option value="02">Feb</option>
                                                            <option value="03">Mar</option>
                                                            <option value="04">Apr</option>
                                                            <option value="05">May</option>
                                                            <option value="06">Jun</option>
                                                            <option value="07">Jul</option>
                                                            <option value="08">Aug</option>
                                                            <option value="09">Sep</option>
                                                            <option value="10">Oct</option>
                                                            <option value="11">Nov</option>
                                                            <option value="12">Dec</option>
                                                        </select></div>
                                                    </div>

                                                    <div class="form-item form-type-select form-item-field-user-date-of-birth-und-0-value-day">
                                                        <label for="edit-field-user-date-of-birth-und-0-value-day">Day</label>

                                                        <div class="date-day"><select class="date-clear form-select"
                                                                                      id="edit-field-user-date-of-birth-und-0-value-day"
                                                                                      name="dobday">
                                                            <option value="" selected="selected"></option>
                                                            <option value="01">1</option>
                                                            <option value="02">2</option>
                                                            <option value="03">3</option>
                                                            <option value="04">4</option>
                                                            <option value="05">5</option>
                                                            <option value="06">6</option>
                                                            <option value="07">7</option>
                                                            <option value="08">8</option>
                                                            <option value="09">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                        </select></div>
                                                    </div>

                                                    <div class="form-item form-type-textfield form-item-field-user-date-of-birth-und-0-value-year">
                                                        <label for="edit-field-user-date-of-birth-und-0-value-year">Year</label>

                                                        <div class="date-year"><input
                                                                class="date-clear form-control form-text" type="text"
                                                                id="edit-field-user-date-of-birth-und-0-value-year"
                                                                name="dobyear"
                                                                value="" size="7" maxlength="128" placeholder="yyyy" minlength="4"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <div class="form-wrapper form-wrapper" id="edit-legal">
                    <div class="form-item form-type-checkbox form-item-legal-accept">
                        <input type="checkbox" id="edit-legal-accept" name="status" value="1"
                               class="form-checkbox required" checked/> <label class="option" for="edit-legal-accept">Approved <span
                            class="form-required" title="This field is required.">*</span></label>

                    </div>
                </div>

                <div class="final-description">We will contact you prior to full account activation to request any
                additional information that might be required.
                </div>

                <div class="form-actions form-wrapper" id="edit-actions"><input class="btn btn-success form-submit"
                                                                                type="submit" id="edit-submit"
                                                                                value="Save"/></div>
            </div>
        </form>
    </div>
</div>

<div class="registration-page-footer">
    <div class="site-about pull-right"><a href="#" target="_blank" class="powered-by-link">Powered by
    EBANQ&reg;</a></div>
</div>
</body>
</html>