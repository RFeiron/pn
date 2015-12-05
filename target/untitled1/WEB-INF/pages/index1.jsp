<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>

<jsp:directive.page contentType="text/html;charset=Utf-8"/>
<t:template>
    <a href="/">Главная</a>

    <c:if test="${!empty lists}">
        <table class="book-list-table">
            <tr>
                <th>Название</th>
                <th>Рабочая ширина</th>
                <th>Общая ширина</th>

                <th>&nbsp;</th>

            </tr>
            <c:forEach items="${lists}" var="profnastil">
                <tr>
                    <td>${profnastil.name}</td>
                    <td>${profnastil.workB}</td>
                    <td>${profnastil.obshayaB}</td>

                    <td><a href="deleteProfnastil/${profnastil.id}">Delete</a></td>
                    <%--<td><a href="edit/${profnastil.id}">Edit</a></td>--%>

                </tr>
            </c:forEach>
        </table>
    </c:if>

    <a href="addProfnastil">Add List</a>

</t:template>

