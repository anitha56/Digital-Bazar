<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page isELIgnored="false" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Header</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fulid">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<!-- Brand/logo -->
					<a class="navbar-brand" href="home">Digital Bazar</a>
				

				<!-- Links -->
				
			<c:if test="${!sessionScope.loggedIn}">
				<ul class=" nav navbar-nav">
					<li class="nav-item">
					<a class="nav-link" href="home"><span class="glyphicon glyphicon-home">&nbspHome</span></a>
					</li>
					<li class="nav-item">
					<a class="nav-link" href="register"><span class="glyphicon glyphicon-user">&nbspRegister</span></a>
					</li>
					<li class="nav-item">
					<a class="nav-link" href="contactus"><span class="glyphicon glyphicon-envelope">&nbspContactUs</span></a>
					</li>
					<li class="nav-item">
					<a class="nav-link" href="aboutus"><span class="glyphicon glyphicon-info-sign">&nbspAbout Us</span></a>
					</li>
					<li class="nav-item">
					<a class="nav-link" href="Login"><span class="glyphicon glyphicon-log-in">&nbspLogin</span></a>
					</li>
					</ul>
				
					</c:if>					
					<c:if test="${sessionScope.loggedIn}">
					<c:if  test="${sessionScope.role=='ROLE_USER'}">
					<ul class="nav navbar-nav">
					<li  class="nav-item">
					<a class="nav-link" href="home"><span class="glyphicon glyphicon-home">&nbspHome</span></a></li>
					<li class="nav-item">
					<a class="nav-link" href="<c:url value="/productCatalog"/>">Product Catalog</a></li>
					<li class="nav-item">
					<a class="nav-link" href="<c:url value="/cart"/>"><span class="glyphicon glyphicon-shopping-cart">&nbspMyCart</span></a></li> 
					<li class="nav-item">
					<a class="nav-link" href="<c:url value="/myyorder"/>">My Order</a> 
					</li>
					</ul>
					<c:if test="${sessionScope.loggedIn}">
					<ul class="nav navbar-nav navbar-right">
					<li class="nav-item"><a class="nav-link">Hi ${sessionScope.username}</a></li>
					<li class="nav-link"><a href="perform_logout">Logout</a></li>
					</ul>
					</c:if>
					
				</c:if>
				</c:if>
                <c:if test="${sessionScope.loggedIn}">
				<c:if  test="${sessionScope.role=='admin'}">
				<ul class="nav navbar-nav">
					<li class="nav-item">
					<a class="nav-link" href="home"><span class="glyphicon glyphicon-home">&nbspHome</span></a></li>
					<li class="nav-item">
					<a class="nav-link" href="category">Manage Category</a></li>
					<li class="nav-item">
					<a class="nav-link"href="product">Manage Product</a></li>
                    <li class="nav-item">
					<a class="nav-link" href="supplier">Manage Supplier</a></li>
					<li class="nav-item">
					<a class="nav-link" href="perform_logout">
					Logout</a>
					</li>
					<li class="nav-item"><a class="nav-link">Hi ${sessionScope.username}</a></li>
					</ul>
				</c:if>	
				</c:if>				
			</nav>
			</div>
</body>
</html>