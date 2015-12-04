<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="/theme/css/style.css" type="text/css" />
<jsp:directive.page contentType="text/html;charset=Utf-8"/>

<t:template>

  <form:form method="get" action="calc1">
    <a href="/">Главная</a>

    <h1 id="header">Калькулятор двускатной кровли</h1>
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

    <table id="section">
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
        <td><input type="text" name="workB" value="${workB}"/></td>
      </tr>

      <tr>
        <td>
          <form><label path="obshayaB">Общая ширина листа</label></form>
        </td>
        <td><input type="text" name="obshayaB" value="${obshayaB}"/></td>

          <tr>
          <td><p>Количество профнастила:</p>
              <input type="text" name="result" value="${result}"/>м.кв.
              <p>Количество саморезов: </p>
              <input type="text" name="sam" value="${sam}"/>шт.
              <p>Количество листов:</p>
              <input type="text" name="kl" value="${kl}"/>шт.</td>
        </tr>
          <td colspan="2"><input type="submit" value="считать"/></td>
      <table id="section">
          <tr>
              <td>
                  <form><label path="a2"> Длина2 </label></form>
              </td>
              <td><input type="text" name="a2" value="${a2}"/></td>
          </tr>

          <tr>
              <td>
                  <form><label path="b2"> Ширина2 </label></form>
              </td>
              <td><input type="text" name="b2" value="${b2}"/></td>
          </tr>
      </table>



    </table>
  </form:form>
</t:template>