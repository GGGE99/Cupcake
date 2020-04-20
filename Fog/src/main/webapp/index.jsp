<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="Includes/Header.inc" %>
<%@ page import="FunctionLayer.DimensionsFacade" %>

<h1> HEY </h1>
<div class="row">
    <div class="form-group col-lg-5"></div>
    <div class="form-group col-lg-2">
        <select required class="form-control number-input" id="sel1" name="bottom">
            <option value="" disabled selected>Højde</option>
                    <c:forEach var="i" items="${DimensionsFacade.getHeight()}" varStatus="Count">
                        <option value="${Count.index+1}">
                                ${i}
                        </option>
                    </c:forEach>
        </select>
    </div>
    <div class="form-group col-lg-5"></div>

    <div class="form-group col-lg-5"></div>
    <div class="form-group col-lg-2">
        <select required class="form-control number-input" id="sel2" name="bottom">
            <option value="" disabled selected>Bredde</option>
                    <c:forEach var="i" items="${DimensionsFacade.getWidth()}" varStatus="Count">
                        <option value="${Count.index+1}">
                                ${i}
                        </option>
                    </c:forEach>
        </select>
    </div>
    <div class="form-group col-lg-5"></div>

    <div class="form-group col-lg-5"></div>
    <div class="form-group col-lg-2">
        <select required class="form-control number-input" id="sel3" name="bottom">
            <option value="" disabled selected>Længde</option>
                    <c:forEach var="i" items="${DimensionsFacade.getLength()}" varStatus="Count">
                        <option value="${Count.index+1}">
                                ${i}
                        </option>
                    </c:forEach>
        </select>
    </div>
    <div class="form-group col-lg-5"></div>

    <div class="form-group col-lg-5"></div>
    <div class="form-group col-lg-2">
    <label class="container">Ja
        <input type="checkbox" checked="checked">
        <span class="checkmark"></span>
    </label>
    </div>

<div class="form-group col-lg-5"></div>

<div class="form-group col-lg-5"></div>
<div class="form-group col-lg-2">
    <select required class="form-control number-input" id="sel4" name="bottom">
        <option value="" disabled selected>Hældning af tag</option>
        <c:forEach var="i" items="${DimensionsFacade.getSlope()}" varStatus="Count">
            <option value="${Count.index+1}">
                    ${i}
            </option>
        </c:forEach>
    </select>
</div>

    <div class="form-group col-lg-5"></div>
    <div class="form-group col-lg-2">
        <select required class="form-control number-input" id="sel4" name="bottom">
            <option value="" disabled selected>Vælg tagtupe</option>
            <c:forEach var="i" items="${DimensionFacade.getAllRoofs()}" varStatus="Count">
                <option value="${Count.index+1}">
                        ${i}
                </option>
            </c:forEach>
        </select>
    </div>
    <div class="form-group col-lg-5"></div>
    <div class="form-group col-lg-5"></div>
    <div class="form-group col-lg-2">
    <label class="container">Ja
        <input type="checkbox" checked="checked">
        <span class="checkmark"></span>
    </label>
    </div>

    <div class="form-group col-lg-5"></div>

    <div class="form-group col-lg-5"></div>
    <div class="form-group col-lg-2">
        <select required class="form-control number-input" id="sel5" name="bottom">
            <option value="" disabled selected>Længde af skur</option>
            <c:forEach var="i" items="${DimensionsFacade.getLength()}" varStatus="Count">
                <option value="${Count.index+1}">
                        ${i}
                </option>
            </c:forEach>
        </select>
    </div>
    <div class="form-group col-lg-5"></div>

    <div class="form-group col-lg-5"></div>
    <div class="form-group col-lg-2">
        <select required class="form-control number-input" id="sel6" name="bottom">
            <option value="" disabled selected>Bredde af skur</option>
            <c:forEach var="i" items="${DimensionsFacade.getLength()}" varStatus="Count">
                <option value="${Count.index+1}">
                        ${i}
                </option>
            </c:forEach>
        </select>
    </div>
    <div class="form-group col-lg-5"></div>

    <div class="form-group col-lg-5"></div>
    <div class="form-group col-lg-2">
        <select required class="form-control number-input" id="sel7" name="bottom">
            <option value="" disabled selected>Beklædning på skur</option>
            <c:forEach var="i" items="${DimensionsFacade.getLength()}" varStatus="Count">
                <option value="${Count.index+1}">
                        ${i}
                </option>
            </c:forEach>
        </select>
    </div>

    <div class="form-group col-lg-5"></div>

    <div class="form-group col-lg-5"></div>
    <div class="form-group col-lg-2">
        <select required class="form-control number-input" id="sel8" name="bottom">
            <option value="" disabled selected>Gulvtype til skur</option>
            <c:forEach var="i" items="${DimensionsFacade.getLength()}" varStatus="Count">
                <option value="${Count.index+1}">
                        ${i}
                </option>
            </c:forEach>
        </select>
    </div>
</div>
<%@include file="Includes/Footer.inc" %>


