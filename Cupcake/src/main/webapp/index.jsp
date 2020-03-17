<%@ page import="PresentationLayer.Basket" %><%--
  Created by IntelliJ IDEA.
  User: marcg
  Date: 16/03/2020
  Time: 10.32
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="Includes/Headers.inc" %>

<c:if test="${sessionScope.role == null}">
    <form class="form-inline my-2 my-lg-0" name="login" action="FrontController" method="post">
        <input type="hidden" name="taget" value="login">
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1">@</span>
            </div>
            <input type="email" class="form-control mr-sm-2" placeholder="Username"
                   aria-label="Username" aria-describedby="basic-addon1" name="email">
            <input type="password" class="form-control mr-sm-2" placeholder="Password"
                   aria-label="Password" name="password">
            <input class="btn btn-success ml-1" type="submit" value="Login">
        </div>
    </form>
</c:if>

<c:if test="${sessionScope.role != null}">
    <p>${sessionScope.email}</p>
    <form class="form-inline my-2 my-lg-0" name="logout" action="FrontController" method="post">
        <input type="hidden" name="taget" value="logout">
        <input class="btn btn-danger ml-1" type="submit" value="logout">
    </form>
    <c:if test="${sessionScope.role.equals('employee')}">
        <form class="form-inline my-2 my-lg-0" name="admin" action="FrontController" method="post">
            <input type="hidden" name="taget" value="admin">
            <input class="btn btn-success ml-1" type="submit" value="Admin">
        </form>
    </c:if>
</c:if>


<div class="dropdown">
    <button class="dropbtn"><a href="#">
        <img src="images/kurv.png" class="float-right inverted" width="15%"></a>
    </button>
    <p id="cart"><%out.println(Basket.getNumberOfCupecakes()); %></p>
    <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
    </div>
</div>


</div>
</div>

</nav>
</div>


<div class="col-lg-2"></div>
</div>
<div class="text-center mb-4">
    <h1>Velkommen ombord</h1>
    <h3>Øens bedste cupcakes. Vælg og bestil her:</h3>
</div>
<form name="addToBasket" action="FrontController" method="post">
    <input type="hidden" name="taget" value="addToBasket">
    <div class="row">

        <div class="col-lg-3"></div>

        <div class="form-group col-lg-2">
            <select required class="form-control number-input" id="sel1" name="bottom">
                <option value="" disabled selected>Vælg bund</option>
                <option>Chocolate</option>
                <option>Vanilla</option>
                <option>Nutmeg</option>
                <option>Pistacio</option>
                <option>Almond</option>
            </select>
        </div>

        <div class="form-group col-lg-2">
            <select required class="form-control number-input" id="sel2" name="top">
                <option value="" disabled selected>Vælg top</option>
                <option>Chocolate</option>
                <option>Rasberry</option>
                <option>Blueberry</option>
                <option>Crispy</option>
                <option>Strawberry</option>
                <option>Rum/Rasin</option>
                <option>Orange</option>
                <option>Lemon</option>
                <option>Cream</option>
            </select>
        </div>

        <div class="col-lg-1">
            <input class="form-control number-input" type="number" value="1" id="example-number-input" name="number">
        </div>

        <div class="text-center col-lg-1">
            <input class="btn btn-primary btn-md btn-block" type="submit" value="Add"/>
        </div>

        <div class="col-lg-3"></div>

    </div>

</form>


<%@include file="Includes/Footer.inc" %>