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


<%@include file="/Includes/Headers1.inc" %>
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
                <c:forEach var="i" items="${DataMapper.retrieveBottoms()}" varStatus="Count">
                    <option value="${Count.index+1}">
                            ${i.getName()}
                    </option>
                </c:forEach>
            </select>
        </div>

        <div class="form-group col-lg-2">
            <select required class="form-control number-input" id="sel2" name="top">
                <option value="" disabled selected>Vælg top</option>
                <c:forEach var="i" items="${DataMapper.retrieveToppings()}" varStatus="Count">
                    <option value="${Count.index+1}">
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





<%@include file="Includes/Footer.inc" %>