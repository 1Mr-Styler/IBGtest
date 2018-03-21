<%--
  Created by IntelliJ IDEA.
  User: styl3r
  Date: 3/22/18
  Time: 3:01 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="lg"/>
    <title>Messages</title>
</head>

<body class="page-messages page-messages-sent section-messages">
<div class="content">
    <div class="clearfix"></div>

    <div class="clearfix"></div>


    <div class="dropdown small-screen-tabs">
        <a class="btn btn-default-themes dropdown-toggle" data-toggle="dropdown">
            Incoming</a>
        <ul class="dropdown-menu">
            <li class="active"><a href="${createLink(controller: 'user', action: 'messages')}"
                                  class="active">Incoming</a></li>
            <li><a href="${createLink(controller: 'user', action: 'sent')}">Outgoing</a></li>
        </ul>
    </div>

    <ul class="big-screen-tabs">
        <li class="active"><a href="${createLink(controller: 'user', action: 'messages')}" class="active">Incoming</a>
        </li>
        <li><a href="${createLink(controller: 'user', action: 'sent')}">Outgoing</a></li>
    </ul>


    <form action="${createLink(controller: 'user', action: 'sent')}" method="GET" id="privatemsg-list"
          accept-charset="UTF-8">
        <div>
            <fieldset class="form-wrapper" id="edit-filter">
                <div class="fieldset-wrapper">
                    <div class="form-item form-type-textfield form-item-search">
                        <input placeholder="Search" class="close-input form-control form-text" type="text"
                               id="edit-search" name="search" value="" size="25" maxlength="128"/>
                    </div>

                    <div class="form-item form-type-select form-item-type">
                        <select id="edit-type" name="type" class="form-select">
                            <option value="all">All</option>
                            <option value="subject">Subject</option>
                            <option value="message">Message</option>
                        </select>
                    </div>

                    <div class="privatemsg-filter-actions form-actions form-wrapper" id="edit-actions--2"><input
                            class="btn btn-success form-submit" type="submit" id="edit-submit--2" name="op"
                            value="Go"/></div>
                    <a href="${createLink(controller: 'user', action: 'compose')}"
                       class="btn btn-success">New message</a></div>
            </fieldset>
            <input type="hidden" name="form_build_id" value="form-2AjkrX6M1vAGEMvjiw26b3ZZ9X77XIrOBtAugBiSHu4"/>
            <input type="hidden" name="form_token" value="zmjlWZd5_OK8hrkGduTSxvZZUmtgATVvfXWt7O-BOdc"/>
            <input type="hidden" name="form_id" value="privatemsg_list"/>

            <div id="privatemsg-list-form">
                <div class="box">
                    <div class="table">
                        <div class="table-header-group">
                            <div class="table-row">
                                <div class="table-cell privatemsg-header-threadstarted">
                                    <a href="#"
                                       class="descending active">Date</a></div>

                                <div class="table-cell privatemsg-header-participants">
                                    From
                                </div>

                                <div class="table-cell privatemsg-header-subject">
                                    <a href="#" class="active">Subject</a>
                                </div>
                            </div>
                        </div>

                        <div class="table-row-group">
                            <g:each in="${conversations}" var="conversation">
                                <div class="table-row action-row"
                                     data-row-action="${createLink(controller: 'user', action: 'view', id: conversation.id)}"
                                     style="background-color: ${conversation.opened ? "inherit" : "lightgrey"}" }>
                                    <div class="right-hover"></div>

                                    <div class="table-cell ebanq-message-date">
                                        <div class="left-hover"></div>
                                        <g:formatDate format="d.MM" date="${conversation.date}"/>
                                        <div class="new-message-indicator"></div>
                                    </div>

                                    <div class="table-cell ebanq-message-to-from">
                                        <g:if test="${userIsAdmin}">
                                            ${user.username == conversation.message.user1.username ? conversation.message.user2.fname : conversation.message.user1.fname}
                                        </g:if>
                                        <g:else>
                                            Administrator
                                        </g:else>
                                    </div>

                                    <div class="table-cell ebanq-message-subject">
                                        <div class="ebanq-message-subject-inner">${conversation.message.subject} -</div>

                                        <div class="ebanq-message-body-inner">${conversation.note.take(10)}
                                        ...
                                        </div>

                                        <div class="right-hover"></div>
                                    </div>
                                </div>
                            </g:each>
                        </div>
                    </div>
                </div>

                <div class="pager-select">
                    <div class="form-item form-type-select">
                        <select class="form-control form-select">
                            <option value="10" selected="selected">10</option>
                            <option value="20">20</option>
                            <option value="40">40</option>
                            <option value="60">60</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <div class="powered-by"><a href="#" class="powered-by-link" target="_blank">Powered by
    IB Groups&reg;</a></div>
</div>

</body>
</html>