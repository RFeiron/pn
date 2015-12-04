<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:directive.page contentType="text/html;charset=Utf-8"/>
<t:template>
<sec:authorize access="isAuthenticated()">
  <a href="index1"><img src="\resources\img\bd.jpg"></a>
</sec:authorize>
  <a href="calc"><img src="\resources\img\calc.jpg"></a>

</t:template>

