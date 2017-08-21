<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>
    <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/fonts/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/home.css"/>">
</head>

<body>
    <div id="nav" class="left">
        <ul class="nav">
            <li>
                <a href="#"> </a>
            </li>
             <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">Category<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                        
                        <c:forEach items="${categoryList}" var="category">
                            <li role="presentation"><a href="product${category.categoryId}">${category.categoryName}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                </ul>
            </div>
                     <sec:authorize access="!isAuthenticated()">
                            <li><a href="login">Login</a></li>
                            <li><a href="register">Registration</a></li>
                      </sec:authorize>
                       <sec:authorize access="isAuthenticated()">
                              <li> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
                   </sec:authorize>
                    <li><a href="cart">Cart</a></li>
          
        </ul>
    </div>
    <div class="jumbotron">
        <h1 class="text-center">DREAMZ CARZ </h1>
        <p class="text-center">Relationships, like cars, should undergo regular services to make sure they are still roadworthy. </p>
    </div>
    <div class="carousel slide" data-ride="carousel" id="carousel-1">
        <div class="carousel-inner" role="listbox">
            <div class="item active"><img src="<c:url value="/resources/assets/img/ferrari-hd-wallpapers-1080p-2015.jpg"/>" alt="Slide Image"></div>
            <div class="item"><img src="<c:url value="/resources/assets/img/Audi-R8-V8-HD-Wallpapers.jpg"/>" alt="Slide Image"></div>
            <div class="item"><img src="<c:url value="/resources/assets/img/BMW.jpeg"/>" alt="Slide Image"></div>
        </div>
        <div><a class="left carousel-control" href="#carousel-1" role="button" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span class="sr-only">Previous</span></a>
            <a class="right carousel-control" href="#carousel-1" role="button" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a>
        </div>
        <ol class="carousel-indicators">
            <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-1" data-slide-to="1"></li>
            <li data-target="#carousel-1" data-slide-to="2"></li>
        </ol>
    </div>
    <div class="footer-div">
        <header></header>
        <div class="row">
            <div class="col-sm-4 col-xs-8">
                <h1>Contact Us</h1>
                <p>Email. I'D:sumedha.anasuri12@gmail.com Phone:9490765296</p>
            </div>
            <div class="col-sm-4 col-xs-8">
                <h1>Description </h1>
                <p>The comments sectition makes the car real to buyers. Besure to be realistic about your vehicle.</p>
            </div>
            <div class="col-sm-4 col-xs-8">
                <h1>Connect Us</h1><i class="fa fa-twitter icon"></i><i class="fa fa-facebook-square icon"></i><i class="fa fa-instagram icon"></i>
                <p> </p>
            </div>
        </div>
    </div>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>