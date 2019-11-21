<%@ include file="../include.jsp" %>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="<c:url value="/style.css"/>"/>
</head>
<body>

<h2>Account Page</h2>

<p>You are currently logged in as a 
  <b>
    <shiro:hasRole name="normal">normal</shiro:hasRole>
    <shiro:hasRole name="root">root</shiro:hasRole>
  </b>
  user.
</p>

<shiro:hasPermission name="secret:view">
  <a href="<c:url value="/assets/protected/secure.png"/>" class="button">Reveal the Secret</a>
</shiro:hasPermission>

<p><a href="<c:url value="/home.jsp"/>">Return to the home page.</a></p>

<p><a href="<c:url value="/logout"/>" onclick="document.getElementById('logout_form').submit();return false;">Log out.</a></p>
<form id="logout_form" action="<c:url value="/logout"/>" method="post"></form>
</body>
</html>