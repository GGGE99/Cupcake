<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Marcus
  Date: 17/03/2020
  Time: 10.37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/Includes/Headers.inc"%>
<div>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Email</th>
            <th scope="col">Password</th>
            <th scope="col">Rolle</th>
            <th scope="col">Balance</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="i" items="${sessionScope.users}">
            ${i}
            <br>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="/Includes/Footer.inc" %>