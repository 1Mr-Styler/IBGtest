<g:if test="${session['user'] != null}">
    <script type="text/javascript">window.location.replace('${createLink(controller: 'user')}')</script>
</g:if>


