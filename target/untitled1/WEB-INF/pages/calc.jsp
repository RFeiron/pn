<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="/theme/css/style.css" type="text/css" />
<jsp:directive.page contentType="text/html;charset=Utf-8"/>

<t:template>

    <form:form method="get" action="calc">
        <a href="/">Главная</a>

        <h1 id="header">Калькулятор односкатной кровли</h1>
        <table>
            <div id="nav">
            <ol>
                <li>
                    <a href="calc">Односкатная</a>
                </li>
                <li><a href="calc1">Двускатная</a> </li>
                <li><a href="#">Ломаная</a> </li>
                <li><a href="#">Вальмовая</a> </li>
                <li><a href="#">Мансардная</a> </li>
                <li><a href="#">Плоская</a> </li>
                <li><a href="#">Забор</a> </li>
            </ol>
            </div>
            <img src="\resources\img\i.jpg">
            <div>
            <tr>
                <td>
                    <form><label path="a"> Длина </label></form>
                </td>
                <td><input type="text" name="a" value="${a}"/></td>
            </tr>

            <tr>
                <td>
                    <form><label path="b"> Ширина </label></form>
                </td>
                <td><input type="text" name="b" value="${b}"/></td>
            </tr>

            <tr>
                <td>
                    <form><label path="workB"> Полезная ширина листа </label></form>
                </td>
                <td><input type="text" name="workB" value="${profnastil.workB}"/></td>
            </tr>


            <tr>
                <td>
                    <form><label path="obshayaB">Общая ширина листа</label></form>
                </td>
                <td><input type="text" name="obshayaB" value="${profnastil.obshayaB}"/></td>

            </tr>
            </div>

            <td><p>Количество профнастила:</p>
            <input type="text" name="result" value="${result}"/>м.кв.
            <p>Количество саморезов: </p>
            <input type="text" name="sam" value="${sam}"/>шт.
                <p>Количество листов:</p>
                <input type="text" name="kl" value="${kl}"/>шт.</td>

            <td colspan="2"><input type="submit" value="считать"/></td>
        </table>
    </form:form>
</t:template>

