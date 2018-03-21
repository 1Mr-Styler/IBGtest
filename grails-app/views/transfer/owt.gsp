<%--
  Created by IntelliJ IDEA.
  User: styl3r
  Date: 3/21/18
  Time: 1:44 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="lg"/>
    <title>Outgoing Wire Transfer</title>
</head>

<body class="page-transfer page-transfer-owt section-transfer">
<div class="content">
    <h1 class="page__title title" id="page-title">Outgoing Wire Transfer</h1>

    <div class="box-print pull-right" style="display: none;">
        <a href="#" title="Print" class="print"></a></div>

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

    <form action="${createLink(controller: 'transfer', action: 'processowt')}" method="post"
          id="ebanq-transfer-outgoing-wire-transfer-form"
          accept-charset="UTF-8">
        <div>
            <div id="edit-template-list-wrapper" class="form-wrapper">
                <div class="form-item form-type-select form-item-templates-list">
                    <select id="edit-templates-list" name="templates_list" class="form-select">
                        <option value="_none">Choose Template</option>
                        <option value="13">EBQ NYC</option>
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
            <fieldset class="form-wrapper" id="edit-beneficiary-bank">
                <legend><span class="fieldset-legend">Specify beneficiary bank</span></legend>

                <div class="fieldset-wrapper">
                    <div class="form-item form-type-textfield form-item-beneficiary-bank-swift">
                        <label for="edit-beneficiary-bank-swift">SWIFT / BIC <span class="form-required"
                                                                                   title="This field is required.">*</span>
                        </label>
                        <input class="form-control form-text required" type="text"
                               id="edit-beneficiary-bank-swift" name="beneficiary_bank_swift" value="" size="60"
                               maxlength="128" required/>
                    </div>

                    <div class="form-item form-type-textfield form-item-beneficiary-bank-name">
                        <label for="edit-beneficiary-bank-name">Name <span class="form-required"
                                                                           title="This field is required.">*</span>
                        </label>
                        <input class="form-control form-text required" type="text"
                               id="edit-beneficiary-bank-name" name="beneficiary_bank_name" value="" size="60"
                               maxlength="128" required/>
                    </div>

                    <div class="form-item form-type-textfield form-item-beneficiary-bank-address">
                        <label for="edit-beneficiary-bank-address">Address <span class="form-required"
                                                                                 title="This field is required.">*</span>
                        </label>
                        <input class="form-control form-text required" type="text"
                               id="edit-beneficiary-bank-address" name="beneficiary_bank_address" value=""
                               size="60" maxlength="128"/>
                    </div>

                    <div class="form-item form-type-textfield form-item-beneficiary-bank-location">
                        <label for="edit-beneficiary-bank-location">Location <span class="form-required"
                                                                                   title="This field is required.">*</span>
                        </label>
                        <input class="form-control form-text required" type="text"
                               id="edit-beneficiary-bank-location" name="beneficiary_bank_location" value=""
                               size="60" maxlength="128"/>
                    </div>

                    <div class="form-item form-type-select form-item-beneficiary-bank-country">
                        <label for="edit-beneficiary-bank-country">Country <span class="form-required"
                                                                                 title="This field is required.">*</span>
                        </label>
                        <select id="edit-beneficiary-bank-country" name="beneficiary_bank_country"
                                class="form-select required">
                            <option value="" selected="selected">- Choose the country -</option>
                            <option value="AF">Afghanistan</option>
                            <option value="AX">Aland Islands</option>
                            <option value="AL">Albania</option>
                            <option value="DZ">Algeria</option>
                            <option value="AS">American Samoa</option>
                            <option value="AD">Andorra</option>
                            <option value="AO">Angola</option>
                            <option value="AI">Anguilla</option>
                            <option value="AQ">Antarctica</option>
                            <option value="AG">Antigua and Barbuda</option>
                            <option value="AR">Argentina</option>
                            <option value="AM">Armenia</option>
                            <option value="AW">Aruba</option>
                            <option value="AU">Australia</option>
                            <option value="AT">Austria</option>
                            <option value="AZ">Azerbaijan</option>
                            <option value="BS">Bahamas</option>
                            <option value="BH">Bahrain</option>
                            <option value="BD">Bangladesh</option>
                            <option value="BB">Barbados</option>
                            <option value="BY">Belarus</option>
                            <option value="BE">Belgium</option>
                            <option value="BZ">Belize</option>
                            <option value="BJ">Benin</option>
                            <option value="BM">Bermuda</option>
                            <option value="BT">Bhutan</option>
                            <option value="BO">Bolivia</option>
                            <option value="BA">Bosnia and Herzegovina</option>
                            <option value="BQ">Caribbean Netherlands</option>
                            <option value="BW">Botswana</option>
                            <option value="BV">Bouvet Island</option>
                            <option value="BR">Brazil</option>
                            <option value="IO">British Indian Ocean Territory</option>
                            <option value="BN">Brunei</option>
                            <option value="BG">Bulgaria</option>
                            <option value="BF">Burkina Faso</option>
                            <option value="BI">Burundi</option>
                            <option value="KH">Cambodia</option>
                            <option value="CM">Cameroon</option>
                            <option value="CA">Canada</option>
                            <option value="CV">Cape Verde</option>
                            <option value="KY">Cayman Islands</option>
                            <option value="CF">Central African Republic</option>
                            <option value="TD">Chad</option>
                            <option value="CL">Chile</option>
                            <option value="CN">China</option>
                            <option value="CX">Christmas Island</option>
                            <option value="CC">Cocos (Keeling) Islands</option>
                            <option value="CO">Colombia</option>
                            <option value="KM">Comoros</option>
                            <option value="CG">Congo (Brazzaville)</option>
                            <option value="CD">Congo (Kinshasa)</option>
                            <option value="CK">Cook Islands</option>
                            <option value="CR">Costa Rica</option>
                            <option value="CI">Ivory Coast</option>
                            <option value="HR">Croatia</option>
                            <option value="CU">Cuba</option>
                            <option value="CW">Curaçao</option>
                            <option value="CY">Cyprus</option>
                            <option value="CZ">Czech Republic</option>
                            <option value="DK">Denmark</option>
                            <option value="DJ">Djibouti</option>
                            <option value="DM">Dominica</option>
                            <option value="DO">Dominican Republic</option>
                            <option value="EC">Ecuador</option>
                            <option value="EG">Egypt</option>
                            <option value="SV">El Salvador</option>
                            <option value="GQ">Equatorial Guinea</option>
                            <option value="ER">Eritrea</option>
                            <option value="EE">Estonia</option>
                            <option value="ET">Ethiopia</option>
                            <option value="FK">Falkland Islands</option>
                            <option value="FO">Faroe Islands</option>
                            <option value="FJ">Fiji</option>
                            <option value="FI">Finland</option>
                            <option value="FR">France</option>
                            <option value="GF">French Guiana</option>
                            <option value="PF">French Polynesia</option>
                            <option value="TF">French Southern Territories</option>
                            <option value="GA">Gabon</option>
                            <option value="GM">Gambia</option>
                            <option value="GE">Georgia</option>
                            <option value="DE">Germany</option>
                            <option value="GH">Ghana</option>
                            <option value="GI">Gibraltar</option>
                            <option value="GR">Greece</option>
                            <option value="GL">Greenland</option>
                            <option value="GD">Grenada</option>
                            <option value="GP">Guadeloupe</option>
                            <option value="GU">Guam</option>
                            <option value="GT">Guatemala</option>
                            <option value="GG">Guernsey</option>
                            <option value="GN">Guinea</option>
                            <option value="GW">Guinea-Bissau</option>
                            <option value="GY">Guyana</option>
                            <option value="HT">Haiti</option>
                            <option value="HM">Heard Island and McDonald Islands</option>
                            <option value="VA">Vatican</option>
                            <option value="HN">Honduras</option>
                            <option value="HK">Hong Kong S.A.R., China</option>
                            <option value="HU">Hungary</option>
                            <option value="IS">Iceland</option>
                            <option value="IN">India</option>
                            <option value="ID">Indonesia</option>
                            <option value="IR">Iran</option>
                            <option value="IQ">Iraq</option>
                            <option value="IE">Ireland</option>
                            <option value="IM">Isle of Man</option>
                            <option value="IL">Israel</option>
                            <option value="IT">Italy</option>
                            <option value="JM">Jamaica</option>
                            <option value="JP">Japan</option>
                            <option value="JE">Jersey</option>
                            <option value="JO">Jordan</option>
                            <option value="KZ">Kazakhstan</option>
                            <option value="KE">Kenya</option>
                            <option value="KI">Kiribati</option>
                            <option value="KP">North Korea</option>
                            <option value="KR">South Korea</option>
                            <option value="KW">Kuwait</option>
                            <option value="KG">Kyrgyzstan</option>
                            <option value="LA">Laos</option>
                            <option value="LV">Latvia</option>
                            <option value="LB">Lebanon</option>
                            <option value="LS">Lesotho</option>
                            <option value="LR">Liberia</option>
                            <option value="LY">Libya</option>
                            <option value="LI">Liechtenstein</option>
                            <option value="LT">Lithuania</option>
                            <option value="LU">Luxembourg</option>
                            <option value="MO">Macao S.A.R., China</option>
                            <option value="MK">Macedonia</option>
                            <option value="MG">Madagascar</option>
                            <option value="MW">Malawi</option>
                            <option value="MY">Malaysia</option>
                            <option value="MV">Maldives</option>
                            <option value="ML">Mali</option>
                            <option value="MT">Malta</option>
                            <option value="MH">Marshall Islands</option>
                            <option value="MQ">Martinique</option>
                            <option value="MR">Mauritania</option>
                            <option value="MU">Mauritius</option>
                            <option value="YT">Mayotte</option>
                            <option value="MX">Mexico</option>
                            <option value="FM">Micronesia</option>
                            <option value="MD">Moldova</option>
                            <option value="MC">Monaco</option>
                            <option value="MN">Mongolia</option>
                            <option value="ME">Montenegro</option>
                            <option value="MS">Montserrat</option>
                            <option value="MA">Morocco</option>
                            <option value="MZ">Mozambique</option>
                            <option value="MM">Myanmar</option>
                            <option value="NA">Namibia</option>
                            <option value="NR">Nauru</option>
                            <option value="NP">Nepal</option>
                            <option value="NL">Netherlands</option>
                            <option value="AN">Netherlands Antilles</option>
                            <option value="NC">New Caledonia</option>
                            <option value="NZ">New Zealand</option>
                            <option value="NI">Nicaragua</option>
                            <option value="NE">Niger</option>
                            <option value="NG">Nigeria</option>
                            <option value="NU">Niue</option>
                            <option value="NF">Norfolk Island</option>
                            <option value="MP">Northern Mariana Islands</option>
                            <option value="NO">Norway</option>
                            <option value="OM">Oman</option>
                            <option value="PK">Pakistan</option>
                            <option value="PW">Palau</option>
                            <option value="PS">Palestinian Territory</option>
                            <option value="PA">Panama</option>
                            <option value="PG">Papua New Guinea</option>
                            <option value="PY">Paraguay</option>
                            <option value="PE">Peru</option>
                            <option value="PH">Philippines</option>
                            <option value="PN">Pitcairn</option>
                            <option value="PL">Poland</option>
                            <option value="PT">Portugal</option>
                            <option value="PR">Puerto Rico</option>
                            <option value="QA">Qatar</option>
                            <option value="RE">Reunion</option>
                            <option value="RO">Romania</option>
                            <option value="RU">Russia</option>
                            <option value="RW">Rwanda</option>
                            <option value="BL">Saint Barthélemy</option>
                            <option value="SH">Saint Helena</option>
                            <option value="KN">Saint Kitts and Nevis</option>
                            <option value="LC">Saint Lucia</option>
                            <option value="MF">Saint Martin (French part)</option>
                            <option value="PM">Saint Pierre and Miquelon</option>
                            <option value="VC">Saint Vincent and the Grenadines</option>
                            <option value="WS">Samoa</option>
                            <option value="SM">San Marino</option>
                            <option value="ST">Sao Tome and Principe</option>
                            <option value="SA">Saudi Arabia</option>
                            <option value="SN">Senegal</option>
                            <option value="RS">Serbia</option>
                            <option value="SC">Seychelles</option>
                            <option value="SL">Sierra Leone</option>
                            <option value="SG">Singapore</option>
                            <option value="SX">Sint Maarten</option>
                            <option value="SK">Slovakia</option>
                            <option value="SI">Slovenia</option>
                            <option value="SB">Solomon Islands</option>
                            <option value="SO">Somalia</option>
                            <option value="ZA">South Africa</option>
                            <option value="GS">South Georgia and the South Sandwich Islands</option>
                            <option value="ES">Spain</option>
                            <option value="LK">Sri Lanka</option>
                            <option value="SS">South Sudan</option>
                            <option value="SD">Sudan</option>
                            <option value="SR">Suriname</option>
                            <option value="SJ">Svalbard and Jan Mayen</option>
                            <option value="SZ">Swaziland</option>
                            <option value="SE">Sweden</option>
                            <option value="CH">Switzerland</option>
                            <option value="SY">Syria</option>
                            <option value="TW">Taiwan</option>
                            <option value="TJ">Tajikistan</option>
                            <option value="TZ">Tanzania</option>
                            <option value="TH">Thailand</option>
                            <option value="TL">Timor-Leste</option>
                            <option value="TG">Togo</option>
                            <option value="TK">Tokelau</option>
                            <option value="TO">Tonga</option>
                            <option value="TT">Trinidad and Tobago</option>
                            <option value="TN">Tunisia</option>
                            <option value="TR">Turkey</option>
                            <option value="TM">Turkmenistan</option>
                            <option value="TC">Turks and Caicos Islands</option>
                            <option value="TV">Tuvalu</option>
                            <option value="UG">Uganda</option>
                            <option value="UA">Ukraine</option>
                            <option value="AE">United Arab Emirates</option>
                            <option value="GB">United Kingdom</option>
                            <option value="US">United States</option>
                            <option value="UM">United States Minor Outlying Islands</option>
                            <option value="UY">Uruguay</option>
                            <option value="UZ">Uzbekistan</option>
                            <option value="VU">Vanuatu</option>
                            <option value="VE">Venezuela</option>
                            <option value="VN">Vietnam</option>
                            <option value="VG">British Virgin Islands</option>
                            <option value="VI">U.S. Virgin Islands</option>
                            <option value="WF">Wallis and Futuna</option>
                            <option value="EH">Western Sahara</option>
                            <option value="YE">Yemen</option>
                            <option value="ZM">Zambia</option>
                            <option value="ZW">Zimbabwe</option>
                        </select>
                    </div>

                    <div id="beneficiary-country-code-wrapper" class="country-wrapper empty"></div>

                    <div class="form-item form-type-textfield form-item-beneficiary-bank-abartn">
                        <label for="edit-beneficiary-bank-abartn">ABA/RTN</label>
                        <input class="form-control form-text" type="text" id="edit-beneficiary-bank-abartn"
                               name="beneficiary_bank_abartn" value="" size="60" maxlength="128"/>
                    </div>
                </div>
            </fieldset>

            <div id="edit-customer-inf-container" class="form-wrapper">
                <fieldset class="form-wrapper" id="edit-beneficiary-customer">
                    <legend><span class="fieldset-legend">Specify beneficiary customer</span></legend>

                    <div class="fieldset-wrapper">
                        <div class="form-item form-type-textfield form-item-beneficiary-customer-name">
                            <label for="edit-beneficiary-customer-name">Name <span class="form-required"
                                                                                   title="This field is required.">*</span>
                            </label>
                            <input class="form-control form-text required" type="text"
                                   id="edit-beneficiary-customer-name" name="beneficiary_customer_name" value=""
                                   size="60" maxlength="128" required/>
                        </div>

                        <div class="form-item form-type-textfield form-item-beneficiary-customer-address">
                            <label for="edit-beneficiary-customer-address">Address <span class="form-required"
                                                                                         title="This field is required.">*</span>
                            </label>
                            <input class="form-control form-text required" type="text"
                                   id="edit-beneficiary-customer-address" name="beneficiary_customer_address"
                                   value="" size="60" maxlength="128" required/>
                        </div>

                        <div class="form-item form-type-textfield form-item-beneficiary-customer-iban">
                            <label for="edit-beneficiary-customer-iban">Acc#/IBAN <span class="form-required"
                                                                                        title="This field is required.">*</span>
                            </label>
                            <input class="form-control form-text required" type="text"
                                   id="edit-beneficiary-customer-iban" name="beneficiary_customer_iban" value=""
                                   size="60" maxlength="128" required/>
                        </div>
                    </div>
                </fieldset>
                <fieldset class="form-wrapper" id="edit-information">
                    <legend><span class="fieldset-legend">Additional Information</span></legend>

                    <div class="fieldset-wrapper">
                        <div class="form-item form-type-textfield form-item-information-ref">
                            <label for="edit-information-ref">Ref message <span class="form-required"
                                                                                title="This field is required.">*</span>
                            </label>
                            <input class="form-control form-text required" type="text" id="edit-information-ref"
                                   name="information_ref" value="" size="60" maxlength="128" required/>
                        </div>
                    </div>
                </fieldset>
            </div>

            <div id="edit-intermediary-bank-container" class="form-wrapper">
                <div class="form-item form-type-checkbox form-item-is-intermediary-bank">
                    <input type="checkbox" id="edit-is-intermediary-bank" name="is_intermediary_bank" value="1"
                           class="form-checkbox"/> <label class="option" for="edit-is-intermediary-bank">Specify
                intermediary bank</label>

                </div>

                <div id="edit-intermediary-bank" class="form-wrapper">
                    <div class="form-item form-type-textfield form-item-intermediary-bank-swift">
                        <label for="edit-intermediary-bank-swift">SWIFT / BIC</label>
                        <input class="form-control form-text" type="text" id="edit-intermediary-bank-swift"
                               name="intermediary_bank_swift" value="" size="60" maxlength="128"/>
                    </div>

                    <div class="form-item form-type-textfield form-item-intermediary-bank-name">
                        <label for="edit-intermediary-bank-name">Name</label>
                        <input class="form-control form-text" type="text" id="edit-intermediary-bank-name"
                               name="intermediary_bank_name" value="" size="60" maxlength="128"/>
                    </div>

                    <div class="form-item form-type-textfield form-item-intermediary-bank-address">
                        <label for="edit-intermediary-bank-address">Address</label>
                        <input class="form-control form-text" type="text" id="edit-intermediary-bank-address"
                               name="intermediary_bank_address" value="" size="60" maxlength="128"/>
                    </div>

                    <div class="form-item form-type-textfield form-item-intermediary-bank-location">
                        <label for="edit-intermediary-bank-location">Location</label>
                        <input class="form-control form-text" type="text" id="edit-intermediary-bank-location"
                               name="intermediary_bank_location" value="" size="60" maxlength="128"/>
                    </div>

                    <div class="form-item form-type-select form-item-intermediary-bank-country">
                        <label for="edit-intermediary-bank-country">Country</label>
                        <select style="width: 100%;" id="edit-intermediary-bank-country"
                                name="intermediary_bank_country" class="form-select">
                            <option value="" selected="selected">- Choose the country -</option>
                            <option value="AF">Afghanistan</option>
                            <option value="AX">Aland Islands</option>
                            <option value="AL">Albania</option>
                            <option value="DZ">Algeria</option>
                            <option value="AS">American Samoa</option>
                            <option value="AD">Andorra</option>
                            <option value="AO">Angola</option>
                            <option value="AI">Anguilla</option>
                            <option value="AQ">Antarctica</option>
                            <option value="AG">Antigua and Barbuda</option>
                            <option value="AR">Argentina</option>
                            <option value="AM">Armenia</option>
                            <option value="AW">Aruba</option>
                            <option value="AU">Australia</option>
                            <option value="AT">Austria</option>
                            <option value="AZ">Azerbaijan</option>
                            <option value="BS">Bahamas</option>
                            <option value="BH">Bahrain</option>
                            <option value="BD">Bangladesh</option>
                            <option value="BB">Barbados</option>
                            <option value="BY">Belarus</option>
                            <option value="BE">Belgium</option>
                            <option value="BZ">Belize</option>
                            <option value="BJ">Benin</option>
                            <option value="BM">Bermuda</option>
                            <option value="BT">Bhutan</option>
                            <option value="BO">Bolivia</option>
                            <option value="BA">Bosnia and Herzegovina</option>
                            <option value="BQ">Caribbean Netherlands</option>
                            <option value="BW">Botswana</option>
                            <option value="BV">Bouvet Island</option>
                            <option value="BR">Brazil</option>
                            <option value="IO">British Indian Ocean Territory</option>
                            <option value="BN">Brunei</option>
                            <option value="BG">Bulgaria</option>
                            <option value="BF">Burkina Faso</option>
                            <option value="BI">Burundi</option>
                            <option value="KH">Cambodia</option>
                            <option value="CM">Cameroon</option>
                            <option value="CA">Canada</option>
                            <option value="CV">Cape Verde</option>
                            <option value="KY">Cayman Islands</option>
                            <option value="CF">Central African Republic</option>
                            <option value="TD">Chad</option>
                            <option value="CL">Chile</option>
                            <option value="CN">China</option>
                            <option value="CX">Christmas Island</option>
                            <option value="CC">Cocos (Keeling) Islands</option>
                            <option value="CO">Colombia</option>
                            <option value="KM">Comoros</option>
                            <option value="CG">Congo (Brazzaville)</option>
                            <option value="CD">Congo (Kinshasa)</option>
                            <option value="CK">Cook Islands</option>
                            <option value="CR">Costa Rica</option>
                            <option value="CI">Ivory Coast</option>
                            <option value="HR">Croatia</option>
                            <option value="CU">Cuba</option>
                            <option value="CW">Curaçao</option>
                            <option value="CY">Cyprus</option>
                            <option value="CZ">Czech Republic</option>
                            <option value="DK">Denmark</option>
                            <option value="DJ">Djibouti</option>
                            <option value="DM">Dominica</option>
                            <option value="DO">Dominican Republic</option>
                            <option value="EC">Ecuador</option>
                            <option value="EG">Egypt</option>
                            <option value="SV">El Salvador</option>
                            <option value="GQ">Equatorial Guinea</option>
                            <option value="ER">Eritrea</option>
                            <option value="EE">Estonia</option>
                            <option value="ET">Ethiopia</option>
                            <option value="FK">Falkland Islands</option>
                            <option value="FO">Faroe Islands</option>
                            <option value="FJ">Fiji</option>
                            <option value="FI">Finland</option>
                            <option value="FR">France</option>
                            <option value="GF">French Guiana</option>
                            <option value="PF">French Polynesia</option>
                            <option value="TF">French Southern Territories</option>
                            <option value="GA">Gabon</option>
                            <option value="GM">Gambia</option>
                            <option value="GE">Georgia</option>
                            <option value="DE">Germany</option>
                            <option value="GH">Ghana</option>
                            <option value="GI">Gibraltar</option>
                            <option value="GR">Greece</option>
                            <option value="GL">Greenland</option>
                            <option value="GD">Grenada</option>
                            <option value="GP">Guadeloupe</option>
                            <option value="GU">Guam</option>
                            <option value="GT">Guatemala</option>
                            <option value="GG">Guernsey</option>
                            <option value="GN">Guinea</option>
                            <option value="GW">Guinea-Bissau</option>
                            <option value="GY">Guyana</option>
                            <option value="HT">Haiti</option>
                            <option value="HM">Heard Island and McDonald Islands</option>
                            <option value="VA">Vatican</option>
                            <option value="HN">Honduras</option>
                            <option value="HK">Hong Kong S.A.R., China</option>
                            <option value="HU">Hungary</option>
                            <option value="IS">Iceland</option>
                            <option value="IN">India</option>
                            <option value="ID">Indonesia</option>
                            <option value="IR">Iran</option>
                            <option value="IQ">Iraq</option>
                            <option value="IE">Ireland</option>
                            <option value="IM">Isle of Man</option>
                            <option value="IL">Israel</option>
                            <option value="IT">Italy</option>
                            <option value="JM">Jamaica</option>
                            <option value="JP">Japan</option>
                            <option value="JE">Jersey</option>
                            <option value="JO">Jordan</option>
                            <option value="KZ">Kazakhstan</option>
                            <option value="KE">Kenya</option>
                            <option value="KI">Kiribati</option>
                            <option value="KP">North Korea</option>
                            <option value="KR">South Korea</option>
                            <option value="KW">Kuwait</option>
                            <option value="KG">Kyrgyzstan</option>
                            <option value="LA">Laos</option>
                            <option value="LV">Latvia</option>
                            <option value="LB">Lebanon</option>
                            <option value="LS">Lesotho</option>
                            <option value="LR">Liberia</option>
                            <option value="LY">Libya</option>
                            <option value="LI">Liechtenstein</option>
                            <option value="LT">Lithuania</option>
                            <option value="LU">Luxembourg</option>
                            <option value="MO">Macao S.A.R., China</option>
                            <option value="MK">Macedonia</option>
                            <option value="MG">Madagascar</option>
                            <option value="MW">Malawi</option>
                            <option value="MY">Malaysia</option>
                            <option value="MV">Maldives</option>
                            <option value="ML">Mali</option>
                            <option value="MT">Malta</option>
                            <option value="MH">Marshall Islands</option>
                            <option value="MQ">Martinique</option>
                            <option value="MR">Mauritania</option>
                            <option value="MU">Mauritius</option>
                            <option value="YT">Mayotte</option>
                            <option value="MX">Mexico</option>
                            <option value="FM">Micronesia</option>
                            <option value="MD">Moldova</option>
                            <option value="MC">Monaco</option>
                            <option value="MN">Mongolia</option>
                            <option value="ME">Montenegro</option>
                            <option value="MS">Montserrat</option>
                            <option value="MA">Morocco</option>
                            <option value="MZ">Mozambique</option>
                            <option value="MM">Myanmar</option>
                            <option value="NA">Namibia</option>
                            <option value="NR">Nauru</option>
                            <option value="NP">Nepal</option>
                            <option value="NL">Netherlands</option>
                            <option value="AN">Netherlands Antilles</option>
                            <option value="NC">New Caledonia</option>
                            <option value="NZ">New Zealand</option>
                            <option value="NI">Nicaragua</option>
                            <option value="NE">Niger</option>
                            <option value="NG">Nigeria</option>
                            <option value="NU">Niue</option>
                            <option value="NF">Norfolk Island</option>
                            <option value="MP">Northern Mariana Islands</option>
                            <option value="NO">Norway</option>
                            <option value="OM">Oman</option>
                            <option value="PK">Pakistan</option>
                            <option value="PW">Palau</option>
                            <option value="PS">Palestinian Territory</option>
                            <option value="PA">Panama</option>
                            <option value="PG">Papua New Guinea</option>
                            <option value="PY">Paraguay</option>
                            <option value="PE">Peru</option>
                            <option value="PH">Philippines</option>
                            <option value="PN">Pitcairn</option>
                            <option value="PL">Poland</option>
                            <option value="PT">Portugal</option>
                            <option value="PR">Puerto Rico</option>
                            <option value="QA">Qatar</option>
                            <option value="RE">Reunion</option>
                            <option value="RO">Romania</option>
                            <option value="RU">Russia</option>
                            <option value="RW">Rwanda</option>
                            <option value="BL">Saint Barthélemy</option>
                            <option value="SH">Saint Helena</option>
                            <option value="KN">Saint Kitts and Nevis</option>
                            <option value="LC">Saint Lucia</option>
                            <option value="MF">Saint Martin (French part)</option>
                            <option value="PM">Saint Pierre and Miquelon</option>
                            <option value="VC">Saint Vincent and the Grenadines</option>
                            <option value="WS">Samoa</option>
                            <option value="SM">San Marino</option>
                            <option value="ST">Sao Tome and Principe</option>
                            <option value="SA">Saudi Arabia</option>
                            <option value="SN">Senegal</option>
                            <option value="RS">Serbia</option>
                            <option value="SC">Seychelles</option>
                            <option value="SL">Sierra Leone</option>
                            <option value="SG">Singapore</option>
                            <option value="SX">Sint Maarten</option>
                            <option value="SK">Slovakia</option>
                            <option value="SI">Slovenia</option>
                            <option value="SB">Solomon Islands</option>
                            <option value="SO">Somalia</option>
                            <option value="ZA">South Africa</option>
                            <option value="GS">South Georgia and the South Sandwich Islands</option>
                            <option value="ES">Spain</option>
                            <option value="LK">Sri Lanka</option>
                            <option value="SS">South Sudan</option>
                            <option value="SD">Sudan</option>
                            <option value="SR">Suriname</option>
                            <option value="SJ">Svalbard and Jan Mayen</option>
                            <option value="SZ">Swaziland</option>
                            <option value="SE">Sweden</option>
                            <option value="CH">Switzerland</option>
                            <option value="SY">Syria</option>
                            <option value="TW">Taiwan</option>
                            <option value="TJ">Tajikistan</option>
                            <option value="TZ">Tanzania</option>
                            <option value="TH">Thailand</option>
                            <option value="TL">Timor-Leste</option>
                            <option value="TG">Togo</option>
                            <option value="TK">Tokelau</option>
                            <option value="TO">Tonga</option>
                            <option value="TT">Trinidad and Tobago</option>
                            <option value="TN">Tunisia</option>
                            <option value="TR">Turkey</option>
                            <option value="TM">Turkmenistan</option>
                            <option value="TC">Turks and Caicos Islands</option>
                            <option value="TV">Tuvalu</option>
                            <option value="UG">Uganda</option>
                            <option value="UA">Ukraine</option>
                            <option value="AE">United Arab Emirates</option>
                            <option value="GB">United Kingdom</option>
                            <option value="US">United States</option>
                            <option value="UM">United States Minor Outlying Islands</option>
                            <option value="UY">Uruguay</option>
                            <option value="UZ">Uzbekistan</option>
                            <option value="VU">Vanuatu</option>
                            <option value="VE">Venezuela</option>
                            <option value="VN">Vietnam</option>
                            <option value="VG">British Virgin Islands</option>
                            <option value="VI">U.S. Virgin Islands</option>
                            <option value="WF">Wallis and Futuna</option>
                            <option value="EH">Western Sahara</option>
                            <option value="YE">Yemen</option>
                            <option value="ZM">Zambia</option>
                            <option value="ZW">Zimbabwe</option>
                        </select>
                    </div>

                    <div id="intermediary-country-code-wrapper" class="country-wrapper empty"></div>

                    <div class="form-item form-type-textfield form-item-intermediary-bank-abartn">
                        <label for="edit-intermediary-bank-abartn">ABA/RTN</label>
                        <input class="form-control form-text" type="text" id="edit-intermediary-bank-abartn"
                               name="intermediary_bank_abartn" value="" size="60" maxlength="128"/>
                    </div>

                    <div class="form-item form-type-textfield form-item-intermediary-bank-iban">
                        <label for="edit-intermediary-bank-iban">Acc#/IBAN</label>
                        <input class="form-control form-text" type="text" id="edit-intermediary-bank-iban"
                               name="intermediary_bank_iban" value="" size="60" maxlength="128"/>
                    </div>
                </div>
            </div>

            <div id="edit-details-container" class="form-wrapper">
                <div class="transfer-form-title">Transfer details</div>

                <div class="form-item form-type-textfield form-item-amount-to-transfer">
                    <label for="edit-amount-to-transfer">Amount to transfer <span class="form-required"
                                                                                  title="This field is required.">*</span>
                    </label>
                    <input class="form-control form-text required" type="text" id="edit-amount-to-transfer"
                           name="amount_to_transfer" value="" size="60" maxlength="128" required/>
                </div>

                <div class="form-item form-type-select form-item-currency">
                    <select id="edit-currency" name="currency" class="form-select required" required>
                        <option value="_none">Currency</option>
                        <option value="3">AUD</option>
                        <option value="2">BRL</option>
                        <option value="11">CAD</option>
                        <option value="12">CHF</option>
                        <option value="13">CNY</option>
                        <option value="14">DKK</option>
                        <option value="9">EUR</option>
                        <option value="15">GBP</option>
                        <option value="16">HKD</option>
                        <option value="17">INR</option>
                        <option value="18">JPY</option>
                        <option value="19">NOK</option>
                        <option value="20">NZD</option>
                        <option value="21">RUB</option>
                        <option value="22">SEK</option>
                        <option value="23">SGD</option>
                        <option value="10">USD</option>
                        <option value="24">ZAR</option>
                    </select>
                </div>

                <div id="fee-type-wrapper" class="form-wrapper"></div>

                <div id="fee-value-wrapper"></div>

                <div class="form-item form-type-textarea form-item-description">
                    <label for="edit-description">Description</label>

                    <div class="form-textarea-wrapper"><textarea class="form-control form-textarea"
                                                                 id="edit-description" name="description"
                                                                 cols="60" rows="5"></textarea></div>
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
                                                                           type="submit" id="edit-next"
                                                                           name="next" value="Continue"/></div>
            </div>
            <input type="hidden" name="form_build_id" value="form-5Rbkt1JbF0nDtpnLow34GXy4_yDJiPY0Y6n2p_JyEXs"/>
            <input type="hidden" name="form_token" value="HZDDRVakj-1ya8tjiZrEBFsT60e4JLGBx2rQj7YMq8U"/>
            <input type="hidden" name="form_id" value="ebanq_transfer_outgoing_wire_transfer_form"/>
        </div>
    </form>

    <div class="powered-by"><a href="#" class="powered-by-link" target="_blank">Powered by
    EBANQ&reg;</a></div>
</div>
</body>
</html>