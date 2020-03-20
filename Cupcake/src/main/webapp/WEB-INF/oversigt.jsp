<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="PresentationLayer.Basket" %>
<%--
  Created by IntelliJ IDEA.
  User: Marcus
  Date: 17/03/2020
  Time: 10.37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="PresentationLayer.Basket" %>

<%@include file="/Includes/Headers.inc"%>
<div class="container">
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Email</th>
            <th scope="col">Topping</th>
            <th scope="col">Bottom</th>
            <th scope="col">Total</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="v" items="${sessionScope.orders}">
            <tr>
                <th> ${v.id}</th>
                <th> ${v.email}</th>
                <th> ${v.topping}</th>
                <th> ${v.bottom}</th>
                <th> ${v.total}</th>

            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<div class="container mt-5">
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
            <tr>
                <th> ${i.id}</th>
                <th> ${i.email}</th>
                <th> ${i.password}</th>
                <th> ${i.role}</th>
                <th> ${i.money}</th>
             </tr>
        </c:forEach>
        </tbody>
    </table>
</div>



<%@include file="/Includes/Footer.inc" %>
