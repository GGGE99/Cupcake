<%--
  Created by IntelliJ IDEA.
  User: marcg
  Date: 16/03/2020
  Time: 10.32
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="Includes/Headers.inc"%>

    <div class="text-center mb-4">
        <h1>Velkommen ombord</h1>
        <h3>Øens bedste cupcakes. Vælg og bestil her:</h3>
    </div>
    <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-2">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Vælg bund
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">Chocolate</a>
                <a class="dropdown-item" href="#">Vanilla</a>
                <a class="dropdown-item" href="#">Nutmeg</a>
                <a class="dropdown-item" href="#">Pistacio</a>
                <a class="dropdown-item" href="#">Almond</a>
            </div>
        </div>
        <div class="col-lg-2">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Vælg topping
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">Chocolate</a>
                <a class="dropdown-item" href="#">Blueberry</a>
                <a class="dropdown-item" href="#">Rasberry</a>
                <a class="dropdown-item" href="#">Crispy</a>
                <a class="dropdown-item" href="#">Strawberry</a>
                <a class="dropdown-item" href="#">Rum/Rasin</a>
                <a class="dropdown-item" href="#">Orange</a>
                <a class="dropdown-item" href="#">Lemon</a>
                <a class="dropdown-item" href="#">Cream Cheese</a>
            </div>
        </div>
        <div class="col-lg-1">
            <input class="form-control number-input" type="number" value="1" id="example-number-input">
        </div>

        <div class="text-center col-lg-1">
            <button type="button" class="btn btn-primary btn-md btn-block">Add</button>
        </div>

        <div class="col-lg-3"></div>
    </div>

<%@include file="Includes/Footer.inc"%>