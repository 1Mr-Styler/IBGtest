<%--
  Created by IntelliJ IDEA.
  User: styl3r
  Date: 3/22/18
  Time: 3:37 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="lg"/>
    <title>Compose</title>
</head>

<body class="page-messages page-messages-new section-messages">
<div class="content">
    <h1 class="page__title title" id="page-title">New Message</h1>

    <div class="clearfix"></div>

    <div class="clearfix"></div>


    <form action="${createLink(controller: 'user', action: 'compose')}" method="post" id="privatemsg-new"
          accept-charset="UTF-8">
        <div>

            <g:if test="${userIsAdmin}">
                <div class="form-item form-type-textfield form-item-subject">
                    <label for="edit-receiver">Receiver</label>
                    <input class="form-control form-text" type="text" id="edit-receiver" name="subject" value=""
                           size="50" maxlength="255"/>
                </div>
            </g:if>

            <div class="form-item form-type-textfield form-item-subject">
                <label for="edit-subject">Subject</label>
                <input class="form-control form-text" type="text" id="edit-subject" name="subject" value=""
                       size="50" maxlength="255"/>
            </div>

            <div class="text-format-wrapper">
                <div class="form-item form-type-textarea form-item-body-value">
                    <div class="form-textarea-wrapper"><textarea placeholder="Write your message here..."
                                                                 class="form-control ckeditor-mod form-textarea"
                                                                 id="edit-body-value" name="body"
                                                                 cols="60" rows="12"></textarea></div>
                </div>
                <a class="ckeditor_links" style="display:none" href="javascript:void(0);"
                   onclick="javascript:Drupal.ckeditorToggle(['edit-body-value'], 'Switch to plain text editor', 'Switch to rich text editor');"
                   id="switch_edit-body-value">Switch to rich text editor</a></div>
            <input type="hidden" name="form_build_id" value="form-KtCEbDc0xWNYeiVPNfNlyTHssINYp4DFNZ5wC4SFl18"/>
            <input type="hidden" name="form_token" value="1coQbl5Y_T_FaTeNZFjToEIfhDkLk0X2CSHjJiuF3v4"/>
            <input type="hidden" name="form_id" value="privatemsg_new"/>

            <div class="form-actions form-wrapper" id="edit-actions"><input class="btn btn-success form-submit"
                                                                            type="submit" id="edit-submit"
                                                                            name="op" value="Send"/><a
                    href="${createLink(controller: 'user', action: 'messages')}" class="green-border-button">Cancel</a>
            </div>
        </div>
    </form>

    <div class="powered-by"><a href="#" class="powered-by-link" target="_blank">Powered by
    IB Groups&reg;</a></div>
</div>

</body>
</html>