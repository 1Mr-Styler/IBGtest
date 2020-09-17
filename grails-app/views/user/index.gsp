<%--
  Created by IntelliJ IDEA.
  User: styl3r
  Date: 3/20/18
  Time: 9:39 PM
--%>

<%@ page import="tnw.TransferType; tnw.Account" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="lg"/>
    <title>My Account</title>
</head>

<body class="page-user-accounts section-user-accounts">
<div class="content">
    <div class="box-print pull-right">
        <a href="#" title="Print"
           class="print"></a><a
            href="#"
            class="open" title="Download CSV File"></a>
    </div>

    <div class="clearfix"></div>

    <div class="clearfix"></div>

    <g:if test="${flash.message}">
        <div class="messages--success messages success">
            <h2 class="element-invisible">message</h2>
            <ul class="messages__list">
                <li class="messages__item">You have an unread message!</li>
            </ul>
        </div>
    </g:if>

    <div class="dropdown small-screen-tabs">
        <a class="btn btn-default-themes dropdown-toggle" data-toggle="dropdown">
            Accounts</a>
        <ul class="dropdown-menu">
            <li class="active"><a href="${createLink(controller: 'user', action: 'index')}" class="active">Accounts</a>
            </li>
            <li><a href="${createLink(controller: 'user', action: 'cards')}">Cards</a></li>
        </ul>
    </div>

    <ul class="big-screen-tabs">
        <li class="active"><a href="${createLink(controller: 'user', action: 'index')}" class="active">Accounts</a></li>
        <li><a href="${createLink(controller: 'user', action: 'cards')}">Cards</a></li>
    </ul>


    <form action="" method="get" id="user-accounts" accept-charset="UTF-8">
        <div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="box left-block">
                            <div class="box-select">
                                <label>Account number</label>

                                <div class="dropdown">
                                    <a data-toggle="dropdown" class="btn btn-default-themes dropdown-toggle"
                                       href="#">
                                        ${accounts[ats - 1].number}</a>
                                    <ul class="dropdown-menu" role="select">
                                        <g:each in="${accounts}" var="account" status="i">
                                            <li role="presentation">
                                                <a role="menuitem" data-id="${i + 1}">
                                                    <div class="account-number">${account.number}</div>

                                                    <div class="account-details">
                                                        <!--<div class="account-currency">${account.currency.name()}</div>-->

                                                        <div class="account-available">${formatNumber(number: account.available, type: 'currency', currencyCode: account.currency.name())}</div>
                                                    </div>
                                                </a>
                                            </li>
                                        </g:each>
                                    </ul>
                                </div>
                            </div>

                            <div class="container-fluid">
                                <div class="row">
                                    <div class="box-balance col-lg-12 col-md-6">
                                        <label>Current balance</label>

                                        <!--<div class="balance">${accounts[ats - 1].currency.name()} ${accounts[ats - 1].ledger}</div>-->

                                        <div class="balance">${formatNumber(number: accounts[ats - 1].ledger, type: 'currency', currencyCode: accounts[ats - 1].currency.name())}</div>

                                        <!--<div class="description-balance">${accounts[ats - 1].currency.name()} ${accounts[ats - 1].available} available</div>-->

                                        <div class="description-balance">${formatNumber(number: accounts[ats - 1].available, type: 'currency', currencyCode: accounts[ats - 1].currency.name())} available</div>
                                    </div>
                                    <ul class="ul-info col-lg-12 col-md-6">
                                        <li>
                                            <label>Account type</label>
                                            <span>${accounts[ats - 1].accountType.name()}</span>
                                        </li>
                                        <li>
                                            <label>Currency</label>
                                            <span>${accounts[ats - 1].currency.name()}</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="container-fluid">
                                <div class="row">
                                    <div class="box-balance col-lg-12 col-md-6">
                                        <img src="${user.image}" style="height: 150px;">
                                    </div>
                                    <ul class="ul-info col-lg-12 col-md-6">

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="box-operation col-lg-8">
                        <form action="" method="get" id="user-accounts"
                              accept-charset="UTF-8">
                            <div class="search-form-wrapper">
                                <div class="form-search">
                                    <div class="form-item form-type-textfield form-item-search-field">
                                        <input placeholder="Transaction ID" class="form-control form-text"
                                               type="text" id="edit-search-field" name="search_field" value=""
                                               size="60" maxlength="128"/>
                                    </div>
                                    <a class="icon-cross close-search" href="#"></a>
                                </div>

                                <div class="last-form-el">
                                    <div class="datepicker">
                                        <div class="container-inline-date">
                                            <div class="form-item form-type-date-popup form-item-date-from">
                                                <div id="edit-date-from" class="date-padding">
                                                    <div class="form-item form-type-textfield form-item-date-from-date">
                                                        <input placeholder="From" class="form-control form-text"
                                                               type="text"
                                                               id="edit-date-from-datepicker-popup-0"
                                                               name="date_from[date]" value="" size="20"
                                                               maxlength="30"/>

                                                        <div class="description">E.g., 2018-03-19</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <span class="datepicker-separator">-</span>

                                    <div class="datepicker">
                                        <div class="container-inline-date">
                                            <div class="form-item form-type-date-popup form-item-date-to">
                                                <div id="edit-date-to" class="date-padding">
                                                    <div class="form-item form-type-textfield form-item-date-to-date">
                                                        <input placeholder="To" class="form-control form-text"
                                                               type="text" id="edit-date-to-datepicker-popup-0"
                                                               name="date_to[date]" value="" size="20"
                                                               maxlength="30"/>

                                                        <div class="description">E.g., 2018-03-19</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <input id="selectValue" type="hidden" name="ats" value="${ats - 1}"/>
                                    <input type="hidden" name="user_id" value="119"/>
                                    <input class="btn btn-success form-submit" type="submit" id="edit-submit"
                                           name="op" value="Submit"/></div>
                            </div>
                        </form>

                        <div class="box">
                            <div class="table">
                                <div class="table-header-group">
                                    <div class="table-row">
                                        <div class="table-cell transaction-date">
                                            <a href="#"
                                               class="descending active">Date</a></div>

                                        <div class="table-cell transaction-id">
                                            <a href="#"
                                               class="active">Id</a></div>

                                        <div class="table-cell transaction-description">
                                            <a href="#"
                                               class="active">Description</a></div>

                                        <div class="table-cell transaction-debit-credit">
                                            <a href="#"
                                               class="active">Debit/Credit</a></div>

                                        %{--<div class="table-cell transaction-balance">
                                            Available balance
                                        </div>--}%

                                        <div class="table-cell transaction-status">
                                            Status
                                        </div>
                                    </div>
                                </div>

                                <div class="table-row-group">
                                    <g:each in="${transfers}" var="transfer" status="i">
                                        <g:if test="${transfer.type == TransferType.OWT && transfer.owt.ttk != "atc"}">
                                            <div class="table-row ${data['cod'][i]}-row action-row" data-row-action="#"
                                            onclick="window.location.replace('${createLink(controller: "transfer", action: "processcot", id: "${transfer.owt.id}")}');">

                                        </g:if>
                                        <g:else>
                                            <div class="table-row ${data['cod'][i]}-row action-row" data-row-action="#">
                                        </g:else>
                                        <div class="right-hover"></div>

                                        <div class="table-cell transaction-date">
                                            <div class="left-hover"></div>

                                            <div><g:formatDate date="${transfer.date}" type="date"
                                                               style="SHORT"/></div>

                                            <div><g:formatDate date="${transfer.date}" type="time"
                                                               style="MEDIUM"/></div>
                                        </div>

                                        <div class="table-cell transaction-id">
                                            ${transfer.transaction}
                                        </div>

                                        <div class="table-cell transaction-description">
                                            ${transfer.type == tnw.TransferType.OWT ? transfer.owt.refmsg : transfer.ibt.descrip}
                                        </div>

                                        <div class="table-cell transaction-debit-credit ${data['cod'][i]}">
                                            ${transfer.type == tnw.TransferType.OWT ? transfer.owt.amount : transfer.ibt.amount}
                                        </div>

                                    %{--<div class="table-cell transaction-balance">
                                        Calculating...
                                    </div>--}%

                                        <div class="table-cell transaction-status">
                                            <div class="status-icon status-icon-${data['stat'][i]}"
                                                 data-toggle="tooltip"
                                                 data-placement="top"
                                                 title=" ${data['stat'][i].capitalize()}"></div>

                                            <div class="right-hover"></div>
                                        </div>
                                        </div>
                                    </g:each>
                                </div>
                                </div>
                            </div>

                            <h2 class="element-invisible">Pages</h2>

                            <div class="item-list">
                                <ul class="pager">
                                    <li class="pager-current first">
                                        <div class="pager-link-inner-wrapper">1</div>
                                    </li>
                                    <li class="pager-next"><a
                                            href="#">
                                        <div class="pager-link-inner-wrapper">&gt;</div>
                                    </a></li>
                                    <li class="pager-last last"><a
                                            href="#">
                                        <div class="pager-link-inner-wrapper">&gt;&gt;</div>
                                    </a></li>
                                </ul>
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
                </div>
            </div>
    </form>

    <div class="powered-by"><a href="#" class="powered-by-link" target="_blank">Powered by
    IB Groups&reg;</a></div>
</div>



<!-- ClickDesk Live Chat Service for websites -->
<script type='text/javascript'>
    var _glc =_glc || []; _glc.push('all_ag9zfmNsaWNrZGVza2NoYXRyEgsSBXVzZXJzGICAiKG13qwKDA');
    var glcpath = (('https:' == document.location.protocol) ? 'https://my.clickdesk.com/clickdesk-ui/browser/' :
        'http://my.clickdesk.com/clickdesk-ui/browser/');
    var glcp = (('https:' == document.location.protocol) ? 'https://' : 'http://');
    var glcspt = document.createElement('script'); glcspt.type = 'text/javascript';
    glcspt.async = true; glcspt.src = glcpath + 'livechat-cloud-new.js';
    var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(glcspt, s);
</script>
<!-- End of ClickDesk -->


</body>
</html>
