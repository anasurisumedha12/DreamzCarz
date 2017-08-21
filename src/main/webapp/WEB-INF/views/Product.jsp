<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product</title>
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
    <form:form method="POST" action="product.do" encode="multipart/form-data" modelAttribute="product">
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                   <form:label path="productid">Product id</form:label>  
                   <form:input path="productid" class="form-control" type="tel"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                    <form:label path="productName">Product name </form:label>
                   <form:input path="productName" class="form-control" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                   <form:label path="productDescription">Product Desc</form:label>
                    <form:textarea path="productDescription" class="form-control"></form:textarea>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                  <form:label path="price">Price</form:label>
                   <form:input path="price" type="tel" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                    <form:label path="stock">Stock</form:label>
                    <form:input path="stock" type="tel" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                    <form:label path="image">Image </form:label>
                    <form:input path="image" type="file"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                    <form:label path="CatId">Category </form:label>
                    <form:select path="Catid" class="form-control">
                            <optgroup label="This is a group">
                                
								<c:forEach items="${categoryList}" var="category">
								
									<form:option class="form-control" value="${category.categoryId}">${category.categoryName}</form:option>
								</c:forEach>
                            </optgroup>
</form:select>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                     <form:label path="SupId" >Supplier </form:label>
                     <form:select path="Catid" class="form-control">
                            <optgroup label="This is a group">
                                
								<c:forEach items="${categoryList}" var="category">
								
									<form:option class="form-control" value="${category.categoryId}">${category.categoryName}</form:option>
								</c:forEach>
                            </optgroup>
</form:select>
                </div>
            </div>
        </div>
        <button class="btn btn-default" type="button">Add </button>
        <button class="btn btn-default" type="button">Edit </button>
        <button class="btn btn-default" type="button">Search </button>
    
        <button class="btn btn-default" type="button">Delete </button>
    </form:form>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>