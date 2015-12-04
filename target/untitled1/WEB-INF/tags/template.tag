<%--<%@ tag description="Template Tag" pageEncoding="UTF-8" %>--%>
<%--<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>--%>
<%--<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>--%>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>

<%--<!doctype>--%>
<%--<html>--%>
    <%--<head>--%>
        <%--<link href="<c:url value="/resources/c/main.css"/>" rel="stylesheet">--%>
        <%--<script src ="<c:url value="/resources/s/ProfnastilUtils.js"/> "></script>--%>
           <%--&lt;%&ndash;<script src ="${pageContext.request.contextPath}/resources/js/bookUtils.js"></script>&ndash;%&gt;--%>
         <%--&lt;%&ndash;  <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" >&ndash;%&gt;--%>

        <%--<title>Book Manager</title>--%>
        <%--<div class="login-link-container">--%>
            <%--<sec:authorize access="isAnonymous()">--%>
                <%--<p>--%>
                    <%--<a href="/spring_security_login">Sign In</a>--%>
                <%--</p>--%>
            <%--</sec:authorize>--%>
            <%--<sec:authorize access="isAuthenticated()">--%>
                <%--<a href = "/j_spring_security_logout">Sign Out</a>--%>
            <%--</sec:authorize>--%>
        <%--</div>--%>

    <%--</head>--%>
    <%--<body>--%>
        <%--<div class = "content">--%>
            <%--<h1>Book Manager</h1>--%>
            <%--<jsp:doBody/>--%>
        <%--</div>--%>

    <%--</body>--%>
<%--</html>--%>
<%@ tag description="Template Tag" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>

<!doctype>
<html>
<head>
    <link href="<c:url value="/resources/c/main.css"/>" rel="stylesheet">
    <script src ="<c:url value="/resources/s/ProfnastilUtils.js"/> "></script>

    <title>Factory</title>


</head>
<body>
<div class = "content">
    <h1>Factory</h1>
    <div class="login-link-container">
        <sec:authorize access="isAnonymous()">
            <p>
                <a href="/spring_security_login">Войти</a>
            </p>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <a href = "/j_spring_security_logout">Выйти</a>
        </sec:authorize>
    </div>
    <jsp:doBody/>
</div>

</body>
</html>
