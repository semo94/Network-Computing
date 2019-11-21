<%@ include file="include.jsp" %>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="<c:url value="/style.css"/>"/>
    <title>Apache Shiro Project</title>
</head>
<body>

<h1>Network Design Patterns</h1>

<p>Hi <shiro:guest>Guest</shiro:guest><shiro:user><shiro:principal/></shiro:user>!
    ( <shiro:user>  <a href="<c:url value="/logout"/>" onclick="document.getElementById('logout_form').submit();return false;">logout</a> </shiro:user>
    <shiro:guest><a href="<c:url value="/login.jsp"/>">Log in</a></shiro:guest> )
</p>

<p>This project implements two design patterns:</p>
<p><b>1) Static Content Hosting Pattern</b></p>
<img src="<c:url value="/assets/public/static_content.png"/>" alt="Static Hosting">
<p><b>2) Valet Key Pattern</b></p>
<img src="<c:url value="/assets/public/key_valet.png"/>" alt="Static Hosting">

<shiro:user><p>Visit your <a href="<c:url value="/account"/>">account page</a>.</p></shiro:user>
<shiro:guest><p>If you want to access the user-only <a href="<c:url value="/account"/>">account page</a>,
    you will need to log-in first.</p></shiro:guest>

<form id="logout_form" action="<c:url value="/logout"/>" method="post"></form>
</body>
</html>
