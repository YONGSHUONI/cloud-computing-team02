<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>About</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link href="images/cloud.ico" rel="icon" type="image/x-icon">
<!-- css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!-- css -->
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
<body style="background: #262c54;"> 
<!-- banner -->
<div class="sub-banner">
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
														}));
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
												}));
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
</div>
<!-- banner -->

<!-- team -->
	<div class="team-w3layouts">
		<div class="container">
			<h3>Our Team</h3>
			<div class="w3l_team_grids-agile">
				<div class="col-md-3 w3l_team_grid">
					<div class="view view-second">
						<img src="images/team01.jpg" alt=" " class="img-responsive" />
						<div class="mask"></div>
						<div class="content">
							<div class="w3l_social_icons w3l_social_icons1">
								<ul>
									<li><a href="#" class="linkedin"></a></li>
									<li><a href="#" class="google"></a></li>
									<li><a href="#" class="twitter"></a></li>
									<li><a href="#" class="facebook"></a></li>
								</ul>
							</div>
							<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
						</div>
					</div>
					<h4 style="color: #262c54;">ShouYong Ni</h4>
					<p>Programmer</p>
				</div>
				<div class="col-md-3 w3l_team_grid">
					<div class="view view-second">
						<img src="images/team02.jpg" alt=" " class="img-responsive" />
						<div class="mask"></div>
						<div class="content">
							<div class="w3l_social_icons w3l_social_icons1">
								<ul>
									<li><a href="#" class="linkedin"></a></li>
									<li><a href="#" class="google"></a></li>
									<li><a href="#" class="twitter"></a></li>
									<li><a href="#" class="facebook"></a></li>
								</ul>
							</div>
							<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
						</div>
					</div>
					<h4 style="color: #262c54;">Sefa Akca</h4>
					<p>Programmer</p>
				</div>
				<div class="col-md-3 w3l_team_grid">
					<div class="view view-second">
						<img src="images/team03.jpg" alt=" " class="img-responsive" />
						<div class="mask"></div>
						<div class="content">
							<div class="w3l_social_icons w3l_social_icons1">
								<ul>
									<li><a href="#" class="linkedin"></a></li>
									<li><a href="#" class="google"></a></li>
									<li><a href="#" class="twitter"></a></li>
									<li><a href="#" class="facebook"></a></li>
								</ul>
							</div>
							<p>What is broken can be reforged!</p>
						</div>
					</div>
					<h4 style="color: #262c54;">Xiaoxiao Wang</h4>
					<p>Programmer</p>
				</div>
				<div class="col-md-3 w3l_team_grid">
					<div class="view view-second">
						<img src="images/team01.jpg" alt=" " class="img-responsive" />
						<div class="mask"></div>
						<div class="content">
							<div class="w3l_social_icons w3l_social_icons1">
								<ul>
									<li><a href="#" class="linkedin"></a></li>
									<li><a href="#" class="google"></a></li>
									<li><a href="#" class="twitter"></a></li>
									<li><a href="#" class="facebook"></a></li>
								</ul>
							</div>
							<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
						</div>
					</div>
					<h4 style="color: #262c54;">Shou Zhou</h4>
					<p>Programmer</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //team -->

<!-- About -->
	<div class="about-Info">
			<div class="about-grids-agileits-w3layouts">
				<div class="col-md-4 col-sm-4 about-left">
					
				</div>
				<div class="col-md-8 col-sm-8 about-right">
					<div class="col-md-4 col-sm-4 about-grid about-text about-grid-1">
						<img src="images/c1.png" alt="">
						<h3>Convallis </h3>
						<p>A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque.</p>
					</div>
					<div class="col-md-4 col-sm-4 about-grid about-image about-grid-2">
						
					</div>
					<div class="col-md-4 col-sm-4 about-grid about-text about-grid-3">
						<img src="images/c2.png" alt="" />
						<h3>Lacinia</h3>
						<p>A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque.</p>
					</div>
					<div class="col-md-4 col-sm-4 about-grid about-image about-grid-4">
						
					</div>
					<div class="col-md-4 col-sm-4 about-grid about-text about-grid-5">
						<img src="images/c3.png" alt="" />
						<h3>Sapien</h3>
						<p>A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque.</p>
					</div>
					<div class="col-md-4 col-sm-4 about-grid about-image about-grid-6">
					
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
	</div>
<!-- About -->

<!-- footer -->
<div class="footer">
	<div class="container">
		<div class="clearfix"></div>
		<div class="copyright" style="border-top: 1px dashed #FFF;" >
			<p style="color: #FFF;">Copyright &copy; 2017.Cloud Computing Team 02 All rights reserved.</p>
		</div>
	</div>
</div>
<!-- footer -->
</body>
</html>