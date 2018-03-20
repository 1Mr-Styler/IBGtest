<%--
  Created by IntelliJ IDEA.
  User: styl3r
  Date: 3/20/18
  Time: 10:49 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="lg"/>
    <title>Cards</title>
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
            <li><a href="${createLink(controller: 'user', action: 'index')}" class="active">Accounts</a>
            </li>
            <li class="active"><a href="${createLink(controller: 'user', action: 'cards')}">Cards</a></li>
        </ul>
    </div>

    <ul class="big-screen-tabs">
        <li><a href="${createLink(controller: 'user', action: 'index')}" class="active">Accounts</a></li>
        <li class="active"><a href="${createLink(controller: 'user', action: 'cards')}">Cards</a></li>
    </ul>
    <br/>
    There's currently no cards associated with this account
</div>
</body>
</html>