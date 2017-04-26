<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link href="images/cloud.ico" rel="icon" type="image/x-icon">
<!-- css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--css -->
<!-- font -->
<link href='http://fonts.googleapis.com/css?family=Josefin+Sans:400,100,100italic,300,300italic,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- font -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>

<%@ page import="cloud.clouddb.cloud_user.*" %>
<% 
	session = request.getSession(); 
	User a = (User)session.getAttribute("currentSessionUser");
	String username = a.getUsername();
%>

</head>
<body> 
<!-- Header -->
	<div class="header">
		<!-- Navbar -->
		<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<a  href="index.jsp"><h1>Cloud Computing</h1></a>
				</div>

				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="hover-effect"><a href="index.jsp">Home</a></li>
						<li class="hover-effect">
			 					<a id="modal-564501" href="#modal-container-564501" role="button" class="btn" data-toggle="modal" style="color: #FFF;">Charging Bank</a>
			
								<div class="modal fade" id="modal-container-564501" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
							 					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
												<h2>
													Pay for Diamonds
												</h2>
											</div>
											<div class="modal-body">
												<div class="col-md-8 col-md-offset-2 contact-right-w3">
													<div class="alert alert-success alert-dismissable">
				 										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
														<strong>Reminder: </strong>You have a successful payment! <br><a href="userpage.html" class="alert-link">Click here to check</a>
													</div>
													<grammarly>
														<div class="_e725ae-textarea_btn _e725ae-not_focused">
															<div class="_e725ae-transform_wrap">
																<div class="_e725ae-status"></div>
															</div>
														</div>
													</grammarly>
													<script type="text/javascript">
														$(document.ready(function(){
															$("#show").click(function(){
																$("alert").show();
															})
														});
													</script>
													<form action="#" method="post">
														<ul class="form-ul">
															<li>10 diamonds</li>
															<li>20 diamonds</li>
															<li>50 diamonds</li>
															<li>100 diamonds</li>
															<input type="submit" class="pay_btn" value="Submit" id="show">
														</ul>
													</form>
												</div>
												<div class="clearfix"></div>
											</div>
											<script type="text/javascript">
												$(function(){
													$(".form-ul li").click(function(){
														$(this).addClass("form-ul-click").siblings().removeClass("form-ul-click");
													})
												})
											</script>
										</div>
					
									</div>
								</div>
							
						</li>
						<li class="hover-effect"><a href="apps.jsp">Apps Center</a></li>
						<li class="hover-effect"><a href="about.jsp">About</a></li>
						<li class="hover-effect"><a href="userpage.html"><%=username %></a></li>
					</ul>
				</div>

			</div>
		</nav>
		<!-- //Navbar -->

		<!-- Slider -->
		<div class="slider">
			<ul class="rslides" id="slider">
				<li>
					<img src="images/03.jpg" alt="" />
				</li>
				<li>
					<img src="images/02.jpg" alt="" />
				</li>
				<li>
					<img src="images/01.jpg" alt="" />
				</li>
			</ul>
		</div>
		<!-- Slider -->
	</div>
	<!-- Banner-Slider-JavaScript -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider").responsiveSlides({
				auto: true,
				nav: true,
				speed: 800,
				namespace: "callbacks",
				pager: true,
			});
		});
	</script>
	<!-- Banner-Slider-JavaScript -->
	<!-- Header -->

