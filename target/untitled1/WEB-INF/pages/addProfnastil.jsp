<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:directive.page contentType="text/html;charset=Utf-8"/>
<t:template>
  <a href="/">Главная</a>
  <form:form method="post" action="addProfnastil" commandName="profnastil">
    <table>
      <tr>
        <td>
          <form><label path="name"> Name </label> </form>
        </td>
        <td><form:input path="name"/></td>
        <td><from:errors cssClass="error" path="name"></from:errors> </td>
      </tr>

      <tr>
        <td>
          <form><label path="workB"> Rabochaya Shirina </label> </form>
        </td>
        <td><form:input path="workB"/></td>
        <td><from:errors cssClass="error" path="workB"></from:errors> </td>
      </tr>

      <tr>
        <td>
          <form><label path="obshayaB"> Obshaya Shirina </label> </form>
        </td>
        <td><form:input path="obshayaB"/></td>
        <td><from:errors cssClass="error" path="obshayaB"></from:errors> </td>
      </tr>

      <td colspan="2"><input type="submit" value="add"/></td>
    </table>
  </form:form>
</t:template>

