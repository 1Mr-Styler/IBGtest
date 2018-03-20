<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--[if IEMobile 7]><html class="iem7"  lang="en" dir="ltr"><![endif]-->
<!--[if lte IE 6]><html class="lt-ie9 lt-ie8 lt-ie7"  lang="en" dir="ltr"><![endif]-->
<!--[if (IE 7)&(!IEMobile)]><html class="lt-ie9 lt-ie8"  lang="en" dir="ltr"><![endif]-->
<!--[if IE 8]><html class="lt-ie9"  lang="en" dir="ltr"><![endif]-->
<!--[if (gte IE 9)|(gt IEMobile 7)]><!--><html lang="en" dir="ltr"><!--<![endif]-->
<head>
    <link rel="shortcut icon" href="${assetPath(src: "misc/favicon.png")}" type="image/vnd.microsoft.icon"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>IB Account: <g:layoutTitle default="Grails"/></title>
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="x-rim-auto-match" content="none">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link href="${assetPath(src: 'sites/all/themes/ebanq/css/bootstrap.min.css')}" rel="stylesheet" type="text/css"
          media="screen">
    <style>@import url('${assetPath(src: "modules/system/system.base-p5uklg.css")}');</style>
    <style>@import url("${assetPath(src: "sites/all/modules/contributed/jquery_update/replace/ui/themes/base/minified/jquery.ui.core.min-p5uklg.css")}");
    @import url("${assetPath(src: "sites/all/modules/contributed/jquery_update/replace/ui/themes/base/minified/jquery.ui.theme.min-p5uklg.css")}");
    </style>
    <style>@import url("${assetPath(src: "sites/all/modules/contributed/date/date_api/date-p5uklg.css")}");
    @import url("${assetPath(src: "sites/all/modules/contributed/date/date_popup/themes/datepicker.1.7-p5uklg.css")}");
    @import url("${assetPath(src: "modules/field/theme/field-p5uklg.css")}");
    @import url("${assetPath(src: "modules/node/node-p5uklg.css")}");
    @import url("${assetPath(src: "modules/search/search-p5uklg.css")}");
    @import url("${assetPath(src: "modules/user/user-p5uklg.css")}");
    @import url("${assetPath(src: "sites/all/modules/contributed/views/css/views-p5uklg.css")}");
    @import url("${assetPath(src: "sites/all/modules/ckeditor/css/ckeditor-p5uklg.css")}");
    </style>
    <style>@import url("${assetPath(src: "sites/all/modules/contributed/ctools/css/ctools-p5uklg.css")}");
    @import url("${assetPath(src: "sites/all/modules/custom/ebanq_custom/css/ebanq_custom_select-p5uklg.css")}");
    @import url("${assetPath(src: "sites/all/libraries/jquery.ui.selectmenu/jquery.ui.selectmenu-p5uklg.css")}");
    @import url("${assetPath(src: "sites/all/modules/contributed/field_group/field_group.field_ui-p5uklg.css")}");
    @import url("${assetPath(src: "sites/all/themes/ebanq/css/fonts-p5uklg.css")}");
    </style>
    <style>@import url("${assetPath(src: "sites/all/themes/ebanq/css/styles-p5uklg.css")}");
    @import url("${assetPath(src: "sites/all/themes/ebanq/css/bootstrap.min-p5uklg.css")}");
    </style>
    <link type="text/css" rel="stylesheet" href="${assetPath(src: "custom.css")}" media="all"/>
    <script src="${assetPath(src: "sites/all/modules/contributed/jquery_update/replace/jquery/1.8/jquery.min-v=1.8.2.js")}"></script>

    <script src="${assetPath(src: "misc/jquery.once-v=1.2.js")}"></script>
    <script src="${assetPath(src: "misc/drupal-p5uklg.js")}"></script>
    <script src="${assetPath(src: "sites/all/modules/contributed/jquery_update/replace/ui/ui/minified/jquery.ui.core.min-v=1.10.2.js")}"></script>
    <script src="${assetPath(src: "sites/all/modules/contributed/jquery_update/replace/ui/ui/minified/jquery.ui.widget.min-v=1.10.2.js")}"></script>
    <script src="${assetPath(src: "sites/all/modules/contributed/jquery_update/replace/ui/ui/minified/jquery.ui.position.min-v=1.10.2.js")}"></script>
    <script src="${assetPath(src: "sites/all/modules/contributed/jquery_update/replace/ui/external/jquery.cookie-v=67fb34f6a866c40d0570.js")}"></script>
    <script src="${assetPath(src: "sites/all/libraries/jquery.maskedinput/src/jquery.maskedinput-p5uklg.js")}"></script>
    <script src="${assetPath(src: "misc/states-v=7.54.js")}"></script>
    <script src="${assetPath(src: "misc/form-v=7.54.js")}"></script>
    <script src="${assetPath(src: "sites/all/modules/custom/ebanq_custom/js/ebanq_custom-p5uklg.js")}"></script>
    <script src="${assetPath(src: "sites/all/modules/contributed/captcha/captcha-p5uklg.js")}"></script>
    <script src="${assetPath(src: "sites/all/libraries/jquery.ui.selectmenu/jquery.ui.selectmenu-p5uklg.js")}"></script>
    <script src="${assetPath(src: "sites/all/modules/contributed/date/date-p5uklg.js")}"></script>
    <script src="${assetPath(src: "sites/all/modules/contributed/field_group/field_group-p5uklg.js")}"></script>
    <script src="${assetPath(src: "sites/all/themes/ebanq/js/script-p5uklg.js")}"></script>
    <script>jQuery.extend(Drupal.settings, {
        "basePath": "\/",
        "pathPrefix": "",
        "ajaxPageState": {
            "theme": "ebanq",
            "theme_token": "RX_xYpHvlFYqhqLmnv4oQQ_ywT-A9oSW8dzLZwwfOG4",
            "js": {
                "sites\/all\/modules\/contributed\/jquery_update\/replace\/jquery\/1.8\/jquery.min.js": 1,
                "misc\/jquery.once.js": 1,
                "misc\/drupal.js": 1,
                "sites\/all\/modules\/contributed\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.core.min.js": 1,
                "sites\/all\/modules\/contributed\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.widget.min.js": 1,
                "sites\/all\/modules\/contributed\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.position.min.js": 1,
                "sites\/all\/modules\/contributed\/jquery_update\/replace\/ui\/external\/jquery.cookie.js": 1,
                "sites\/all\/libraries\/jquery.maskedinput\/src\/jquery.maskedinput.js": 1,
                "misc\/states.js": 1,
                "misc\/form.js": 1,
                "sites\/all\/modules\/custom\/ebanq_custom\/js\/ebanq_custom.js": 1,
                "sites\/all\/modules\/contributed\/captcha\/captcha.js": 1,
                "sites\/all\/libraries\/jquery.ui.selectmenu\/jquery.ui.selectmenu.js": 1,
                "sites\/all\/modules\/contributed\/date\/date.js": 1,
                "sites\/all\/modules\/contributed\/field_group\/field_group.js": 1,
                "sites\/all\/themes\/ebanq\/js\/script.js": 1
            },
            "css": {
                "modules\/system\/system.base.css": 1,
                "modules\/system\/system.menus.css": 1,
                "modules\/system\/system.messages.css": 1,
                "modules\/system\/system.theme.css": 1,
                "misc\/ui\/jquery.ui.core.css": 1,
                "misc\/ui\/jquery.ui.theme.css": 1,
                "sites\/all\/modules\/contributed\/date\/date_api\/date.css": 1,
                "sites\/all\/modules\/contributed\/date\/date_popup\/themes\/datepicker.1.7.css": 1,
                "modules\/field\/theme\/field.css": 1,
                "modules\/node\/node.css": 1,
                "modules\/search\/search.css": 1,
                "modules\/user\/user.css": 1,
                "sites\/all\/modules\/contributed\/views\/css\/views.css": 1,
                "sites\/all\/modules\/ckeditor\/css\/ckeditor.css": 1,
                "sites\/all\/modules\/contributed\/ctools\/css\/ctools.css": 1,
                "sites\/all\/modules\/custom\/ebanq_custom\/css\/ebanq_custom_select.css": 1,
                "sites\/all\/libraries\/jquery.ui.selectmenu\/jquery.ui.selectmenu.css": 1,
                "sites\/all\/modules\/contributed\/field_group\/field_group.field_ui.css": 1,
                "sites\/all\/themes\/ebanq\/css\/fonts.css": 1,
                "sites\/all\/themes\/ebanq\/system.menus.css": 1,
                "sites\/all\/themes\/ebanq\/system.messages.css": 1,
                "sites\/all\/themes\/ebanq\/system.theme.css": 1,
                "sites\/all\/themes\/ebanq\/css\/styles.css": 1,
                "sites\/all\/themes\/ebanq\/css\/bootstrap.min.css": 1,
                "https:\/\/demo.ebanq.com\/custom.css": 1
            }
        },
        "scheme_color": {
            "header_back": "ffffff",
            "header_elements": "5f5f5f",
            "header_bottom_line": "e6e6e6",
            "non_active_menu_icons": "7a7a7a",
            "menu_elements": "a9a9a9",
            "menu_back": "3b3e42",
            "main": "94c817",
            "login_background": "fff",
            "login_page_content": "eee"
        },
        "states": {"#edit-field-user-company-name": {"visible": {":input[name=\u0022field_profile_type[und]\u0022]": {"value": 1}}}},
        "urlIsAjaxTrusted": {"\/user\/register": true},
        "field_group": {"fieldset": "form"}
    });</script>
    <g:layoutHead/>
