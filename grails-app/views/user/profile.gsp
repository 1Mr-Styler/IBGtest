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

<body class="page-user page-user- page-user-119 section-user">
<div class="content">
    <div class="clearfix"></div>

    <div class="clearfix"></div>


    <div class="dropdown small-screen-tabs">
        <a class="btn btn-default-themes dropdown-toggle" data-toggle="dropdown">
            Profile</a>
        <ul class="dropdown-menu">
            <li class="active"><a href="#" class="active">Profile</a></li>
            <li><a href="${createLink(controller: 'user', action: 'edit')}">Edit Profile</a></li>
            <li><a href="${createLink(controller: 'user', action: 'settings')}">Settings</a></li>
            <li><a href="#">Files</a></li>
        </ul>
    </div>

    <ul class="big-screen-tabs">
        <li class="active"><a href="#" class="active">Profile</a></li>
        <li><a href="${createLink(controller: 'user', action: 'edit')}">Edit Profile</a></li>
        <li><a href="${createLink(controller: 'user', action: 'settings')}">Settings</a></li>
        <li><a href="#">Files</a></li>
    </ul>


    <div class="profile">

        <div class="user-about-wrapper">
            <div class="user-about">
                <div id="fake-picture">
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

                <div class="full-name-wrapper">
                    <div class="full-name">
                        ${userInstance.fname} ${userInstance.lname}
                    </div>

                    <div class="user-name-text">${userInstance.username}</div>
                </div>
                <a href="${createLink(controller: 'user', action: 'edit')}" class="edit-profile-link"></a></div>
        </div>

        <div class="group-user-information field-group-div"><h3><span>User information</span></h3>

            <div class="field"><label>Email Address</label>

                <div class="user-mail-field">${userInstance.email}</div>
            </div>

            <div class="field field-name-field-user-date-of-birth field-type-datetime field-label-above">
                <div class="field-label">Date of Birth&nbsp;</div>

                <div class="field-items">
                    <div class="field-item even"><span class="date-display-single"><g:formatDate date="${userInstance.dob}" type="date"
                                                                                                 style="MEDIUM"/></span></div>
                </div>
            </div>

            <div class="field"><label>Passport number</label>

                <div class="user-document-type-field">${userInstance.passport}</div>
            </div>

            <div class="field field-name-field-user-mobile-phone field-type-text field-label-above">
                <div class="field-label">Phone Number&nbsp;</div>

                <div class="field-items">
                    <div class="field-item even">${userInstance.phone}</div>
                </div>
            </div>

            <div class="field field-name-field-profile-type field-type-list-text field-label-above">
                <div class="field-label">Profile Type&nbsp;</div>

                <div class="field-items">
                    <div class="field-item even">Personal</div>
                </div>
            </div>

            <div class="field field-name-field-user-company-name field-type-text field-label-above">
                <div class="field-label">Company name&nbsp;</div>

                <div class="field-items">
                    <div class="field-item even">N/A</div>
                </div>
            </div>

            <div class="field field-name-field-user-country-of-residence field-type-country field-label-above">
                <div class="field-label">Country of Residence&nbsp;</div>

                <div class="field-items">
                    <div class="field-item even">${userInstance.country}</div>
                </div>
            </div>

            <div class="field field-name-field-user-country-of-citizenshi field-type-country field-label-above">
                <div class="field-label">Country of Citizenship&nbsp;</div>

                <div class="field-items">
                    <div class="field-item even">${userInstance.citizenship}</div>
                </div>
            </div>

            <div class="field field-name-field-user-status field-type-list-integer field-label-above">
                <div class="field-label">Security Question&nbsp;</div>

                <div class="field-items">
                    <div class="field-item even">${userInstance.security}</div>
                </div>
            </div>

            <div class="field tans-wrapper"><label>Tans</label>

                <div class="user-tans-number">
                    <div class="tans-count"><em class="placeholder">2</em> Active TANs</div>
                </div>
            </div>
        </div>

        <div class="group-first-right-colum field-group-div">
            <div class="group-last-login field-group-div"><h3><span>Last login</span></h3>

                <div class="field">
                    <label>Date</label>

                    <div class="last-login-date"><g:formatDate date="${userInstance.lastlogin}" type="datetime"
                                                               style="LONG"/></div>
                </div>

                <div class="field">
                    <label>IP address</label>

                    <div class="last-login-ip">${userInstance.ip}</div>
                </div>
            </div>
        </div>
    </div>

    <div class="powered-by"><a href="http://www.ebanq.com" class="powered-by-link" target="_blank">Powered by
    IB Groups&reg;</a></div>
</div>
</body>
</html>