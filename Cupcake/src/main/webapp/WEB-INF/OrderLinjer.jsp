<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="PresentationLayer.Basket" %>
<%@ page import="DBAccess.UserMapper" %>
<%@ page import="DBAccess.DataMapper" %>
<%--
  Created by IntelliJ IDEA.
  User: Marcus
  Date: 17/03/2020
  Time: 10.37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="PresentationLayer.Basket" %>

<%@include file="/Includes/Headers.inc" %>

<div class="row">
    <div class="mt-3 col-lg-3"></div>
    <div class="mt-3 col-lg-6">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Email</th>
                <th scope="col">Pris</th>
                <th scope="col">Status</th>
                <th scope="col">Status</th>
                <th scope="col">Status</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="v" items="${sessionScope.orderlinjer}">
                <form id="form-id" action="FrontController" method="post">
                    <input type="hidden" name="taget" value="seeOrder">
                    <input type="hidden" name="id" value="${v.id}">
                    <tr onclick="document.getElementById('form-id').submit();">
                        <th> ${v.id}</th>
                        <th> ${v.email}</th>
                        <th> ${v.total}</th>
                        <th> ${v.topping}</th>
                        <th> ${v.bottom}</th>
                        <th> ${v.antal}</th>
                    </tr>
                </form>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="mt-3 col-lg-3"></div>
</div>


<%@include file="/Includes/Footer.inc" %>
