

    <title>Cupcakes</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <img class="img-fluid" src="images/Untitled.png" width="100%">
        <div class="col-lg-2"></div>
        <div class="col-lg-8 navbar-default" id="navbarResponsive">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand" href="#"><img src="images/cupcake.png" width="30%"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="ml-auto">
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
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
                        <c:if test="${sessionScope.role != null && sessionScope.role != 'ukendtMail'}">
                            <p>${sessionScope.email}</p>
                            <form class="form-inline my-2 my-lg-0" name="logout" action="FrontController" method="post">
                                <input type="hidden" name="taget" value="logout">
                                <input class="btn btn-danger ml-1" type="submit" value="logout">
                            </form>
                            <c:if test="${sessionScope.role.equals('employee')}">
                                <form class="form-inline my-2 my-lg-0" name="oversigt" action="FrontController"
                                      method="post">
                                    <input type="hidden" name="taget" value="oversigt">
                                    <input class="btn btn-success ml-1" type="submit" value="Admin">
                                </form>
                            </c:if>
                        </c:if>


                        <div style="height: 35px; width: 35px;" class="ml-2">
                            <ul class="navbar-nav float-right">
                                <li class="nav-item dropdown">
                                    <a href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        <img src="images/kurv.png" class="float-right inverted"
                                             style=" max-width: 100%; max-height: 100%;">
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                        <c:forEach var="i" items="${sessionScope.Basket}">
                                            <a class="dropdown-item" href="#">Bottom: ${i.bottom} Top: ${i.top} Antal:
                                                ${i.antal}</a>
                                        </c:forEach>

                                        <form class="form-inline my-2 my-lg-0" name="bestilling" action="FrontController"
                                              method="post">
                                            <input type="hidden" name="taget" value="bestilling">
                                            <input class="btn btn-success ml-1" type="submit" value="Gå til bestilling">
                                        </form>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <p id="cart"><%out.println(Basket.getNumberOfCupecakes()); %></p>

                    </div>
                </div>
        </div>
        </nav>
    </div>
    <div class="col-lg-2"></div>
</div>

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