</head>

<body class="html not-front logged-in no-sidebars page-user page-user- page-user-119 section-user">
<body class="html not-front logged-in no-sidebars page-user-accounts section-user-accounts">
<div class="ie-browser-header">
    You are using Internet Explorer 8. Some features might not work or display properly. It is highly recommended to
    update the browser or use a different one.
</div>

<p id="skip-link">
    <a href="#main-menu" class="element-invisible element-focusable">Jump to navigation</a>
</p>

<div class="header">

    <div class="button-menu "></div>
    <a href="/" class="logo pull-left">
        <div class="default-logo-wrapper" style="padding-top: 19.004975124378px;"><img
                style="width:130px; height21.990049751244px; margin-left:20px;"
                src="${assetPath(src: 'sites/all/themes/ebanq/images/logo.png')}" alt="Ebanq"/></div>
    </a>

    <div class="username pull-left">Hi, <span><a href="${createLink(controller: 'user', action: 'profile')}">${session.user.fname} ${session.user.lname}.</a></span></div>
    <a href="messages.html" class="box-message ">
        <div class="mail" id="mail-fall">
            <svg version="1.1" id="mail" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                 x="0px" y="0px"
                 viewBox="0 0 22 18" enable-background="new 0 0 22 18" xml:space="preserve">
                <path fill="#2C0D0F" d="M19,0H3C1.3,0,0,1.3,0,3v12c0,1.7,1.3,3,3,3h16c1.7,0,3-1.3,3-3V3C22,1.3,20.7,0,19,0z M19,2
            c0.1,0,0.2,0,0.3,0.1L11,8.7L2.7,2.1C2.8,2,2.9,2,3,2H19z M19,16H3c-0.6,0-1-0.4-1-1V4.1l8.4,6.7c0.2,0.1,0.4,0.2,0.6,0.2
            c0.2,0,0.4-0.1,0.6-0.2L20,4.1V15C20,15.6,19.6,16,19,16z"/>
            </svg>
        </div>

    </a>
    <a href="${createLink(controller: 'user', action: 'logout')}" class="box-login pull-right">
        <div class="logout inline-block" id="logout-fall">
            <svg version="1.1" id="logout" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                 x="0px" y="0px"
                 viewBox="0 0 20 22" enable-background="new 0 0 20 22" xml:space="preserve">
                <path fill="#2C0D0F" d="M10,22c-1.3,0-2.7-0.3-3.9-0.8c-0.6-0.3-1.2-0.6-1.7-0.9c-0.5-0.4-1-0.8-1.5-1.2c-0.5-0.5-0.9-0.9-1.2-1.5
          c-0.4-0.5-0.7-1.1-0.9-1.7C0.3,14.7,0,13.3,0,12s0.3-2.7,0.8-3.9C1,7.5,1.3,6.9,1.7,6.4c0.4-0.5,0.8-1,1.2-1.5c0.4-0.4,1-0.4,1.4,0
          c0.4,0.4,0.4,1,0,1.4C3.6,7.1,3,7.9,2.6,8.9C2.2,9.9,2,10.9,2,12c0,1.1,0.2,2.1,0.6,3.1c0.4,1,1,1.8,1.7,2.5
          c0.7,0.7,1.6,1.3,2.5,1.7c1,0.4,2,0.6,3.1,0.6s2.1-0.2,3.1-0.6c1-0.4,1.8-1,2.5-1.7c0.7-0.7,1.3-1.6,1.7-2.5c0.4-1,0.6-2,0.6-3.1
          c0-1.1-0.2-2.1-0.6-3.1c-0.4-1-1-1.8-1.7-2.5c-0.4-0.4-0.4-1,0-1.4c0.4-0.4,1-0.4,1.4,0c0.5,0.5,0.9,0.9,1.2,1.5
          c0.4,0.5,0.7,1.1,0.9,1.7C19.7,9.3,20,10.7,20,12s-0.3,2.7-0.8,3.9c-0.3,0.6-0.6,1.2-0.9,1.7c-0.4,0.5-0.8,1-1.2,1.5
          c-0.5,0.5-1,0.9-1.5,1.2c-0.5,0.4-1.1,0.7-1.7,0.9C12.7,21.7,11.3,22,10,22z M11,11V1c0-0.6-0.4-1-1-1S9,0.4,9,1v10c0,0.6,0.4,1,1,1
          S11,11.6,11,11z"/>
            </svg>
        </div>
        <span class="logout-text">Log Out</span>
    </a>
