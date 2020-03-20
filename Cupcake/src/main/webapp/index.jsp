<%@ page import="PresentationLayer.Basket" %>
<%@ page import="DBAccess.DataMapper" %>
<%@ page import="Util.Top" %><%--
  Created by IntelliJ IDEA.
  User: marcg
  Date: 16/03/2020
  Time: 10.32
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="Includes/Headers.inc" %>


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
                <c:forEach var="i" items="${DataMapper.retriveToppings()}">
                    <option>
                            ${i.getName()}
                    </option>
                </c:forEach>


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


<c:if test="${sessionScope.role.equals('ukendtMail')}">
<div class="col-lg-3"></div>
<div id="Opret" class="jumbotron col-lg-6">
    <div class="text-center mb-5">
        <h1>Vi kunne ikke finde mailen men du kan oprette dig her</h1>
    </div>

    <form class="form-inline my-2 my-lg-0" name="opretBruger" action="FrontController" method="post">
        <input type="hidden" name="taget" value="opretBruger">

        <input type="email" class="form-control mr-sm-2 col-12" placeholder="Username"
               aria-label="Username" aria-describedby="basic-addon1" name="email">


        <input type="password" class="form-control mr-sm-2 col-12" placeholder="Password"
               aria-label="Password" name="password1">

        <input type="password" class="form-control mr-sm-2 col-12" placeholder="Password"
               aria-label="Password" name="password2">

        <div class="text-center col-12">
            <input class="btn btn-success ml-1" type="submit" name="submit" value="Opret" style="width: 15%">
            <input class="btn btn-danger ml-1" type="submit" name="submit" value="Exit" style="width: 15%">
        </div>
    </form>
</div>
<div class="col-lg-3"></div>
</c:if>


<%@include file="Includes/Footer.inc" %>