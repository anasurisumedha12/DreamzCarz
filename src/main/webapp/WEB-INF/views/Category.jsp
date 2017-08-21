<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category</title>
    <link rel="stylesheet" href="<c:url value="assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="assets/css/styles.css"/>">
</head>

<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand navbar-link" href="#"> </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li class="active" role="presentation"><a href="#">Category </a></li>
                    <li role="presentation"><a href="#">Supplier </a></li>
                    <li role="presentation"><a href="#">Product </a></li>
                <sec:authorize access="isAuthenticated()">
                              <li> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
                   </sec:authorize>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                    <form:label path="categoryid">Category ID</form:label>
                    <form:input class="form-control" path="categoryid" type="text"/>">
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                    <form:label path="categoryName">Category Name</form:label>
                    <form:input class="form-control" path="categoryName" type="text"/>">
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                    <form:label path="Description">Description </form:label>
                    <form:input class="form-control" path="Description" type="text"/>">
                </div>
            </div>
        </div>
    </div>
    <button class="btn btn-default" type="button">Add </button>
    <button class="btn btn-default" type="button">Edit </button>
    <button class="btn btn-default" type="button">Search </button>
    <button class="btn btn-default" type="button">Delete </button>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>