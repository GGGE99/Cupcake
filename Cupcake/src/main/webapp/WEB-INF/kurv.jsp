<%@ page import="PresentationLayer.Basket" %><%--
  Created by IntelliJ IDEA.
  User: marcg
  Date: 16/03/2020
  Time: 10.32
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/Includes/Headers.inc" %>

<head>

</head>

<div class="text-center mb-4">
    <h1>Din kurv</h1>
</div>
<div class="row container-fluid">
    <div class="col-lg-3"></div>
    <div class="col-lg-6">
        <table class="table">
            <thead class="thead-light fluid">
            <tr>
                <th scope="col-">#</th>
                <th scope="col">Topping</th>
                <th scope="col">Bund</th>
                <th scope="col">Antal</th>
                <th scope="col"></th>

            </tr>
            </thead>
            <tbody>
            <c:forEach var="i" items="${sessionScope.Basket}">
            <tr>
                <th scope="row">1</th>
                <td>${i.top}</td>
                <td>${i.bottom}</td>
                <td><input class="form-control number-input"  type="number" value="${i.antal}" id="example-number-input" name="number"></td>
                <td><button class="button">Slet</button></td>
            </tr>
            </c:forEach>
            </tbody>

        </table>

    </div>
    <div class="col-lg-3"></div>
</div>




<%@include file="/Includes/Footer.inc" %>