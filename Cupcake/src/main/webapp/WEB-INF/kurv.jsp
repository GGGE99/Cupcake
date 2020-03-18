<%--
  Created by IntelliJ IDEA.
  User: Dane
  Date: 18/03/2020
  Time: 11.02
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/Includes/Headers.inc" %>

<head>
    <title>Kurv</title>
</head>
<body>
<div class="text-center mb-4">
    <h1>Din kurv</h1>
</div>
<div class="row">
    <div class="col-lg-3"></div>
    <div class="col-lg-6">
        <table class="table">
            <thead class="thead-light fluid">
            <tr>
                <th scope="col-">#</th>
                <th scope="col">Topping</th>
                <th scope="col">Bund</th>
                <th scope="col">Antal</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Choclate</td>
                <td>Choclate</td>
                <td><input class="form-control number-input"  type="number" value="1" id="example-number-input" name="number"></td>
                <td><button class="button">Slet</button></td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>Cream cheese</td>
                <td>Pistace</td>
                <td><input class="form-control number-input"  type="number" value="1" id="example-number-input" name="number"></td>
                <td><button class="button">Slet</button></td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>Rasberry</td>
                <td>Vanilla</td>
                <td><input class="form-control number-input"  type="number" value="1" id="example-number-input" name="number"></td>
                <td><button class="button">Slet</button></td>
            </tr>
            </tbody>

        </table>

    </div>
    <div class="col-lg-3"></div>
</div>

</body>


<%@include file="/Includes/Footer.inc" %>