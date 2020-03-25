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

<%@include file="/Includes/Headers1.inc" %>
<%@include file="/Includes/Headers.inc" %>

<form action="FrontController" method="post">
    <div class="row mt-4 text-center">

        <input type="hidden" name="taget" value="addMoney">
        <div class="col-lg-3"></div>
        <div class="col-lg-2">
            <input class="form-control" list="brow" name="email">
            <datalist id="brow">
                <c:forEach var="i" items="${UserMapper.GetAllUsers()}" varStatus="Count">
                <option value="${i.getEmail()}">
                    </c:forEach>
            </datalist>
        </div>

        <div class="col-lg-2">
            <input class="form-control" type="number" value="100" name="amount">
        </div>

        <div class="col-lg-2">
            <button class="btn btn-success btn-block" type="submit">Ind Sæt penge</button>
        </div>
        <div class="col-lg-3"></div>

    </div>
</form>
<div class="row">
    <div class="mt-3 col-lg-6">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Email</th>
                <th scope="col">Pris</th>
                <th scope="col">Status</th>
                <th scope="col" width="20%">Status</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="v" items="${DataMapper.GetAllOrders()}">
                <form id="${v.id}" action="FrontController" method="post">
                    <input type="hidden" name="taget" value="seeOrder">
                    <input type="hidden" name="id" value="${v.id}">
                    <tr>
                        <td onclick="document.getElementById('${v.id}').submit();"> ${v.id}</td>
                        <td onclick="document.getElementById('${v.id}').submit();"> ${v.email}</td>
                        <td onclick="document.getElementById('${v.id}').submit();"> ${v.pris}</td>
                        <td onclick="document.getElementById('${v.id}').submit();"> ${v.status}</td>
                </form>
                <td>


                    <form action="FrontController" method="post" id="satus${v.id}">
                        <input type="hidden" name="taget" value="updateStatus">
                        <input type="hidden" name="id" value="${v.id}">
                    </form>
                    <form action="FrontController" method="post" id="slet${v.id}">
                        <input type="hidden" name="taget" value="sletOrder">
                        <input type="hidden" name="id" value="${v.id}">
                    </form>
                    <div class="text-center">
                            <button class="btn btn-success mr-1" onclick="document.getElementById('satus${v.id}').submit();" style="max-width: 49%">Betalt</button>
                            <button class="btn btn-danger mr-1" onclick="document.getElementById('slet${v.id}').submit();" type="submit" style="max-width: 49%">Slet</button>
                    </div>
                </td>
                </tr>

            </c:forEach>
            </tbody>
        </table>
    </div>


    <div class="mt-3 col-lg-6">
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
            <c:forEach var="i" items="${UserMapper.GetAllUsers()}">
                <tr>
                    <td> ${i.id}</td>
                    <td> ${i.email}</td>
                    <td> ${i.password}</td>
                    <td> ${i.role}</td>
                    <td> ${i.money}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script>
    /* When the user clicks on the button,
    toggle between hiding and showing the dropdown content */
    function myFunction() {
        document.getElementById("myDropdown").classList.toggle("show");
    }

    function filterFunction() {
        var input, filter, ul, li, a, i;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        div = document.getElementById("myDropdown");
        a = div.getElementsByTagName("a");
        for (i = 0; i < a.length; i++) {
            txtValue = a[i].textContent || a[i].innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                a[i].style.display = "";
            } else {
                a[i].style.display = "none";
            }
        }
    }
</script>

<%@include file="/Includes/Footer.inc" %>