</div>

<div class="main-table">
    <div class="main-row">

        <nav class="nav">
            <a href="${createLink(controller: 'user', action: 'index')}" class="nav-item active">
                <div class="icon-accounts" id="accounts-fall">
                    <svg version="1.1" id="account" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                         viewBox="0 0 46 40.4" enable-background="new 0 0 46 40.4" xml:space="preserve">
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#2C0D0F" d="M45,40.4H1c-0.6,0-1-0.4-1-1s0.4-1,1-1h44c0.6,0,1,0.4,1,1
                S45.6,40.4,45,40.4z M15,30.4c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1H7c-0.6,0-1-0.4-1-1c0-0.6,0.4-1,1-1h1v-13H7c-0.6,0-1-0.4-1-1
                c0-0.6,0.4-1,1-1h8c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1h-1v13H15z M12,17.4h-2v13h2V17.4z M27,30.4c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1h-8
                c-0.6,0-1-0.4-1-1c0-0.6,0.4-1,1-1h1v-13h-1c-0.6,0-1-0.4-1-1c0-0.6,0.4-1,1-1h8c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1h-1v13H27z
                 M24,17.4h-2v13h2V17.4z M43,35.4c0,0.6-0.4,1-1,1H4c-0.6,0-1-0.4-1-1s0.4-1,1-1h38C42.6,34.4,43,34.9,43,35.4z M39,30.4
                c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1h-8c-0.6,0-1-0.4-1-1c0-0.6,0.4-1,1-1h1v-13h-1c-0.6,0-1-0.4-1-1c0-0.6,0.4-1,1-1h8
                c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1h-1v13H39z M36,17.4h-2v13h2V17.4z M2,11.4L23,0l21,11.4v2H2V11.4z M39.5,11.4L23,2.9L6.4,11.4
                H39.5z"/>
                    </svg>
                </div>

                <div class="name">Accounts</div>
            </a>

            <a href="transfer.html" class="nav-item">
                <div class="icon-transfer" id="transfer-fall">
                    <svg version="1.1" id="transfer" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                         viewBox="0 0 40 40" enable-background="new 0 0 40 40" xml:space="preserve">
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#2C0D0F" d="M20,40C9,40,0,31,0,20S9,0,20,0s20,9,20,20S31,40,20,40z M20,2
                C10.1,2,2,10.1,2,20s8.1,18,18,18c9.9,0,18-8.1,18-18S29.9,2,20,2z"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#2C0D0F" d="M16,27.8c-0.5,0-1-0.4-1-1l0-6.5L4.4,31L3,29.6L13.7,19l-6.6,0
                        c-0.5,0-1-0.4-1-1c0-0.5,0.4-1,1-1l8.9,0c0.3,0,0.5,0.1,0.7,0.3c0.2,0.2,0.3,0.4,0.3,0.7v8.9C17,27.4,16.6,27.8,16,27.8z"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#2C0D0F" d="M37,11.4L26.3,22l6.6,0c0.5,0,1,0.4,1,1s-0.4,1-1,1L24,24
                c-0.3,0-0.5-0.1-0.7-0.3C23.1,23.6,23,23.3,23,23v-8.9c0-0.5,0.4-1,1-1s1,0.4,1,1l0,6.5L35.6,10L37,11.4z"/>
                    </svg>
                </div>

                <div class="name">Transfer</div>
            </a>

            <a href="reports.html" class="nav-item">
                <div class="icon-reports" id="reports-fall">
                    <svg version="1.1" id="report" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink"
                         x="0px" y="0px"
                         viewBox="0 0 40 40" enable-background="new 0 0 40 40" xml:space="preserve">
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#2C0D0F" d="M36,40H4c-2.2,0-4-1.8-4-4V7c0-2.2,1.8-4,4-4h6c0,0,0,0,0,0
              c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1v0H4C2.9,5,2,5.9,2,7v29c0,1.1,0.9,2,2,2h32c1.1,0,2-0.9,2-2V7c0-1.1-0.9-2-2-2h-6v0
              c-0.6,0-1-0.4-1-1c0-0.6,0.4-1,1-1c0,0,0,0,0,0h6c2.2,0,4,1.8,4,4v29C40,38.2,38.2,40,36,40z M31,8c0,0.6-0.4,1-1,1H10
              C9.4,9,9,8.6,9,8c0-0.6,0.4-1,1-1c0,0,1.1-0.1,2-1l2-2c0,0,0.8-1,2-1h1c0-1.7,1.3-3,3-3c1.7,0,3,1.3,3,3h1c1.3,0,2,1,2,1l2,2
              c0.9,0.9,2,1,2,1C30.6,7,31,7.4,31,8z M20,2c-0.6,0-1,0.4-1,1h2C21,2.4,20.6,2,20,2z M25.4,6c0,0-0.7-1-1.8-1h-7.1
              c-1.1,0-1.8,1-1.8,1l-0.9,1h12.5L25.4,6z"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#2C0D0F" d="M7,28c0-0.6,0.4-1,1-1h9c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1H8
              C7.4,29,7,28.6,7,28z M23,17h9c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1h-9c-0.6,0-1-0.4-1-1C22,17.4,22.4,17,23,17z M23,22h9
              c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1h-9c-0.6,0-1-0.4-1-1C22,22.4,22.4,22,23,22z M23,27h9c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1h-9
              c-0.6,0-1-0.4-1-1C22,27.4,22.4,27,23,27z M8,22h9c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1H8c-0.6,0-1-0.4-1-1C7,22.4,7.4,22,8,22z M18,18
              c0,0.6-0.4,1-1,1H8c-0.6,0-1-0.4-1-1c0-0.6,0.4-1,1-1h9C17.6,17,18,17.4,18,18z"/>
                    </svg>
                </div>

                <div class="name">Reports</div>
            </a>

            <a href="news.html" class="nav-item">
                <div class="icon-news" id="news-fall">
                    <svg version="1.1" id="new" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink"
                         x="0px" y="0px"
                         viewBox="0 0 44 34" enable-background="new 0 0 44 34" xml:space="preserve">
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#2C0D0F" d="M39,34C39,34,39,34,39,34L5,34c0,0,0,0,0,0c-2.8,0-5-2.2-5-5V1
                  c0-0.6,0.4-1,1-1c0,0,0,0,0,0h34c0,0,0,0,0,0c0.4,0,0.8,0.3,0.9,0.6C36,0.7,36,0.9,36,1c0,0,0,0,0,0v14h7c0.6,0,1,0.4,1,1v13
                  C44,31.8,41.8,34,39,34z M34,29V2H2v27l0,0l0,0c0,1.7,1.3,3,3,3h30C34.4,31.2,34,30.1,34,29z M42,17h-6v12c0,1.7,1.3,3,3,3
                  s3-1.3,3-3V17z M5,27c0-0.6,0.4-1,1-1h9c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1H6C5.4,28,5,27.6,5,27z M21,16h9c0.6,0,1,0.4,1,1
                  c0,0.6-0.4,1-1,1h-9c-0.6,0-1-0.4-1-1C20,16.4,20.4,16,21,16z M21,21h9c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1h-9c-0.6,0-1-0.4-1-1
                  C20,21.4,20.4,21,21,21z M21,26h9c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1h-9c-0.6,0-1-0.4-1-1C20,26.4,20.4,26,21,26z M25,10H11
                  c-0.6,0-1-0.4-1-1c0-0.6,0.4-1,1-1h14c0.6,0,1,0.4,1,1C26,9.6,25.6,10,25,10z M6,21h9c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1H6
                  c-0.6,0-1-0.4-1-1C5,21.4,5.4,21,6,21z M16,17c0,0.6-0.4,1-1,1H6c-0.6,0-1-0.4-1-1c0-0.6,0.4-1,1-1h9C15.6,16,16,16.4,16,17z"/>
                    </svg>
                </div>

                <div class="name">News</div>
            </a>

            <a href="user/119.html" class="nav-item profile-nav-item">
                <div class="icon-profile" id="profile-fall">
                    <svg version="1.1" id="profile-icon" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                         viewBox="0 0 42 42" enable-background="new 0 0 42 42" xml:space="preserve">
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#010202" d="M21,42C9.4,42,0,32.6,0,21C0,9.4,9.4,0,21,0c11.6,0,21,9.4,21,21
                C42,32.6,32.6,42,21,42z M32.6,36c-0.2-0.2-0.4-0.5-0.5-0.7c-0.3-0.4-0.6-0.8-0.8-1.2c0,0-1.4-1.9-6.3-2.1c-1.7,0-3-1.3-3-3.1l0-0.9
                c0-0.1,0,0.1,0,0v-1l1-1c0.7-0.3,1.7-0.9,2.4-1.5l0.1-0.1c0.6-0.4,1.4-1.1,1.5-1.4l0-0.4c0.4-1.9,1-5.4,1-6.6c0-4.7-2.3-7-7-7
                c-4.8,0-7,2.2-7,7c0,1.2,0.6,4.7,1,6.6l0,0.4c0.1,0.3,0.8,1.1,1.5,1.5l0.1,0.1c0.8,0.6,1.7,1.2,2.5,1.5l1,1v1c0,0.1,0-0.1,0,0l0,0.9
                c0,1.8-1.2,3.1-2.9,3.1c0,0,0,0,0,0c-5,0.2-6.4,2.1-6.4,2.1c-0.3,0.4-0.5,0.8-0.8,1.2c-0.2,0.2-0.4,0.5-0.5,0.7
                c3.2,2.5,7.2,4,11.6,4C25.4,40,29.4,38.5,32.6,36z M21,2C10.5,2,2,10.5,2,21c0,5.4,2.3,10.2,5.9,13.7C8.2,34.1,8.6,33.6,9,33
                c0,0,1.7-2.7,8-3c0.6,0,1-0.4,1-1.1h0c0-0.5,0-0.9,0-0.9c0-0.1,0-0.2,0-0.4c-0.7-0.3-1.6-0.8-2.5-1.5c0,0-2.4-1.5-2.4-3.1
                c0,0-1-5.1-1-7c0-4.6,2-9,9-9c6.9,0,9,4.4,9,9c0,1.8-1,7-1,7c0,1.6-2.4,3.1-2.4,3.1c-1,0.7-1.8,1.2-2.5,1.5c0,0.1,0,0.2,0,0.3
                c0,0,0,0.4,0,0.9h0c0,0.6,0.3,1.1,1,1.1c6.4,0.3,8,3,8,3c0.4,0.6,0.8,1.1,1.1,1.7C37.7,31.2,40,26.4,40,21C40,10.5,31.5,2,21,2z"/>
                    </svg>
                </div>

                <div class="name">Profile</div>
            </a>

            <a href="messages.html" class="nav-item messages-nav-item">
                <div class="icon-messages" id="messages-fall">
                    <svg version="1.1" id="messages" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                         viewBox="0 0 46 33" enable-background="new 0 0 46 33" xml:space="preserve">
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#010202" d="M42,33H4c-2.2,0-4-1.8-4-4V4c0-2.2,1.8-4,4-4h38c2.2,0,4,1.8,4,4
                    v25C46,31.2,44.2,33,42,33z M44,4c0-1.1-0.9-2-2-2H4C2.9,2,2,2.9,2,4v25c0,1.1,0.9,2,2,2h38c1.1,0,2-0.9,2-2V4z"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#010202" d="M44.7,4.7c0.4-0.4,0.4-1,0-1.4c-0.4-0.4-1-0.4-1.4,0L23,15.6
                  L2.7,3.3c-0.4-0.4-1-0.4-1.4,0c-0.4,0.4-0.4,1,0,1.4l20.9,12.9c0,0,0.1,0.1,0.1,0.1c0.2,0.2,0.5,0.3,0.7,0.3c0.3,0,0.5-0.1,0.7-0.3
                  c0,0,0.1-0.1,0.1-0.1L44.7,4.7z"/>
                    </svg>
                </div>

                <div class="name">Messages</div>
            </a>
        </nav>

        <g:layoutBody/>

    </div>
</div>

<div class="menu-overflow"></div>
<script src="${assetPath(src: "sites/all/themes/ebanq/js/bootstrap.min.js")}" type="text/javascript"></script>

<div class="region region-page-bottom">
    <form id="autologout-cache-check"><input type="hidden" id="autologout-cache-check-bit" value="0"/></form>
</div>

</body>
</html>
