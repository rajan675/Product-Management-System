
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<html>
<head>

</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<div class="text-center mb-3">
					<h3><b>Welcome to Product App</b></h3>
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Product Name</th>
								<th scope="col">Description</th>
								<th scope="col">Price</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${products }" var="p">
							<tr>
								<th scope="row">${p.id }</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td class="font-weight-bold">&#x20B9;${p.price }</td>
								<td>
								  <a href="delete/${p.id }"><i class="fa-solid fa-trash-can text-danger" style="font-size: 25px"></i></a>  
						          <a href="update/${p.id }"><i class="fa-solid fa-pen" style="font-size: 25px"></i></a>

								  </td>
								
							</tr>
							</c:forEach>
						</tbody>
					</table>
                    <div class="container text-center">
                       <a href="addProduct" class="btn btn-outline-success">Add Product</a>
                    </div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
