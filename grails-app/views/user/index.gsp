<%--
  Created by IntelliJ IDEA.
  User: styl3r
  Date: 3/20/18
  Time: 9:39 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="lg"/>
    <title>My Account</title>
</head>

<body>
<div class="content">
    <div class="box-print pull-right">
        <a href="#" title="Print"
           class="print"></a><a
            href="#"
            class="open" title="Download CSV File"></a>
    </div>

    <div class="clearfix"></div>

    <div class="clearfix"></div>


    <div class="dropdown small-screen-tabs">
        <a class="btn btn-default-themes dropdown-toggle" data-toggle="dropdown">
            Accounts</a>
        <ul class="dropdown-menu">
            <li class="active"><a href="${createLink(controller: 'user', action: 'index')}" class="active">Accounts</a></li>
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
                                        ${accounts[ats-1].number}</a>
                                    <ul class="dropdown-menu" role="select">
                                        <g:each in="${accounts}" var="account" status="i">
                                            <li role="presentation">
                                                <a role="menuitem" data-id="${i+1}">
                                                    <div class="account-number">${account.number}</div>

                                                    <div class="account-details">
                                                        <div class="account-currency">${account.currency.name()}</div>

                                                        <div class="account-available">${account.available}</div>
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

                                        <div class="balance">${accounts[ats-1].currency.name()} ${accounts[ats-1].ledger}</div>

                                        <div class="description-balance">${accounts[ats-1].currency.name()} ${accounts[ats-1].available} available</div>
                                    </div>
                                    <ul class="ul-info col-lg-12 col-md-6">
                                        <li>
                                            <label>Account type</label>
                                            <span>${accounts[ats-1].accountType.name()}</span>
                                        </li>
                                        <li>
                                            <label>Currency</label>
                                            <span>${accounts[ats-1].currency.name()}</span>
                                        </li>
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
                                    <input id="selectValue" type="hidden" name="ats" value="${ats-1}"/>
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
                                            <a href="user-accounts-user_account=185&amp;order=date&amp;sort=asc.html"
                                               class="descending active">Date</a></div>

                                        <div class="table-cell transaction-id">
                                            <a href="user-accounts-user_account=185&amp;order=id&amp;sort=desc.html"
                                               class="active">Id</a></div>

                                        <div class="table-cell transaction-description">
                                            <a href="user-accounts-user_account=185&amp;order=description&amp;sort=desc.html"
                                               class="active">Description</a></div>

                                        <div class="table-cell transaction-debit-credit">
                                            <a href="user-accounts-user_account=185&amp;order=amount&amp;sort=desc.html"
                                               class="active">Debit/Credit</a></div>

                                        <div class="table-cell transaction-balance">
                                            Available balance
                                        </div>

                                        <div class="table-cell transaction-status">
                                            Status
                                        </div>
                                    </div>
                                </div>

                                <div class="table-row-group">
                                    <div class="table-row debit-row action-row"
                                         data-row-action="https://demo.ebanq.com/user-accounts/transaction/887/view?destination=user-accounts">
                                        <div class="right-hover"></div>

                                        <div class="table-cell transaction-date">
                                            <div class="left-hover"></div>

                                            <div>19/03/2018</div>

                                            <div>06:20 PM</div>
                                        </div>

                                        <div class="table-cell transaction-id">
                                            887
                                        </div>

                                        <div class="table-cell transaction-description">
                                            Transfer Fee: CFT Fee
                                        </div>

                                        <div class="table-cell transaction-debit-credit debit">
                                            -2.00
                                        </div>

                                        <div class="table-cell transaction-balance">
                                            21,316.00
                                        </div>

                                        <div class="table-cell transaction-status">
                                            <div class="status-icon status-icon-pending" data-toggle="tooltip"
                                                 data-placement="top" title=" Pending"></div>

                                            <div class="right-hover"></div>
                                        </div>
                                    </div>

                                    <div class="table-row debit-row action-row"
                                         data-row-action="https://demo.ebanq.com/user-accounts/transaction/885/view?destination=user-accounts">
                                        <div class="right-hover"></div>

                                        <div class="table-cell transaction-date">
                                            <div class="left-hover"></div>

                                            <div>19/03/2018</div>

                                            <div>06:20 PM</div>
                                        </div>

                                        <div class="table-cell transaction-id">
                                            885
                                        </div>

                                        <div class="table-cell transaction-description">
                                            Card Funding Transfer
                                        </div>

                                        <div class="table-cell transaction-debit-credit debit">
                                            -100.00
                                        </div>

                                        <div class="table-cell transaction-balance">
                                            21,318.00
                                        </div>

                                        <div class="table-cell transaction-status">
                                            <div class="status-icon status-icon-pending" data-toggle="tooltip"
                                                 data-placement="top" title=" Pending"></div>

                                            <div class="right-hover"></div>
                                        </div>
                                    </div>

                                    <div class="table-row credit-row action-row"
                                         data-row-action="https://demo.ebanq.com/user-accounts/transaction/828/view?destination=user-accounts">
                                        <div class="right-hover"></div>

                                        <div class="table-cell transaction-date">
                                            <div class="left-hover"></div>

                                            <div>29/05/2017</div>

                                            <div>10:16 AM</div>
                                        </div>

                                        <div class="table-cell transaction-id">
                                            828
                                        </div>

                                        <div class="table-cell transaction-description">
                                            Transfer from "<em class="placeholder">EBQ11223387654</em>"
                                        </div>

                                        <div class="table-cell transaction-debit-credit credit">
                                            2,000.00
                                        </div>

                                        <div class="table-cell transaction-balance">
                                            21,418.00
                                        </div>

                                        <div class="table-cell transaction-status">
                                            <div class="status-icon status-icon-executed" data-toggle="tooltip"
                                                 data-placement="top" title=" Executed"></div>

                                            <div class="right-hover"></div>
                                        </div>
                                    </div>

                                    <div class="table-row debit-row action-row"
                                         data-row-action="https://demo.ebanq.com/user-accounts/transaction/825/view?destination=user-accounts">
                                        <div class="right-hover"></div>

                                        <div class="table-cell transaction-date">
                                            <div class="left-hover"></div>

                                            <div>23/05/2017</div>

                                            <div>04:17 PM</div>
                                        </div>

                                        <div class="table-cell transaction-id">
                                            825
                                        </div>

                                        <div class="table-cell transaction-description">
                                            Transfer Fee: IWT Fee
                                        </div>

                                        <div class="table-cell transaction-debit-credit debit">
                                            -10.00
                                        </div>

                                        <div class="table-cell transaction-balance">
                                            19,368.00
                                        </div>

                                        <div class="table-cell transaction-status">
                                            <div class="status-icon status-icon-executed" data-toggle="tooltip"
                                                 data-placement="top" title=" Executed"></div>

                                            <div class="right-hover"></div>
                                        </div>
                                    </div>

                                    <div class="table-row credit-row action-row"
                                         data-row-action="https://demo.ebanq.com/user-accounts/transaction/824/view?destination=user-accounts">
                                        <div class="right-hover"></div>

                                        <div class="table-cell transaction-date">
                                            <div class="left-hover"></div>

                                            <div>23/05/2017</div>

                                            <div>04:17 PM</div>
                                        </div>

                                        <div class="table-cell transaction-id">
                                            824
                                        </div>

                                        <div class="table-cell transaction-description">
                                            Incoming wire from John Smith
                                        </div>

                                        <div class="table-cell transaction-debit-credit credit">
                                            5,000.00
                                        </div>

                                        <div class="table-cell transaction-balance">
                                            19,378.00
                                        </div>

                                        <div class="table-cell transaction-status">
                                            <div class="status-icon status-icon-executed" data-toggle="tooltip"
                                                 data-placement="top" title=" Executed"></div>

                                            <div class="right-hover"></div>
                                        </div>
                                    </div>

                                    <div class="table-row debit-row action-row"
                                         data-row-action="https://demo.ebanq.com/user-accounts/transaction/814/view?destination=user-accounts">
                                        <div class="right-hover"></div>

                                        <div class="table-cell transaction-date">
                                            <div class="left-hover"></div>

                                            <div>23/05/2017</div>

                                            <div>11:07 AM</div>
                                        </div>

                                        <div class="table-cell transaction-id">
                                            814
                                        </div>

                                        <div class="table-cell transaction-description">
                                            Transfer to "<em class="placeholder">EBQ11223487456</em>"
                                        </div>

                                        <div class="table-cell transaction-debit-credit debit">
                                            -4,000.00
                                        </div>

                                        <div class="table-cell transaction-balance">
                                            14,438.00
                                        </div>

                                        <div class="table-cell transaction-status">
                                            <div class="status-icon status-icon-executed" data-toggle="tooltip"
                                                 data-placement="top" title=" Executed"></div>

                                            <div class="right-hover"></div>
                                        </div>
                                    </div>

                                    <div class="table-row debit-row action-row"
                                         data-row-action="https://demo.ebanq.com/user-accounts/transaction/812/view?destination=user-accounts">
                                        <div class="right-hover"></div>

                                        <div class="table-cell transaction-date">
                                            <div class="left-hover"></div>

                                            <div>22/05/2017</div>

                                            <div>06:50 PM</div>
                                        </div>

                                        <div class="table-cell transaction-id">
                                            812
                                        </div>

                                        <div class="table-cell transaction-description">
                                            Transfer Fee: IWT Fee
                                        </div>

                                        <div class="table-cell transaction-debit-credit debit">
                                            -10.00
                                        </div>

                                        <div class="table-cell transaction-balance">
                                            18,438.00
                                        </div>

                                        <div class="table-cell transaction-status">
                                            <div class="status-icon status-icon-executed" data-toggle="tooltip"
                                                 data-placement="top" title=" Executed"></div>

                                            <div class="right-hover"></div>
                                        </div>
                                    </div>

                                    <div class="table-row credit-row action-row"
                                         data-row-action="https://demo.ebanq.com/user-accounts/transaction/811/view?destination=user-accounts">
                                        <div class="right-hover"></div>

                                        <div class="table-cell transaction-date">
                                            <div class="left-hover"></div>

                                            <div>22/05/2017</div>

                                            <div>06:50 PM</div>
                                        </div>

                                        <div class="table-cell transaction-id">
                                            811
                                        </div>

                                        <div class="table-cell transaction-description">
                                            Incoming wire from ABC Brokers
                                        </div>

                                        <div class="table-cell transaction-debit-credit credit">
                                            8,500.00
                                        </div>

                                        <div class="table-cell transaction-balance">
                                            18,448.00
                                        </div>

                                        <div class="table-cell transaction-status">
                                            <div class="status-icon status-icon-executed" data-toggle="tooltip"
                                                 data-placement="top" title=" Executed"></div>

                                            <div class="right-hover"></div>
                                        </div>
                                    </div>

                                    <div class="table-row debit-row action-row"
                                         data-row-action="https://demo.ebanq.com/user-accounts/transaction/805/view?destination=user-accounts">
                                        <div class="right-hover"></div>

                                        <div class="table-cell transaction-date">
                                            <div class="left-hover"></div>

                                            <div>18/05/2017</div>

                                            <div>04:07 PM</div>
                                        </div>

                                        <div class="table-cell transaction-id">
                                            805
                                        </div>

                                        <div class="table-cell transaction-description">
                                            Transfer Fee: CFT Fee
                                        </div>

                                        <div class="table-cell transaction-debit-credit debit">
                                            -2.00
                                        </div>

                                        <div class="table-cell transaction-balance">
                                            9,948.00
                                        </div>

                                        <div class="table-cell transaction-status">
                                            <div class="status-icon status-icon-executed" data-toggle="tooltip"
                                                 data-placement="top" title=" Executed"></div>

                                            <div class="right-hover"></div>
                                        </div>
                                    </div>

                                    <div class="table-row debit-row last-row action-row"
                                         data-row-action="https://demo.ebanq.com/user-accounts/transaction/803/view?destination=user-accounts">
                                        <div class="right-hover"></div>

                                        <div class="table-cell transaction-date">
                                            <div class="left-hover"></div>

                                            <div>18/05/2017</div>

                                            <div>04:07 PM</div>
                                        </div>

                                        <div class="table-cell transaction-id">
                                            803
                                        </div>

                                        <div class="table-cell transaction-description">
                                            Card Funding Transfer
                                        </div>

                                        <div class="table-cell transaction-debit-credit debit">
                                            -1,500.00
                                        </div>

                                        <div class="table-cell transaction-balance">
                                            9,950.00
                                        </div>

                                        <div class="table-cell transaction-status">
                                            <div class="status-icon status-icon-executed" data-toggle="tooltip"
                                                 data-placement="top" title=" Executed"></div>

                                            <div class="right-hover"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <h2 class="element-invisible">Pages</h2>

                        <div class="item-list">
                            <ul class="pager">
                                <li class="pager-current first">
                                    <div class="pager-link-inner-wrapper">1</div>
                                </li>
                                <li class="pager-item"><a title="Go to page 2"
                                                          href="user-accounts-page=1&amp;user_account=185&amp;order=date&amp;sort=desc.html">
                                    <div class="pager-link-inner-wrapper">2</div>
                                </a></li>
                                <li class="pager-next"><a
                                        href="user-accounts-page=1&amp;user_account=185&amp;order=date&amp;sort=desc.html">
                                    <div class="pager-link-inner-wrapper">&gt;</div>
                                </a></li>
                                <li class="pager-last last"><a
                                        href="user-accounts-page=1&amp;user_account=185&amp;order=date&amp;sort=desc.html">
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

    <div class="powered-by"><a href="http://www.ebanq.com" class="powered-by-link" target="_blank">Powered by
    EBANQ&reg;</a></div>
</div>
</body>
</html>