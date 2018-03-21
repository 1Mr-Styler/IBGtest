<%--
  Created by IntelliJ IDEA.
  User: styl3r
  Date: 3/22/18
  Time: 1:30 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="lg"/>
    <title>${userInstance.fname}</title>
</head>

<body class="page-user page-user- page-user-119 page-user-settings section-user">
<div class="content">
    <div class="clearfix"></div>

    <div class="clearfix"></div>


    <div class="dropdown small-screen-tabs">
        <a class="btn btn-default-themes dropdown-toggle" data-toggle="dropdown">
            Profile</a>
        <ul class="dropdown-menu">
            <li><a href="${createLink(controller: 'user', action: 'profile')}">Profile</a></li>
            <li><a href="${createLink(controller: 'user', action: 'edit')}">Edit Profile</a></li>
            <li class="active"><a href="${createLink(controller: 'user', action: 'settings')}">Settings</a></li>
            <li><a href="#">Files</a></li>
        </ul>
    </div>

    <ul class="big-screen-tabs">
        <li><a href="${createLink(controller: 'user', action: 'profile')}">Profile</a></li>
        <li><a href="${createLink(controller: 'user', action: 'edit')}">Edit Profile</a></li>
        <li class="active"><a href="${createLink(controller: 'user', action: 'settings')}">Settings</a></li>
        <li><a href="#">Files</a></li>
    </ul>

    <form action="${createLink(controller: 'user', action: 'settings')}" method="post"
          id="ebanq-custom-user-settings-form" accept-charset="UTF-8">
        <div>
            <fieldset class="form-wrapper" id="edit-left-container">
                <legend><span class="fieldset-legend">Notifications</span></legend>

                <div class="fieldset-wrapper">
                    <fieldset class="form-wrapper" id="edit-internal-notifications">
                        <legend><span class="fieldset-legend">Internal Message Notification</span></legend>

                        <div class="fieldset-wrapper">
                            <div class="form-item form-type-checkbox form-item-internal-notification-when-executed">
                                <input class="iphone-checkbox form-checkbox" type="checkbox"
                                       id="edit-internal-notification-when-executed"
                                       name="internal_notification_when_executed"
                                       value="1" ${settings.internalNotificationWhenExecuted ? "checked" : ''}/> <label
                                    class="option" for="edit-internal-notification-when-executed">When Pending
                                transactions are Executed</label>

                            </div>

                            <div class="form-item form-type-checkbox form-item-internal-notification-when-received-transfer">
                                <input class="iphone-checkbox form-checkbox" type="checkbox"
                                       id="edit-internal-notification-when-received-transfer"
                                       name="internal_notification_when_received_transfer"
                                       value="1" ${settings.internalNotificationWhenReceivedTransfer ? "checked" : ''}/> <label
                                    class="option" for="edit-internal-notification-when-received-transfer">When
                                a Transfer from Another User is Received</label>

                            </div>
                        </div>
                    </fieldset>
                    <fieldset class="form-wrapper" id="edit-email-notifications">
                        <legend><span class="fieldset-legend">E-mail Notification</span></legend>

                        <div class="fieldset-wrapper">
                            <div class="form-item form-type-checkbox form-item-email-notification-when-internal-message">
                                <input class="iphone-checkbox form-checkbox" type="checkbox"
                                       id="edit-email-notification-when-internal-message"
                                       name="email_notification_when_internal_message"
                                       value="1" ${settings.emailNotificationWhenInternalMessage ? "checked" : ''}/> <label
                                    class="option" for="edit-email-notification-when-internal-message">When an
                                Internal Message is Received</label>

                            </div>

                            <div class="form-item form-type-checkbox form-item-email-notification-when-login-fails">
                                <input class="iphone-checkbox form-checkbox" type="checkbox"
                                       id="edit-email-notification-when-login-fails"
                                       name="email_notification_when_login_fails"
                                       value="1" ${settings.emailNotificationWhenLoginFails ? "checked" : ''}/> <label
                                    class="option" for="edit-email-notification-when-login-fails">When Login
                                Attempt Fails</label>

                            </div>

                            <div class="form-item form-type-checkbox form-item-email-notification-when-funds-added">
                                <input class="iphone-checkbox form-checkbox" type="checkbox"
                                       id="edit-email-notification-when-funds-added"
                                       name="email_notification_when_funds_added"
                                       value="1" ${settings.emailNotificationWhenFundsAdded ? "checked" : ''}/> <label
                                    class="option" for="edit-email-notification-when-funds-added">When Funds are
                                Added to my Account</label>

                            </div>

                            <div class="form-item form-type-checkbox form-item-email-notification-unread-news-available">
                                <input class="iphone-checkbox form-checkbox" type="checkbox"
                                       id="edit-email-notification-unread-news-available"
                                       name="email_notification_unread_news_available" value="1"
                                    ${settings.emailNotificationUnreadNewsAvailable ? "checked" : ''}/> <label
                                    class="option" for="edit-email-notification-unread-news-available">When News
                                Published</label>

                            </div>
                        </div>
                    </fieldset>
                </div>
            </fieldset>
            <fieldset class="form-wrapper" id="edit-right-container">
                <legend><span class="fieldset-legend">Security Question</span></legend>

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
                        <input class="form-control form-text required" type="text" id="edit-questions-0-answer"
                               name="questions[0][answer]" value="" size="60" maxlength="128"/>
                    </div>
                </div>
            </fieldset>
            <input class="btn btn-success form-submit" type="submit" id="edit-submit" name="op"
                   value="Save changes"/><input type="hidden" name="form_build_id"
                                                value="form-GO2R7DVbEj8Hc2Plhbsdold3SepOcYDIIDjXswe1Ls8"/>
            <input type="hidden" name="form_token" value="UubaXzEf70RD-rA-Ol4Zs3fXtz2EH_hjlyCcMAiLIMI"/>
            <input type="hidden" name="form_id" value="ebanq_custom_user_settings_form"/>
        </div>
    </form>

    <div class="powered-by"><a href="http://www.ebanq.com" class="powered-by-link" target="_blank">Powered by
    IB Groups&reg;</a></div>
</div>
</body>
</html>