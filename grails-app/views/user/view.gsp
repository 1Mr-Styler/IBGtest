<%--
  Created by IntelliJ IDEA.
  User: styl3r
  Date: 3/22/18
  Time: 4:17 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="lg"/>
    <title>Read Message</title>
</head>

<body class="page-messages page-messages-view page-messages-view- page-messages-view-134 section-messages">
<div class="content">
    <div class="clearfix"></div>

    <div class="clearfix"></div>


    <div class="dropdown small-screen-tabs">
        <a class="btn btn-default-themes dropdown-toggle" data-toggle="dropdown">
            Read message</a>
        <ul class="dropdown-menu">
            <li><a href="${createLink(controller: 'user', action: 'messages')}">Incoming</a></li>
            <li><a href="${createLink(controller: 'user', action: 'sent')}">Outgoing</a></li>
            <li class="active"><a href="" class="active">Read message</a></li>
        </ul>
    </div>

    <ul class="big-screen-tabs">
        <li><a href="${createLink(controller: 'user', action: 'messages')}">Incoming</a></li>
        <li><a href="${createLink(controller: 'user', action: 'sent')}">Outgoing</a></li>
        <li class="active"><a href="" class="active">Read message</a></li>
    </ul>


    <div class="message-thread-wrapper">

        <div class="message-thread-subject">${conversation.message.subject}</div>

        <div class="messages-wrapper">
            <div class="messages-wrapper-white"></div>

            <div class="messages-wrapper-inner"><a name="privatemsg-mid-134"></a>
                <g:each in="${convos}" var="message">
                    <div class="privatemsg-message privatemsg-message-1 privatemsg-message-even"
                         id="privatemsg-mid-134">
                        <div class="privatemsg-author-avatar">
                        </div>

                        <div class="privatemsg-message-column">
                            <div class="privatemsg-message-information">
                                <span class="privatemsg-author-name">${message.sender.username == 'admin' ? "Administrator" : "${user.fname} ${user.lname.take(1)}."}</span> <span
                                    class="privatemsg-message-date"><g:formatDate format="d.MM"
                                                                                  date="${message.date}"/></span>
                            </div>

                            <div class="privatemsg-message-body">
                                ${message.note}
                            </div>
                        </div>

                        <div class="clearfix"></div>
                    </div>
                </g:each>
                <a name="privatemsg-mid-135"></a>
            </div>

            <div class="messages-wrapper-bottom-white"></div>
        </div>

        <form action="" method="post" id="privatemsg-new" accept-charset="UTF-8">
            <div><h2 class="privatemsg-reply">Reply</h2>

                <div class="text-format-wrapper">
                    <div class="form-item form-type-textarea form-item-body-value">
                        <div class="form-textarea-wrapper"><textarea
                                class="form-control ckeditor-mod form-textarea" id="edit-body-value"
                                name="body" cols="60" rows="6"></textarea></div>
                    </div>
                    <a class="ckeditor_links" style="display:none" href="javascript:void(0);"
                       onclick="javascript:Drupal.ckeditorToggle(['edit-body-value'], 'Switch to plain text editor', 'Switch to rich text editor');"
                       id="switch_edit-body-value">Switch to rich text editor</a></div>
                <input type="hidden" name="form_build_id"
                       value="form-ukWX1EuSNVq9I6hG1rxcIqlqh4nyK1HHRNSP19Ygm0c">
                <input type="hidden" name="form_token" value="ouap-eRy_q4fYdTUDSM8rzdIEhWOV3Kbz8DuYcWlXgQ">
                <input type="hidden" name="form_id" value="privatemsg_new">

                <div class="form-actions form-wrapper" id="edit-actions"><input
                        class="btn btn-success form-submit" type="submit" id="edit-submit" name="op"
                        value="Send"><a href="${createLink(controller: 'user', action: 'messages')}"
                                        class="green-border-button">Cancel</a><a
                        href="${createLink(controller: 'user', action: 'delete', id: conversation.message.id)}"
                        class="btn btn-success">Delete</a></div>
            </div>
        </form>
    </div>

    <div class="powered-by"><a href="#" class="powered-by-link" target="_blank">Powered by
    IB Groups®</a></div>
</div>
</body>
</html>