<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Login</title>
</head>

<body class="html not-front not-logged-in no-sidebars page-user page-user-login section-user login-pages">
<div class="ie-browser-header">
    You are using Internet Explorer 8. Some features might not work or display properly. It is highly recommended to
    update the browser or use a different one.
</div>

<p id="skip-link">
    <a href="#main-menu" class="element-invisible element-focusable">Jump to navigation</a>
</p>

<div class="header high-header">
    <a href="/" class="logo">
        <div class="default-logo-wrapper" style="padding-top: 26.5px;"><img style="width:201px; height34px;"
                                                                            src="${assetPath(src: 'sites/all/themes/ebanq/images/logo.png')}"
                                                                            alt="Ebanq"/></div>
    </a></div>

<div class="content">
    <ul class="big-screen-tabs">
        <li class="active"><a href="/">Log In</a></li>
        <li class="or">or</li>
        <li><a href="/register">Sign Up</a></li>
    </ul>

    <div class="login-form">

        <form action="${createLink(controller: 'register', action: 'login')}" method="post" id="user-login"
              accept-charset="UTF-8">
            <div>
                <div class="form-item form-type-textfield form-item-name">
                    <input placeholder="Name" class="form-control form-text required" type="text" id="edit-name"
                           name="name" value="" size="60" maxlength="60" required/>
                </div>

                <div class="form-item form-type-password form-item-pass">
                    <input placeholder="Password" class="form-control form-text required" type="password" id="edit-pass"
                           name="pass" size="60" maxlength="128" required/>
                </div>
                <input type="hidden" name="form_build_id" value="form-6oqSepuW_uBS8QJPhnP8_AQarecHF5ozdysmN1SMmNg"/>
                <input type="hidden" name="form_id" value="user_login"/>
                <input disabled="disabled" type="hidden" name="ip" value="2402:1980:81c1:17:b158:5971:8a9d:447e"/>

                <div class="form-actions form-wrapper" id="edit-actions"><input class="btn btn-success form-submit"
                                                                                type="submit" id="edit-submit" name="op"
                                                                                value="Sign in"/></div>
            </div>
        </form>
    </div>

    <div class="login-footer container-fluid">
        <div class="login-title text-center">Security Tips</div>

        <div class="row">
            <div class="col-sm-4">
                <div class="icon-login icon-login-profile" id="login-profile-fallback">
                    <svg version="1.1" id="" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                         viewBox="0 0 80 80" enable-background="new 0 0 80 80" xml:space="preserve">
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#94c817" d="M0,40c0,22.1,17.9,40,40,40s40-17.9,40-40S62.1,0,40,0S0,17.9,0,40
                        z M2,40c0-20.9,17-38,38-38s38,17,38,38s-17,38-38,38S2,60.9,2,40z"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#94c817" d="M59,56H21c-2.2,0-4-1.8-4-4V31c0-2.2,1.8-4,4-4h15v-4
                        c0-2.2,1.8-4,4-4c2.2,0,4,1.8,4,4v4h15c2.2,0,4,1.8,4,4v21C63,54.2,61.2,56,59,56z M33,48.5C33,48.5,33,48.5,33,48.5
                        c0,0,0-0.8,0-0.8s1.2-0.6,2-1.4c0.5-0.4,0.7-1.4,0.7-1.4c0.1-0.8,0.2-2.9,0.2-3.7c0-2.1-1-4.3-4-4.3c0,0,0,0,0,0c0,0,0,0,0,0
                        c-3,0-4,2.2-4,4.3c0,0.8,0.1,2.9,0.2,3.7c0,0,0.2,0.9,0.7,1.4c0.9,0.8,2,1.4,2,1.4s0,0.8,0,0.8c0,0,0,0,0,0c0,0,0,1.1,0,1.5
                        c0,1.4-1.4,2-2.2,2c0,0,0,0,0,0c-2.6,0.1-3.2,1-3.2,1c-0.2,0.3-0.4,0.5-0.6,1h14c-0.2-0.5-0.4-0.8-0.6-1c0,0-0.6-0.9-3.2-1
                        c0,0,0,0,0,0c-0.9,0-2.2-0.7-2.2-2C33,49.6,33,48.5,33,48.5z M42,23c0-1.1-0.9-2-2-2c-1.1,0-2,0.9-2,2v6c0,1.1,0.9,2,2,2
                        c1.1,0,2-0.9,2-2V23z M61,31c0-1.1-0.9-2-2-2H44c0,2.2-1.8,4-4,4s-4-1.8-4-4H21c-1.1,0-2,0.9-2,2v21c0,1.1,0.9,2,2,2h1.8
                        c0.2-0.6,0.7-1.5,1.2-2.2c0,0,0.8-1.7,5-1.8c0,0,0-1,0-1c-0.3-0.2-0.7-0.5-1.1-0.8c-0.3-0.2-1.2-1-1.5-2.6C26.4,45,26,42.4,26,41.4
                        c0-3.2,1.3-6.4,6-6.4c0,0,0.1,0,0.1,0c4.7,0,6,3.2,6,6.4c0,1.1-0.4,3.6-0.5,4.2c-0.3,1.6-1.2,2.4-1.5,2.6c-0.3,0.3-0.7,0.6-1.1,0.8
                        c0,0,0,1,0,1c4.2,0.1,5,1.8,5,1.8c0.5,0.7,0.9,1.7,1.2,2.2H59c1.1,0,2-0.9,2-2V31z M56,40H44c-0.6,0-1-0.4-1-1s0.4-1,1-1h12
                        c0.6,0,1,0.4,1,1S56.6,40,56,40z M44,44h2c0.6,0,1,0.4,1,1s-0.4,1-1,1h-2c-0.6,0-1-0.4-1-1S43.4,44,44,44z M44,48h6c0.6,0,1,0.4,1,1
                        s-0.4,1-1,1h-6c-0.6,0-1-0.4-1-1S43.4,48,44,48z M48,45c0-0.6,0.4-1,1-1h4c0.6,0,1,0.4,1,1s-0.4,1-1,1h-4C48.4,46,48,45.6,48,45z
                         M39,23h2v2h-2V23z"/>
                    </svg>
                </div>

                <div class="login-bottom-text">
                    This is a the official portal of the Royal Bank Online Banking Software. Feel free to contact us should you have any questions,
                    but do not release private information to customer representatives.
                </div>
            </div>

            <div class="col-sm-4">
                <div class="icon-login icon-login-lock" id="login-lock-fallback">
                    <svg version="1.1" id="login-lock" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                         viewBox="0 0 80 80" enable-background="new 0 0 80 80" xml:space="preserve">
                        <path fill="#94c817" d="M28.9,60.8c-0.2,0.3-0.6,0.5-0.9,0.5c-0.2,0-0.4,0-0.5-0.1l-3.3-1.8v3.6c0,0.6-0.5,1.1-1.1,1.1
                        c-0.6,0-1.1-0.5-1.1-1.1v-3.6l-3.3,1.8c-0.2,0.1-0.4,0.1-0.5,0.1c-0.4,0-0.7-0.2-0.9-0.5c-0.3-0.5-0.1-1.1,0.4-1.4l3.3-1.8l-3.3-1.8
                        c-0.5-0.3-0.7-0.9-0.4-1.4c0.3-0.5,1-0.7,1.5-0.4l3.3,1.8v-3.6c0-0.6,0.5-1.1,1.1-1.1c0.6,0,1.1,0.5,1.1,1.1v3.6l3.3-1.8
                        c0.5-0.3,1.2-0.1,1.5,0.4c0.3,0.5,0.1,1.1-0.4,1.4l-3.3,1.8l3.3,1.8C29,59.6,29.2,60.2,28.9,60.8z"/>
                        <path fill="#94c817" d="M45.9,60.8c-0.2,0.3-0.6,0.5-0.9,0.5c-0.2,0-0.4,0-0.5-0.1l-3.3-1.8v3.6c0,0.6-0.5,1.1-1.1,1.1
                        c-0.6,0-1.1-0.5-1.1-1.1v-3.6l-3.3,1.8c-0.2,0.1-0.4,0.1-0.5,0.1c-0.4,0-0.7-0.2-0.9-0.5c-0.3-0.5-0.1-1.1,0.4-1.4l3.3-1.8l-3.3-1.8
                        c-0.5-0.3-0.7-0.9-0.4-1.4c0.3-0.5,1-0.7,1.5-0.4l3.3,1.8v-3.6c0-0.6,0.5-1.1,1.1-1.1c0.6,0,1.1,0.5,1.1,1.1v3.6l3.3-1.8
                        c0.5-0.3,1.2-0.1,1.5,0.4c0.3,0.5,0.1,1.1-0.4,1.4l-3.3,1.8l3.3,1.8C46,59.6,46.2,60.2,45.9,60.8z"/>
                        <path fill="#94c817" d="M61.9,60.8c-0.2,0.3-0.6,0.5-0.9,0.5c-0.2,0-0.4,0-0.5-0.1l-3.3-1.8v3.6c0,0.6-0.5,1.1-1.1,1.1
                        c-0.6,0-1.1-0.5-1.1-1.1v-3.6l-3.3,1.8c-0.2,0.1-0.4,0.1-0.5,0.1c-0.4,0-0.7-0.2-0.9-0.5c-0.3-0.5-0.1-1.1,0.4-1.4l3.3-1.8l-3.3-1.8
                        c-0.5-0.3-0.7-0.9-0.4-1.4c0.3-0.5,1-0.7,1.5-0.4l3.3,1.8v-3.6c0-0.6,0.5-1.1,1.1-1.1c0.6,0,1.1,0.5,1.1,1.1v3.6l3.3-1.8
                        c0.5-0.3,1.2-0.1,1.5,0.4c0.3,0.5,0.1,1.1-0.4,1.4l-3.3,1.8l3.3,1.8C62,59.6,62.2,60.2,61.9,60.8z"/>
                        <path fill="#94c817" d="M48,27v-7c0-4.7-3.2-8-8-8s-8,3.3-8,8v7c-1.8,0-4,1.3-4,3.1v12.8c0,1.8,1.5,3.2,3.3,3.2h17.5
                        c1.8,0,3.3-1.4,3.3-3.2V30.1C52,28.3,49.8,27,48,27z M34,20c0-3.5,2.4-6,6-6c3.6,0,6,2.5,6,6v7H34V20z M50,43c0,0.6-0.4,1-1,1H31
                        c-0.6,0-1-0.4-1-1V30c0-0.6,0.7-1,1.3-1h17.5c0.6,0,1.3,0.4,1.3,1V43z M41,36v-3c0-0.6-0.4-1-1-1s-1,0.4-1,1v3
                        c-0.8,0-1.2,0.7-1.2,1.5c0,1.2,0.4,2.5,2.2,2.5c1.8,0,2.2-1.3,2.2-2.5C42.2,36.7,41.8,36,41,36z"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#94c817" d="M0,40c0,22.1,17.9,40,40,40s40-17.9,40-40S62.1,0,40,0S0,17.9,0,40
                        z M2,40c0-20.9,17-38,38-38s38,17,38,38s-17,38-38,38S2,60.9,2,40z"/>
                    </svg>
                </div>

                <div class="login-bottom-text">
                    Any transactions performed would be carefully reviewed before processing to ensure your safety.
                </div>
            </div>

            <div class="col-sm-4">
                <div class="icon-login icon-login-messages" id="login-messages-fallback">
                    <svg version="1.1" id="login-messages" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                         viewBox="0 0 80 80" enable-background="new 0 0 80 80" xml:space="preserve">
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#94c817" d="M0,40c0,22.1,17.9,40,40,40c22.1,0,40-17.9,40-40S62.1,0,40,0
                        C17.9,0,0,17.9,0,40z M2,40c0-20.9,17-38,38-38c20.9,0,38,17,38,38s-17,38-38,38C19.1,78,2,60.9,2,40z"/>
                        <path fill="#94c817" d="M23,52c-0.3,0-0.6-0.2-0.8-0.4c-0.3-0.5-0.2-1.1,0.3-1.4l9-6c0.5-0.3,1.1-0.2,1.4,0.3
                        c0.3,0.5,0.2,1.1-0.3,1.4l-9,6C23.4,51.9,23.2,52,23,52z"/>
                        <path fill="#94c817" d="M53,52c-0.2,0-0.4-0.1-0.6-0.2l-9-6c-0.5-0.3-0.6-0.9-0.3-1.4c0.3-0.5,0.9-0.6,1.4-0.3l9,6
                        c0.5,0.3,0.6,0.9,0.3,1.4C53.6,51.8,53.3,52,53,52z"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#94c817" d="M60,37c-5.5,0-10-4.5-10-10s4.5-10,10-10c5.5,0,10,4.5,10,10
                        S65.5,37,60,37z M60,19c-4.4,0-8,3.6-8,8c0,4.4,3.6,8,8,8c4.4,0,8-3.6,8-8C68,22.6,64.4,19,60,19z"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#94c817" d="M61.4,27l2.2,2.2c0.4,0.4,0.4,1,0,1.4c-0.4,0.4-1,0.4-1.4,0
                        L60,28.4l-2.3,2.3c-0.4,0.4-1,0.4-1.4,0c-0.4-0.4-0.4-1,0-1.4l2.3-2.3l-2.2-2.2c-0.4-0.4-0.4-1,0-1.4c0.4-0.4,1-0.4,1.4,0l2.2,2.2
                        l2.3-2.3c0.4-0.4,1-0.4,1.4,0c0.4,0.4,0.4,1,0,1.4L61.4,27z"/>
                        <path fill="#94c817" d="M50.5,34.9L38,44.8L24.5,34.2c-0.5-0.3-1.1-0.2-1.4,0.3c-0.3,0.5-0.2,1.1,0.3,1.4L38,47.2l13.9-10.9
                        C51.4,35.9,51,35.4,50.5,34.9z"/>
                        <path fill="#94c817" d="M57,38.9V54c0,1.1-0.9,2-2,2H21c-1.1,0-2-0.9-2-2V30c0-1.1,0.9-2,2-2h26.8c0-0.2,0-0.5,0-0.7v-0.5
                        c0-0.3,0-0.5,0-0.8H21c-2.2,0-4,1.8-4,4v24c0,2.2,1.8,4,4,4h34c2.2,0,4-1.8,4-4V39.2C58.3,39.2,57.6,39.1,57,38.9z"/>
                    </svg>
                </div>

                <div class="login-bottom-text">
                    We hope you enjoy your experience with the most user-friendly and beautiful online banking system in
                    the world.
                </div>
            </div>
        </div>
    </div>

    <div class="powered-by"><a href="http://itcbcorp.com" class="powered-by-link" target="_blank">Powered by
    Royal Bank Groups&reg;</a></div>
</div>
</body>

</html>
