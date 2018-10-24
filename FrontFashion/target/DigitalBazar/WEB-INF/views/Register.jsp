<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register form</title>
<script type="text/javascript" src="https://cdn.jsdeliver.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#form').validate({
		rules:{
		username:{required:true},
		password:{required:true,minlength:5,maxlength:20},
		customername:{required:true},
		email:{required:true,email:true},
		mobileno:{required:true,number:true,minlength:10,maxlength:10}
		},
		messages:{
			username:{required:"username is mandatory"},
			password:{required:"password could be contain special characters"},
			customername:{required:"customername is mandatory"},
			email:{required:"email must be like @gmail.com"},
			mobileno:{required:"mobile number should not contain characters"},
		}
	})
})

</script>
<style type="text/css">
body{
    background-color: #cccccc;
}
</style>
</head>
<body>
<div class="container" style="max-width:600px;padding:40px 20px;background:#ebeff2">
	<form:form action="registerUser" modelAttribute="user" method="post" id="form" class="form-horizontal">
<h3 align="center">Register User</h3>
	<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">User Name</label>
		<div class="col-sm-15">
		<form:input path="username" name="username" placeholder="User Name" required="true"  class="form-control" />
	</div>
	</div>
		<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Password</label>
		<div class="col-sm-15">
		<form:input path="password" name="password" type="password" placeholder="Password" required="true" class="form-control" />
	</div>
	</div>
	<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Name</label>
		<div class="col-sm-15">
		<form:input path="customername" placeholder="Customer Name" required="true" class="form-control"/>
	</div>
	</div>
	<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Email ID</label>
		<div class="col-sm-15">
	<form:input path="emailId" type="email" placeholder="EmailId@gmail.com" required="true" class="form-control"/>
	</div>
	</div>
	<div class="form-group">
	      <label for="name" class ="control-label col-sm-3">Phone Number</label>
		<div class="col-sm-15">
		<form:input path="mobileno" placeholder="Phone Number" required="true" class="form-control"/>
	</div>
	<br>
	<div class="form-group" align="center">
	<input type="submit" class="btn btn-primary" value="Register" />
</div>
</div>
</form:form>
</div>
</body>
</html>