<!-- trend -->
<div class="trend-apps">
	<div class="container">
		<h3>Trending Applications</h3>
		<div class="col-md-3 trend-apps-Info trend-apps-Info-top">
			<span class="glyphicon glyphicon-sort-by-attributes" aria-hidden="true"></span>
			<h4>Application 01</h4>
			<p>Curabitur suscipit porttitor aliquam. Etiam id placerat purus. Integer sodales elit eget arcu placerat.</p>
			<a href="#">Click Here</a>
		</div>
		<div class="col-md-3 trend-apps-Info">
			<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>
			<h4>Application 02</h4>
			<p>Curabitur suscipit porttitor aliquam. Etiam id placerat purus. Integer sodales elit eget arcu placerat.</p>
			<a href="#">Click Here</a>
		</div>
		<div class="col-md-3 trend-apps-Info trend-apps-Info-bottom">
			<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
			<h4>Application 03</h4>
			<p>Curabitur suscipit porttitor aliquam. Etiam id placerat purus. Integer sodales elit eget arcu placerat.</p>
			<a href="#">Click Here</a>
		</div>
		<div class="col-md-3 trend-apps-Info trend-apps-Info-bottom">
			<span class="glyphicon glyphicon-object-align-right" aria-hidden="true"></span>
			<h4>Application 04</h4>
			<p>Curabitur suscipit porttitor aliquam. Etiam id placerat purus. Integer sodales elit eget arcu placerat.</p>
			<a href="#">Click Here</a>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- trend -->

<!-- new apps -->
<div class="new-apps-grid">
	<div class="container">
		<div>
		<h3>New Appslications</h3>
		<div style="clear: both;"></div>
		<button style="float: right; z-index: 999; font-size: 14px; width: 150px; height: 40px; margin-right: 10px; border:2px solid #E91E63; background: #E91E63; border-radius: 5px; color: #FFF;">Add Your apps</button>
		</div>
		<div style="clear: both;"></div>
		<div class="col-md-3 new-grid-w3l view view-eighth">
			<img src="images/ng4.jpg" alt=" " />
			<div class="mask">
				<a href="single.html"><h4>Click here</h4></a>
				<p>Please start to experience it</p>
			</div>
		</div>
		<div class="col-md-3 new-grid-w3l view view-eighth">
			<img src="images/ng4.jpg" alt=" " />
			<div class="mask">
				<a href="single.html"><h4>Click here</h4></a>
				<p>Please start to experience it</p>
			</div>
		</div>
		<div class="col-md-3 new-grid-w3l view view-eighth">
			<img src="images/ng4.jpg" alt=" " />
			<div class="mask">
				<a href="single.html"><h4>Click here</h4></a>
				<p>Please start to experience it</p>
			</div>
		</div>
		<div class="col-md-3 new-grid-w3l view view-eighth">
			<img src="images/ng4.jpg" alt=" " />
			<div class="mask">
				<a href="single.html"><h4>Click here</h4></a>
				<p>Please start to experience it</p>
			</div>
		</div>
		<div class="col-md-3 new-grid-agile view view-eighth">
			<img src="images/ng4.jpg" alt=" " />
			<div class="mask">
				<a href="single.html"><h4>Click here</h4></a>
				<p>Please start to experience it</p>
			</div>
		</div>
		<div class="col-md-3 new-grid-agile view view-eighth">
			<img src="images/ng4.jpg" alt=" " />
			<div class="mask">
				<a href="single.html"><h4>Click here</h4></a>
				<p>Please start to experience it</p>
			</div>
		</div>
		<div class="col-md-3 new-grid-agile view view-eighth">
			<img src="images/ng4.jpg" alt=" " />
			<div class="mask">
				<a href="single.html"><h4>Click here</h4></a>
				<p>Please start to experience it</p>
			</div>
		</div>
		<div class="col-md-3 new-grid-agile view view-eighth">
			<img src="images/ng4.jpg" alt=" " />
			<div class="mask">
				<a href="single.html"><h4>Click here</h4></a>
				<p>Please start to experience it</p>
			</div>
		</div>
		<div class="clearfix"></div>
		<a href="#" class="more-click">More >></a>
	</div>
</div>
<!-- new apps-->
<!-- footer -->
<div class="footer" style="padding-bottom:35px;">
	<div class="container">
		<div class="clearfix"></div>
		<div class="copyright">
			<p>Copyright &copy; 2017.Cloud Computing Team 02 All rights reserved.</p>
		</div>
	</div>
</div>
<!-- footer -->
</body>
</html>
