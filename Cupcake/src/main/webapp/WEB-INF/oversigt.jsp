<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="PresentationLayer.Basket" %>
<%@ page import="DBAccess.UserMapper" %>
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


<div class="row mt-4 text-center">
    <div class="col-lg-3"></div>
    <div class="col-lg-2">
        <input class="form-control" list="brow">
        <datalist id="brow">
            <c:forEach var="i" items="${UserMapper.GetAllUsers()}" varStatus="Count">
            <option value="${i.getEmail()}">
                </c:forEach>
        </datalist>
    </div>

    <div class="col-lg-2">
        <input class="form-control" type="number" value="100">
    </div>

    <div class="col-lg-2">
        <button class="btn btn-success btn-block" type="submit">Ind Sæt penge</button>
    </div>
    <div class="col-lg-3"></div>

</div>
<div class="row">
    <div class="mt-3 col-lg-6">
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
