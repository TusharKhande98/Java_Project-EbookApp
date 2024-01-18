<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Index</title>
<%@include file="All_Components/AllCss.jsp"%>
<style type="text/css">
	.back-img
	{
		background: url("img/book-library-with-old-open-textbook-stack-piles-literature-text-archive-reading-desk_779468-5822.avif");
		height: 50vh;
		width: 100%;
		background-repeat: no-repeat;
		background-size: cover;
	}
	
	.crd-ho:hover
	{
		background-color: #fcf7f7;
	}
	.pd-tp
	{
		padding-top: 10px;	
	}

	
</style>

</head>
<body style="background-color: #f7f7f7;">
	<%@include file="All_Components/navbar.jsp" %>

	<div class="container-fluid back-img">
		<h2 class ="text-center text-white p-5">EBook Management System</h2>
	</div>
	
	
	
	<!-- Start of Recent Book -->
	<div class="container">
		<h3 class="text-center pd-tp">Recent Book</h3>
		<div class="row">
			<!-- Book-1 -->
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
						<p>Java Programming</p>
						<p>Balguruswamy</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>  
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
							<a href="" class="btn btn-danger btn-sm ml-1">299/-</a>  										
						</div>
					</div>
				</div>
			</div>
			<!-- Book-2 -->
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<img alt="" src="book/JS.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
						<p>JavaScript</p>
						<p>Margin Haverbeke</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>  
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
							<a href="" class="btn btn-danger btn-sm ml-1">299/-</a>  										
						</div>
					</div>
				</div>
			</div>
			<!-- Book-3 -->
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<img alt="" src="book/python.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
						<p>Python</p>
						<p>Ryan Turner</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>  
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
							<a href="" class="btn btn-danger btn-sm ml-1">299/-</a>  										
						</div>
					</div>
				</div>
			</div>
			<!-- Book-4 -->
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<img alt="" src="book/Bugatti veyron.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
						<p>SQL</p>
						<p>James Groff</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>  
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
							<a href="" class="btn btn-danger btn-sm ml-1">299/-</a>  										
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center p-4">
			<a href="" class="btn btn-danger btn-sm text-white">View All</a>			
		</div>		
	</div>
	<!-- End of Recent Book -->
	<hr>	
	<!-- Start of New Book -->
	<div class="container pd-tp">
		<h3 class="text-center pd-tp">New Book</h3>
		<div class="row">
			<!-- Book-1 -->
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
						<p>Java Programming</p>
						<p>Balguruswamy</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>  
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
							<a href="" class="btn btn-danger btn-sm ml-1">299/-</a>  										
						</div>
					</div>
				</div>
			</div>
			<!-- Book-2 -->
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<img alt="" src="book/JS.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
						<p>JavaScript</p>
						<p>Margin Haverbeke</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>  
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
							<a href="" class="btn btn-danger btn-sm ml-1">299/-</a>  										
						</div>
					</div>
				</div>
			</div>
			<!-- Book-3 -->
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<img alt="" src="book/python.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
						<p>Python</p>
						<p>Ryan Turner</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>  
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
							<a href="" class="btn btn-danger btn-sm ml-1">299/-</a>  										
						</div>
					</div>
				</div>
			</div>
			<!-- Book-4 -->
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<img alt="" src="book/Bugatti veyron.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
						<p>SQL</p>
						<p>James Groff</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>  
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
							<a href="" class="btn btn-danger btn-sm ml-1">299/-</a>  										
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center p-4">
			<a href="" class="btn btn-danger btn-sm text-white">View All</a>			
		</div>	
	</div>
	<!-- End of New Book -->
	<hr>
	<!-- Start of Old Book -->
	<div class="container">
		<h3 class="text-center pd-tp">Old Book</h3>
		<div class="row">
			<!-- Book-1 -->
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<img alt="" src="book/java.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
						<p>Java Programming</p>
						<p>Balguruswamy</p>
						<p>Categories: New</p>
						<div class="row justify-content-center">
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
							<a href="" class="btn btn-danger btn-sm ml-1">299/-</a>  										
						</div>
					</div>
				</div>
			</div>
			<!-- Book-2 -->
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<img alt="" src="book/JS.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
						<p>JavaScript</p>
						<p>Margin Haverbeke</p>
						<p>Categories: New</p>
						<div class="row justify-content-center">
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
							<a href="" class="btn btn-danger btn-sm ml-1">299/-</a>  										
						</div>
					</div>
				</div>
			</div>
			<!-- Book-3 -->
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<img alt="" src="book/python.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
						<p>Python</p>
						<p>Ryan Turner</p>
						<p>Categories: New</p>
						<div class="row justify-content-center">
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
							<a href="" class="btn btn-danger btn-sm ml-1">299/-</a>  										
						</div>
					</div>
				</div>
			</div>
			<!-- Book-4 -->
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<img alt="" src="book/Bugatti veyron.jpg" style="width: 150px; height: 200px;" class="img-thumblin">
						<p>SQL</p>
						<p>James Groff</p>
						<p>Categories: New</p>
						<div class="row justify-content-center">
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
							<a href="" class="btn btn-danger btn-sm ml-1">299/-</a>  										
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center p-4">
			<a href="" class="btn btn-danger btn-sm text-white">View All</a>			
		</div>	
	</div>
	<!-- End of Old Book -->
	
	
	<%@include file="All_Components/footer.jsp" %>	
	
	


</body>
</html>