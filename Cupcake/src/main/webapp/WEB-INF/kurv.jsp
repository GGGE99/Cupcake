<%@ page import="PresentationLayer.Pris" %>
<%@ page import="PresentationLayer.Basket" %>
<%@ page import="DBAccess.DataMapper" %>

<%--
  Created by IntelliJ IDEA.
  User: marcg
  Date: 16/03/2020
  Time: 10.32
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@include file="/Includes/Headers1.inc" %>
<link rel="stylesheet" href="../Styles/kurv.css">
<%@include file="/Includes/Headers.inc" %>

<div class="text-center mb-4">
    <h1>Din kurv</h1>
</div>
<div class="row container-fluid">
    <div class="col-lg-3"></div>
    <div class="col-lg-6">
        <table class="table">
            <thead class="table table-hover fluid">
            <tr>
                <th scope="col-">#</th>
                <th scope="col">Topping</th>
                <th scope="col">Bund</th>
                <th scope="col">Antal</th>
                <th scope="col">Pris</th>
                <th scope="col"></th>

            </tr>
            </thead>
            <tbody>
            <c:forEach var="i" items="${sessionScope.Basket}" varStatus="Count">
                <tr>
                    <th scope="row">${Count.index}</th>
                    <td>${DataMapper.retrieveToppings().get(i.top).getName()}</td>
                    <td>${DataMapper.retrieveBottoms().get(i.bottom).getName()}</td>
                    <td><input class="form-control number-input" type="number" value="${i.antal}"
                               id="example-number-input" name="number"></td>
                    <td>
                            ${(DataMapper.retrieveToppings().get(i.top).getPrice() + DataMapper.retrieveBottoms().get(i.bottom).getPrice()) * i.antal}
                    </td>
                    <td>
                        <form action="FrontController" method="post">
                            <input type="hidden" name="taget" value="removeItem">
                            <input type="hidden" name="index" value="${Count.index}">
                            <button class="button kurv" type="submit">Slet</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            <tr class="table-dark">
                <th>I ALT:</th>
                <th></th>
                <th></th>
                <th></th>
                <th>
                    <c:forEach var="i" items="${sessionScope.Basket}" varStatus="Count">
                        ${Pris.samletPris(DataMapper.retrieveToppings().get(i.top).getPrice(), DataMapper.retrieveBottoms().get(i.bottom).getPrice(), i.antal)}
                    </c:forEach>
                    ${Pris.getPris()}
                </th>
                <th></th>
            </tr>
            </tbody>

        </table>

    </div>
    <div class="col-lg-3"></div>

</div>

<div class="col-lg-3"></div>
<div class="col-lg-6>">
    <form action="FrontController" method="post">
        <input type="hidden" name="taget" value="bestil">
        <c:forEach var="i" items="${sessionScope.Basket}" varStatus="Count">
            ${Pris.samletPris(DataMapper.retrieveToppings().get(i.top).getPrice(), DataMapper.retrieveBottoms().get(i.bottom).getPrice(), i.antal)}
        </c:forEach>
        <input type="hidden" name="price" value="${Pris.getPris()}">
        <div class="text-center">
            <button class="btn btn-success " type="submit">Bestil</button>
        </div>
    </form>
</div>
<div class="col-lg-3"></div>


<%@include file="/Includes/Footer.inc" %>