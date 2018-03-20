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
                                                                            alt="Intercontinental Bankia"/></div>
    </a></div>

<div class="content">
    <ul class="big-screen-tabs">
        <li><a href="${createLink(uri: '/')}">Log In</a></li>
        <li class="or">or</li>
        <li class="active"><a href="#" class="active">Sign Up</a></li>
    </ul>

    <div class="registration-form">
        <form class="user-info-from-cookie" enctype="multipart/form-data" action="${createLink(controller: 'register', action: 'save')}" method="post"
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
                                <label for="edit-field-profile-type-und">Profile Type <span class="form-required"
                                                                                            title="This field is required.">*</span>
                                </label>
                                <select id="edit-field-profile-type-und" name="field_profile_type[und]"
                                        class="form-select required">
                                    <option value="0" selected="selected">Personal</option>
                                    <option value="1">Corporate</option>
                                </select>
                            </div>
                        </div>

                        <div class="field-type-text field-name-field-user-company-name field-widget-text-textfield form-wrapper"
                             id="edit-field-user-company-name">
                            <div id="field-user-company-name-add-more-wrapper">
                                <div class="form-item form-type-textfield form-item-field-user-company-name-und-0-value">
                                    <label for="edit-field-user-company-name-und-0-value">Company name</label>
                                    <input class="text-full form-control form-text" type="text"
                                           id="edit-field-user-company-name-und-0-value"
                                           name="field_user_company_name[und][0][value]" value="" size="60"
                                           maxlength="255"/>
                                </div>
                            </div>
                        </div>

                        <div class="field-type-list-text field-name-field-user-title field-widget-options-select form-wrapper"
                             id="edit-field-user-title"></div>

                        <div class="field-type-text field-name-field-user-first-name field-widget-text-textfield form-wrapper"
                             id="edit-field-user-first-name">
                            <div id="field-user-first-name-add-more-wrapper">
                                <div class="form-item form-type-textfield form-item-field-user-first-name-und-0-value">
                                    <label for="edit-field-user-first-name-und-0-value">First Name <span
                                            class="form-required" title="This field is required.">*</span></label>
                                    <input required class="text-full form-control form-text required" type="text"
                                           id="edit-field-user-first-name-und-0-value"
                                           name="field_user_first_name[und][0][value]" value="" size="60"
                                           maxlength="500"/>
                                </div>
                            </div>
                        </div>

                        <div class="field-type-text field-name-field-user-last-name field-widget-text-textfield form-wrapper"
                             id="edit-field-user-last-name">
                            <div id="field-user-last-name-add-more-wrapper">
                                <div class="form-item form-type-textfield form-item-field-user-last-name-und-0-value">
                                    <label for="edit-field-user-last-name-und-0-value">Last name <span
                                            class="form-required" title="This field is required.">*</span></label>
                                    <input required class="text-full form-control form-text required" type="text"
                                           id="edit-field-user-last-name-und-0-value"
                                           name="field_user_last_name[und][0][value]" value="" size="60"
                                           maxlength="500"/>
                                </div>
                            </div>
                        </div>

                        <div id="edit-account" class="form-wrapper">
                            <div class="form-item form-type-textfield form-item-name">
                                <label for="edit-name">Username <span class="form-required"
                                                                      title="This field is required.">*</span></label>
                                <input required class="username form-control form-text required" type="text" id="edit-name"
                                       name="name" value="" size="60" maxlength="60"/>
                            </div>

                            <div id="edit-pass-fieldset" class="form-wrapper">
                                <div class="form-item form-type-password form-item-pass">
                                    <label for="edit-pass">Password <span class="form-required"
                                                                          title="This field is required.">*</span>
                                    </label>
                                    <input required class="form-control form-text required" type="password" id="edit-pass"
                                           name="pass" size="30" maxlength="50"/>
                                </div>

                                <div class="form-item form-type-password form-item-pass-confirm">
                                    <label for="edit-pass-confirm">Confirm password <span class="form-required"
                                                                                          title="This field is required.">*</span>
                                    </label>
                                    <input required class="form-control form-text required" type="password"
                                           id="edit-pass-confirm" name="pass_confirm" size="30" maxlength="50"/>
                                </div>
                            </div>

                            <div class="form-item form-type-textfield form-item-mail">
                                <label for="edit-mail">E-mail address <span class="form-required"
                                                                            title="This field is required.">*</span>
                                </label>
                                <input required class="form-control form-text required" type="text" id="edit-mail" name="mail"
                                       value="" size="60" maxlength="254"/>
                            </div>

                            <div class="field-type-text field-name-field-user-confirm-email-address field-widget-text-textfield form-wrapper"
                                 id="edit-field-user-confirm-email-address">
                                <div id="field-user-confirm-email-address-add-more-wrapper">
                                    <div class="form-item form-type-textfield form-item-field-user-confirm-email-address-und-0-value">
                                        <label for="edit-field-user-confirm-email-address-und-0-value">Confirm Email
                                        Address <span class="form-required" title="This field is required.">*</span>
                                        </label>
                                        <input required class="text-full form-control form-text required" type="text"
                                               id="edit-field-user-confirm-email-address-und-0-value"
                                               name="field_user_confirm_email_address[und][0][value]" value="" size="60"
                                               maxlength="255"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="field-type-datetime field-name-field-user-date-of-birth field-widget-date-select form-wrapper"
                             id="edit-field-user-date-of-birth">
                            <div id="field-user-date-of-birth-add-more-wrapper">
                                <fieldset class="date-combo form-wrapper">
                                    <legend><span class="fieldset-legend">Date of Birth</span></legend>

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
                                                            <option value="1">Jan</option>
                                                            <option value="2">Feb</option>
                                                            <option value="3">Mar</option>
                                                            <option value="4">Apr</option>
                                                            <option value="5">May</option>
                                                            <option value="6">Jun</option>
                                                            <option value="7">Jul</option>
                                                            <option value="8">Aug</option>
                                                            <option value="9">Sep</option>
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
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
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

                        <div class="field-type-list-text field-name-field-user-document-type field-widget-options-select form-wrapper"
                             id="edit-field-user-document-type">
                            <div class="form-item form-type-select form-item-field-user-document-type-und">
                                <label for="edit-field-user-document-type-und">Document type <span class="form-required"
                                                                                                   title="This field is required.">*</span>
                                </label>
                                <select id="edit-field-user-document-type-und" name="field_user_document_type[und]"
                                        class="form-select required">
                                    <option value="0" selected="selected">Passport number</option>
                                    <option value="1">Driver&#039;s license</option>
                                    <option value="2">Gov issued photo ID</option>
                                </select>
                            </div>
                        </div>

                        <div class="field-type-text field-name-field-user-passport-number field-widget-text-textfield form-wrapper"
                             id="edit-field-user-passport-number">
                            <div id="field-user-passport-number-add-more-wrapper">
                                <div class="form-item form-type-textfield form-item-field-user-passport-number-und-0-value">
                                    <label for="edit-field-user-passport-number-und-0-value">Document number</label>
                                    <input required class="text-full form-control form-text" type="text"
                                           id="edit-field-user-passport-number-und-0-value"
                                           name="field_user_passport_number[und][0][value]" value="" size="60"
                                           maxlength="255"/>
                                </div>
                            </div>
                        </div>

                        <div class="field-type-country field-name-field-user-country-of-residence field-widget-options-select form-wrapper"
                             id="edit-field-user-country-of-residence">
                            <div class="form-item form-type-select form-item-field-user-country-of-residence-und">
                                <label for="edit-field-user-country-of-residence-und">Country of Residence</label>
                                <select id="edit-field-user-country-of-residence-und"
                                        name="field_user_country_of_residence[und]" class="form-select">
                                    <option value="_none">- None -</option>
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
                                    <option value="BW">Botswana</option>
                                    <option value="BV">Bouvet Island</option>
                                    <option value="BR">Brazil</option>
                                    <option value="IO">British Indian Ocean Territory</option>
                                    <option value="VG">British Virgin Islands</option>
                                    <option value="BN">Brunei</option>
                                    <option value="BG">Bulgaria</option>
                                    <option value="BF">Burkina Faso</option>
                                    <option value="BI">Burundi</option>
                                    <option value="KH">Cambodia</option>
                                    <option value="CM">Cameroon</option>
                                    <option value="CA">Canada</option>
                                    <option value="CV">Cape Verde</option>
                                    <option value="BQ">Caribbean Netherlands</option>
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
                                    <option value="CI">Ivory Coast</option>
                                    <option value="JM">Jamaica</option>
                                    <option value="JP">Japan</option>
                                    <option value="JE">Jersey</option>
                                    <option value="JO">Jordan</option>
                                    <option value="KZ">Kazakhstan</option>
                                    <option value="KE">Kenya</option>
                                    <option value="KI">Kiribati</option>
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
                                    <option value="KP">North Korea</option>
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
                                    <option value="KR">South Korea</option>
                                    <option value="SS">South Sudan</option>
                                    <option value="ES">Spain</option>
                                    <option value="LK">Sri Lanka</option>
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
                                    <option value="VI">U.S. Virgin Islands</option>
                                    <option value="UG">Uganda</option>
                                    <option value="UA">Ukraine</option>
                                    <option value="AE">United Arab Emirates</option>
                                    <option value="GB">United Kingdom</option>
                                    <option value="US">United States</option>
                                    <option value="UM">United States Minor Outlying Islands</option>
                                    <option value="UY">Uruguay</option>
                                    <option value="UZ">Uzbekistan</option>
                                    <option value="VU">Vanuatu</option>
                                    <option value="VA">Vatican</option>
                                    <option value="VE">Venezuela</option>
                                    <option value="VN">Vietnam</option>
                                    <option value="WF">Wallis and Futuna</option>
                                    <option value="EH">Western Sahara</option>
                                    <option value="YE">Yemen</option>
                                    <option value="ZM">Zambia</option>
                                    <option value="ZW">Zimbabwe</option>
                                </select>
                            </div>
                        </div>

                        <div class="field-type-country field-name-field-user-country-of-citizenshi field-widget-options-select form-wrapper"
                             id="edit-field-user-country-of-citizenshi">
                            <div class="form-item form-type-select form-item-field-user-country-of-citizenshi-und">
                                <label for="edit-field-user-country-of-citizenshi-und">Country of Citizenship</label>
                                <select id="edit-field-user-country-of-citizenshi-und"
                                        name="field_user_country_of_citizenshi[und]" class="form-select">
                                    <option value="_none">- None -</option>
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
                                    <option value="BW">Botswana</option>
                                    <option value="BV">Bouvet Island</option>
                                    <option value="BR">Brazil</option>
                                    <option value="IO">British Indian Ocean Territory</option>
                                    <option value="VG">British Virgin Islands</option>
                                    <option value="BN">Brunei</option>
                                    <option value="BG">Bulgaria</option>
                                    <option value="BF">Burkina Faso</option>
                                    <option value="BI">Burundi</option>
                                    <option value="KH">Cambodia</option>
                                    <option value="CM">Cameroon</option>
                                    <option value="CA">Canada</option>
                                    <option value="CV">Cape Verde</option>
                                    <option value="BQ">Caribbean Netherlands</option>
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
                                    <option value="CI">Ivory Coast</option>
                                    <option value="JM">Jamaica</option>
                                    <option value="JP">Japan</option>
                                    <option value="JE">Jersey</option>
                                    <option value="JO">Jordan</option>
                                    <option value="KZ">Kazakhstan</option>
                                    <option value="KE">Kenya</option>
                                    <option value="KI">Kiribati</option>
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
                                    <option value="KP">North Korea</option>
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
                                    <option value="KR">South Korea</option>
                                    <option value="SS">South Sudan</option>
                                    <option value="ES">Spain</option>
                                    <option value="LK">Sri Lanka</option>
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
                                    <option value="VI">U.S. Virgin Islands</option>
                                    <option value="UG">Uganda</option>
                                    <option value="UA">Ukraine</option>
                                    <option value="AE">United Arab Emirates</option>
                                    <option value="GB">United Kingdom</option>
                                    <option value="US">United States</option>
                                    <option value="UM">United States Minor Outlying Islands</option>
                                    <option value="UY">Uruguay</option>
                                    <option value="UZ">Uzbekistan</option>
                                    <option value="VU">Vanuatu</option>
                                    <option value="VA">Vatican</option>
                                    <option value="VE">Venezuela</option>
                                    <option value="VN">Vietnam</option>
                                    <option value="WF">Wallis and Futuna</option>
                                    <option value="EH">Western Sahara</option>
                                    <option value="YE">Yemen</option>
                                    <option value="ZM">Zambia</option>
                                    <option value="ZW">Zimbabwe</option>
                                </select>
                            </div>
                        </div>

                        <div class="field-type-text field-name-field-user-mobile-phone field-widget-text-textfield form-wrapper"
                             id="edit-field-user-mobile-phone">
                            <div id="field-user-mobile-phone-add-more-wrapper">
                                <div class="form-item form-type-textfield form-item-field-user-mobile-phone-und-0-value">
                                    <label for="edit-field-user-mobile-phone-und-0-value">Phone Number</label>
                                    <input required class="text-full form-control form-text" type="text"
                                           id="edit-field-user-mobile-phone-und-0-value"
                                           name="field_user_mobile_phone[und][0][value]" value="" size="60"
                                           maxlength="255"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <input type="hidden" name="form_build_id" value="form-11EwhJ8BatstwFSCnSAXL6RWRt_v5aYMZPYPLhyzW2M"/>
                <input type="hidden" name="form_id" value="user_register_form"/>
                <fieldset class="required-fields group-user-physical-address field-group-fieldset form-wrapper">
                    <legend><span class="fieldset-legend">Physical address</span></legend>

                    <div class="fieldset-wrapper">
                        <div class="field-type-text field-name-field-user-pa-address field-widget-text-textfield form-wrapper"
                             id="edit-field-user-pa-address">
                            <div id="field-user-pa-address-add-more-wrapper">
                                <div class="form-item form-type-textfield form-item-field-user-pa-address-und-0-value">
                                    <label for="edit-field-user-pa-address-und-0-value">Address</label>
                                    <input required class="text-full form-control form-text" type="text"
                                           id="edit-field-user-pa-address-und-0-value"
                                           name="field_user_pa_address[und][0][value]" value="" size="60"
                                           maxlength="255"/>
                                </div>
                            </div>
                        </div>

                        <div class="field-type-text field-name-field-user-pa-address-2nd-line field-widget-text-textfield form-wrapper"
                             id="edit-field-user-pa-address-2nd-line">
                            <div id="field-user-pa-address-2nd-line-add-more-wrapper">
                                <div class="form-item form-type-textfield form-item-field-user-pa-address-2nd-line-und-0-value">
                                    <label for="edit-field-user-pa-address-2nd-line-und-0-value">Address (2nd
                                    Line)</label>
                                    <input class="text-full form-control form-text" type="text"
                                           id="edit-field-user-pa-address-2nd-line-und-0-value"
                                           name="field_user_pa_address_2nd_line[und][0][value]" value="" size="60"
                                           maxlength="255"/>
                                </div>
                            </div>
                        </div>

                        <div class="field-type-text field-name-field-user-pa-city field-widget-text-textfield form-wrapper"
                             id="edit-field-user-pa-city">
                            <div id="field-user-pa-city-add-more-wrapper">
                                <div class="form-item form-type-textfield form-item-field-user-pa-city-und-0-value">
                                    <label for="edit-field-user-pa-city-und-0-value">City</label>
                                    <input required class="text-full form-control form-text" type="text"
                                           id="edit-field-user-pa-city-und-0-value"
                                           name="field_user_pa_city[und][0][value]" value="" size="60" maxlength="255"/>
                                </div>
                            </div>
                        </div>

                        <div class="field-type-text field-name-field-user-pa-state-prov-region field-widget-text-textfield form-wrapper"
                             id="edit-field-user-pa-state-prov-region">
                            <div id="field-user-pa-state-prov-region-add-more-wrapper">
                                <div class="form-item form-type-textfield form-item-field-user-pa-state-prov-region-und-0-value">
                                    <label for="edit-field-user-pa-state-prov-region-und-0-value">State/Province/Region</label>
                                    <input required class="text-full form-control form-text" type="text"
                                           id="edit-field-user-pa-state-prov-region-und-0-value"
                                           name="field_user_pa_state_prov_region[und][0][value]" value="" size="60"
                                           maxlength="255"/>
                                </div>
                            </div>
                        </div>

                        <div class="field-type-text field-name-field-user-pa-zip-postal-code field-widget-text-textfield form-wrapper"
                             id="edit-field-user-pa-zip-postal-code">
                            <div id="field-user-pa-zip-postal-code-add-more-wrapper">
                                <div class="form-item form-type-textfield form-item-field-user-pa-zip-postal-code-und-0-value">
                                    <label for="edit-field-user-pa-zip-postal-code-und-0-value">Zip/Postal Code</label>
                                    <input required class="text-full form-control form-text" type="text"
                                           id="edit-field-user-pa-zip-postal-code-und-0-value"
                                           name="field_user_pa_zip_postal_code[und][0][value]" value="" size="60"
                                           maxlength="255"/>
                                </div>
                            </div>
                        </div>

                        <div class="field-type-country field-name-field-user-pa-country field-widget-options-select form-wrapper"
                             id="edit-field-user-pa-country">
                            <div class="form-item form-type-select form-item-field-user-pa-country-und">
                                <label for="edit-field-user-pa-country-und">Country</label>
                                <select id="edit-field-user-pa-country-und" name="field_user_pa_country[und]"
                                        class="form-select">
                                    <option value="_none">- None -</option>
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
                                    <option value="BW">Botswana</option>
                                    <option value="BV">Bouvet Island</option>
                                    <option value="BR">Brazil</option>
                                    <option value="IO">British Indian Ocean Territory</option>
                                    <option value="VG">British Virgin Islands</option>
                                    <option value="BN">Brunei</option>
                                    <option value="BG">Bulgaria</option>
                                    <option value="BF">Burkina Faso</option>
                                    <option value="BI">Burundi</option>
                                    <option value="KH">Cambodia</option>
                                    <option value="CM">Cameroon</option>
                                    <option value="CA">Canada</option>
                                    <option value="CV">Cape Verde</option>
                                    <option value="BQ">Caribbean Netherlands</option>
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
                                    <option value="CI">Ivory Coast</option>
                                    <option value="JM">Jamaica</option>
                                    <option value="JP">Japan</option>
                                    <option value="JE">Jersey</option>
                                    <option value="JO">Jordan</option>
                                    <option value="KZ">Kazakhstan</option>
                                    <option value="KE">Kenya</option>
                                    <option value="KI">Kiribati</option>
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
                                    <option value="KP">North Korea</option>
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
                                    <option value="KR">South Korea</option>
                                    <option value="SS">South Sudan</option>
                                    <option value="ES">Spain</option>
                                    <option value="LK">Sri Lanka</option>
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
                                    <option value="VI">U.S. Virgin Islands</option>
                                    <option value="UG">Uganda</option>
                                    <option value="UA">Ukraine</option>
                                    <option value="AE">United Arab Emirates</option>
                                    <option value="GB">United Kingdom</option>
                                    <option value="US">United States</option>
                                    <option value="UM">United States Minor Outlying Islands</option>
                                    <option value="UY">Uruguay</option>
                                    <option value="UZ">Uzbekistan</option>
                                    <option value="VU">Vanuatu</option>
                                    <option value="VA">Vatican</option>
                                    <option value="VE">Venezuela</option>
                                    <option value="VN">Vietnam</option>
                                    <option value="WF">Wallis and Futuna</option>
                                    <option value="EH">Western Sahara</option>
                                    <option value="YE">Yemen</option>
                                    <option value="ZM">Zambia</option>
                                    <option value="ZW">Zimbabwe</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset class="form-wrapper" id="edit-security-fieldset">
                    <legend><span class="fieldset-legend">Security section</span></legend>

                    <div class="fieldset-wrapper">
                        <div class="form-item form-type-select form-item-questions-0-question">
                            <label for="edit-questions-0-question">Question <span class="form-required"
                                                                                  title="This field is required.">*</span>
                            </label>
                            <select id="edit-questions-0-question" name="questions[0][question]"
                                    class="form-select required">
                                <option value="" selected="selected">- Select -</option>
                                <option value="Your city of birth?">Your city of birth?</option>
                                <option value="Name of your last school?">Name of your last school?</option>
                                <option value="Name of your first pet?">Name of your first pet?</option>
                            </select>
                        </div>

                        <div class="form-item form-type-textfield form-item-questions-0-answer">
                            <label for="edit-questions-0-answer">Answer <span class="form-required"
                                                                              title="This field is required.">*</span>
                            </label>
                            <input required class="form-control form-text required" type="text" id="edit-questions-0-answer"
                                   name="questions[0][answer]" value="" size="60" maxlength="128"/>
                        </div>

                        <div class="captcha"><input type="hidden" name="captcha_sid" value="14"/>
                            <input type="hidden" name="captcha_token" value="98863924dee5bf0865d139ee0c643574"/>

                            <div class="form-item form-type-textfield form-item-captcha-response">
                                <label for="edit-captcha-response">Enter the text in the image <span
                                        class="form-required" title="This field is required.">*</span></label>
                                <input required class="form-control form-text required" type="text" id="edit-captcha-response"
                                       name="captcha_response" value="" size="15" maxlength="128"/>
                            </div>
                            <img src="${assetPath(src: 'image_captcha-sid=14&ts=1521489144.jpeg')}" width="180" height="60"
                                 alt="Image CAPTCHA" title="Image CAPTCHA"/></div>
                    </div>
                </fieldset>

                <div class="form-wrapper form-wrapper" id="edit-legal">
                    <div class="form-item form-type-checkbox form-item-legal-accept">
                        <input type="checkbox" id="edit-legal-accept" name="legal_accept" value="1"
                               class="form-checkbox required"/> <label class="option" for="edit-legal-accept">I Agree to
                    these <a href="#" target="_blank">Terms &amp; Conditions</a> <span
                            class="form-required" title="This field is required.">*</span></label>

                    </div>
                </div>

                <div class="final-description">We will contact you prior to full account activation to request any
                additional information that might be required.
                </div>

                <div class="form-actions form-wrapper" id="edit-actions"><input class="btn btn-success form-submit"
                                                                                type="submit" id="edit-submit"
                                                                                name="create" value="Sign up"/></div>
            </div>
        </form>
    </div>
</div>

<div class="registration-page-footer">
    <div class="site-about pull-right"><a href="http://www.ebanq.com" target="_blank" class="powered-by-link">Powered by
    EBANQ&reg;</a></div>
</div>
</body>
</html>