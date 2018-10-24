<%@include file="Header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product form</title>
<style type="text/css">
body{
    background-color: #cccccc;
}
</style>
</head>
<body>
<div class="container" style="max-width:600px;padding:40px 20px;background:#ebeff2">
<c:if test="${flag}">
	<form:form action="addProduct" modelAttribute="product" method="post" enctype="multipart/form-data" class="form-horizontal">
		<h2><center>Product Detail</center></h2>
	
		<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Product Name</label>
		<div class="col-sm-15">
		<form:input path="productname" required="true" class="form-control" />
		<form:errors path="productname" cssStyle="color:red">
		</form:errors>
		</div>
		</div>
	<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Price</label>
		<div class="col-sm-15">
		<form:input path="price" required="true" class="form-control"/>
		<form:errors path="price" cssStyle="color:red">
		</form:errors>
		</div>
		</div>

		<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Stock</label>
		<div class="col-sm-15">
		<form:input path="quantity" required="true" class="form-control"/>
		<form:errors path="quantity" cssStyle="color:red">
		</form:errors>
		</div>
		</div>
	
		<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Category</label>
		<div class="col-sm-15">
		<form:select path="categoryid" required="true" class="form-control">
				<form:option value="0" label="--Select List--" />
				<form:options items="${categoryList}" />
			</form:select>
			</div>
			</div>
		<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Supplier</label>
		<div class="col-sm-15">
		<form:select path="supplierid" class="form-control">
				<form:option value="0" label="--Select List--" />
				<form:options items="${supplierList}" />
			</form:select>
		<form:errors path="supplierid" cssStyle="color:red">
		</form:errors>
		</div>
		</div>
	
		<div class="form-group">
	      <label for="name" class ="control-label col-sm-9">Product Description</label>
		<div class="col-sm-15">
		<form:input path="productDesc" required="true" class="form-control"/>
		<form:errors path="productDesc" cssStyle="color:red">
		</form:errors>
	</div>
	</div>
	<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Product Image</label>
		<div class="col-sm-15">
		<form:input type="file" path="pimage" required="true" class="form-control"/>
		</div>
		</div>
       
        <div class="form-group" align="center">
				<input type="submit" class="btn btn-primary" value="Insert Product" />
		</div>
</form:form>
</c:if>
</div>

<div class="container" style="max-width:600px;padding:40px 20px;background:#ebeff2">
<c:if test="${!flag}">
	<form:form action="updateProduct" modelAttribute="product" method="post" enctype="multipart/form-data" >
		<h2><center>Product Detail</center></h2>
		<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Product ID</label>
		<div class="col-sm-15">
	<form:input path="productid" value="${productid}" class="form-control"/>
	</div>
	</div>
		<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Product Name</label>
		<div class="col-sm-15">
		<form:input path="productname" value="${productname}" class="form-control"/>
		<form:errors path="productname"></form:errors>
</div>
</div>
	<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Price</label>
		<div class="col-sm-15">
		<form:input path="price" value="${price}" class="form-control" />
		<form:errors path="price" cssStyle="color:red">
		</form:errors>
	</div>
	</div>
		<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Stock</label>
		<div class="col-sm-15">
		<form:input path="quantity" value="${quantity}" class="form-control" />
		<form:errors path="quantity" cssStyle="color:red"></form:errors>
		</div>
		</div>
	<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Category</label>
		<div class="col-sm-15">
		<form:select path="categoryid" class="form-control">
				<form:option value="0" label="--Select List--" />
				<form:options items="${categoryList}" />
			</form:select>
			</div>
			</div>
		<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Supplier</label>
		<div class="col-sm-15">
		<form:select path="supplierid" class="form-control">
				<form:option value="0" label="--Select List--" />
				<form:options items="${supplierList}" />
			</form:select>
	</div>
	</div>
	<div class="form-group">
	      <label for="name" class ="control-label col-sm-9">Product Description</label>
		<div class="col-sm-15">
		<form:input path="productDesc" class="form-control"/>
		<form:errors path="productDesc" cssStyle="color:red">
		</form:errors>
		</div>
		</div>
	<div class="form-group" align="center">
				<input type="submit" class="btn btn-primary" value="Update Product" />
				</div>
					</form:form>
</c:if>
</div>

<table align="center" class="table">
<tr><td colspan="8"><center>Product Detail</center></td></tr>
<tr>
	<td> Product ID</td>
	<td> Product Name</td>
	<td> Price </td>
	<td> Stock</td>
	<td> Category</td>
	<td>Images</td>
	<td> Operation</td>
</tr>
<c:forEach items="${productList}" var="product">
<tr>
		<td>${product.productid}</td>
		<td>${product.productname}</td>
		<td>${product.price}</td>
		<td>${product.quantity}</td>
		<td>${product.categoryid}</td>
		<td> <img src="<c:url value='/resources/images${product.productid}.jpg' ></c:url>" width="80 px" height="100 px"/></td>
		<td>
		<a href="<c:url value="/deleteProduct/${product.productid}"/>"> <button type="button" class="btn btn-danger">Delete</button></a>
		<a href="<c:url value="/editProduct-${product.productid}"/>"><button type="button" class="btn btn-primary">Edit</button></a>
		</td>
</tr>
</c:forEach>
</table>