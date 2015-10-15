<%@page import="com.sun.glass.ui.Size"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ratnakumar.ncra.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>NCRA - Hibernate/PostgreSQl</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

<!-- Custom Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"
	type="text/css">

<!-- Plugin CSS -->
<link rel="stylesheet" href="css/animate.min.css" type="text/css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/creative.css" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top">

	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">NCRA -
					Hibernate/PostgreSQL/JSP</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="page-scroll" href="#about">Forms</a></li>
					<li><a class="page-scroll" href="#services">Data</a></li>
					<li><a class="page-scroll" href="#portfolio">Portfolio</a></li>
					<li><a class="page-scroll" href="#contact">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<header>
		<div class="header-content1">
			<div class="header-content-inner1">
				<h1></h1>
				<hr>
				<p></p>
				<a href="#about" class="btn btn-primary btn-xl page-scroll"></a>
			</div>
		</div>
	</header>

	<section class="bg-primary" id="about">
		<div class="container">
			<div class="row">
				<!--<div class="col-lg-12 col-lg-offset-2 text-center form-group">
					<h2 class="section-heading">!</h2>
					<hr class="light">
					<p class="text-faded"></p>
					<a href="#" class="btn btn-default btn-xl"></a>-->

				<ul class="nav nav-tabs" style="color: #000;">
					<li class="active"><a data-toggle="tab" href="#home" style="color: #000;">User Register</a></li>
					<li><a data-toggle="tab" href="#menu1" style="color: #000;">User Query</a></li>
					<li><a data-toggle="tab" href="#menu2" style="color: #000;">List Register</a></li>
				</ul>

				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						<h3>User Data Insert Form</h3>
											<form action="register.jsp" method="post" class="form-control">
						Name:<input type="text" name="name" /><br> <br /> Password:<input
							type="password" name="password" /><br> <br /> Email ID:<input
							type="text" name="email" /><br> <br /> Country:<input
							type="text" name="country" /><br> <br /> <input
							type="submit" value="register" />
					</form>
					</div>
					<div id="menu1" class="tab-pane fade">
						<h3>User Data Query Form</h3>
						<p>Enter any combination of search terms</p>
					<form action="query.jsp" method="post" class="form-control">
						Id:<input type="text" name="id" /><br /> Name:<input type="text"
							name="name" /><br /> Email ID:<input type="text" name="email" /><br />
						Country:<input type="text" name="country" /><br /> <input
							type="submit" value="show" />

					</form>
					</div>
					<div id="menu2" class="tab-pane fade">
						<h3>List Data Insert Form</h3>
						<form action="listRegister.jsp" method="post" class="form-control">
						Name:<input type="text" name="name" /><br> <br /> Password:<input
							type="password" name="password" /><br> <br /> Email ID:<input
							type="text" name="email" /><br> <br /> Country:<input
							type="text" name="country" /><br> <br /> <input
							type="submit" value="register" />
					</form>
					</div>
				</div>
				<!--</div>-->
			</div>
		</div>
	</section>

	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Data</h2>
					<hr class="primary">
					<table border="1">
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Email</th>
							<th>Country</th>
							<th>Pwd</th>
						</tr>

						<%
			UserDao udao = new UserDao();
			List<User> ud = udao.showAll();
			for (int i = 0; i < ud.size(); i++) {
		%>
						<tr>
							<td>
								<%
					out.println(ud.get(i).getId());
				%>
							</td>
							<td>
								<%
					out.println(ud.get(i).getName());
				%>
							</td>
							<td>
								<%
					out.println(ud.get(i).getEmail());
				%>
							</td>
							<td>
								<%
					out.println(ud.get(i).getCountry());
				%>
							</td>
							<td>
								<%
					out.println(ud.get(i).getPassword());
				%>
							</td>
						</tr>
						<%
			}
		%>
					</table>

					<table border="1">
						<tr>
							<th>Id</th>
							<th>Country Name</th>
							<th>Country Code</th>
							<th>Short Name</th>
						</tr>

						<%
			ListsDao ldao = new ListsDao();
			//udao.showAll();
			List<Country> ld = ldao.showAllCountry();
			for (int i = 0; i < ld.size(); i++) {
		%>
						<tr>
							<td>
								<%
					out.println(ld.get(i).getId());
				%>
							</td>
							<td>
								<%
					out.println(ld.get(i).getName());
				%>
							</td>
							<td>
								<%
					out.println(ld.get(i).getTelCode());
				%>
							</td>
							<td>
								<%
					out.println(ld.get(i).getShortName());
				%>
							</td>
						</tr>
						<%
			}
		%>
					</table>
				</div>

			</div>
		</div>
		
		<!--<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-diamond wow bounceIn text-primary"></i>
						<h3>Sturdy Templates</h3>
						<p class="text-muted">Our templates are updated regularly so
							they don't break.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-paper-plane wow bounceIn text-primary"
							data-wow-delay=".1s"></i>
						<h3>Ready to Ship</h3>
						<p class="text-muted">You can use this theme as is, or you can
							make changes!</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-newspaper-o wow bounceIn text-primary"
							data-wow-delay=".2s"></i>
						<h3>Up to Date</h3>
						<p class="text-muted">We update dependencies to keep things
							fresh.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-heart wow bounceIn text-primary"
							data-wow-delay=".3s"></i>
						<h3>Made with Love</h3>
						<p class="text-muted">You have to make your websites with love
							these days!</p>
					</div>
				</div>
			</div>
		</div>-->
	</section>

	<!--<section class="no-padding" id="portfolio">
		<div class="container-fluid">
			<div class="row no-gutter">
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="img/portfolio/1.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="img/portfolio/2.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="img/portfolio/3.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="img/portfolio/4.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="img/portfolio/5.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="img/portfolio/6.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>-->

	<aside class="bg-dark">
		<div class="container text-center">
			<div class="call-to-action">
				<h2></h2>
				<a href="#" class="btn btn-default btn-xl wow tada"></a>
			</div>
		</div>
	</aside>

	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading"></h2>
					<hr class="primary">
					<p></p>
				</div>
				<div class="col-lg-4 col-lg-offset-2 text-center">
					<i class="fa fa-phone fa-3x wow bounceIn"></i>
					<p></p>
				</div>
				<div class="col-lg-4 text-center">
					<i class="fa fa-envelope-o fa-3x wow bounceIn" data-wow-delay=".1s"></i>
					<p>
						<a href="mailto:your-email@your-domain.com"></a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.fittext.js"></script>
	<script src="js/wow.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="js/creative.js"></script>

</body>

</html>
