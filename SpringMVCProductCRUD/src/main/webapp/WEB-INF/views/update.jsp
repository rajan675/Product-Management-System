<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="./base.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
  <!-- This is form -->
  <div class="container m-3">
    <h3><b>Update the product details</b></h3>
  
   <form action="${pageContext.request.contextPath }/addProduct" method="post">
   <input type="text" value="${product.id }" name="id" />
  <div class="mb-3">
    <label for="title" class="form-label"><b>Product Name</b></label>
    <input required="required" type="text" class="form-control" id="title" name="name" placeholder="Enter name here" value="${product.name }">
  </div>
  <div class="mb-3">
    <label for="content" class="form-label"><b>Product Description</b></label>
    <textarea required="required" id="content" name="description" placeholder="Enter description here" class="form-control" style="height:150px ">${product.description }</textarea>
  </div>
  <div class="mb-3">
    <label for="title" class="form-label"><b>Product Price </b></label>
    <input required="required" type="text" class="form-control" id="title" name="price" placeholder="Enter price here" value="${product.price }">
  </div>
  <center>
  <button type="submit" class="btn btn-outline-warning">Update</button>
  </center>
</form>
<div class="container mt-1">
<a href="${pageContext.request.contextPath }/">
 <center> <button type="submit" class="btn btn-outline-danger">Back</button></center></a></div>
  </div>
</body>
</html>