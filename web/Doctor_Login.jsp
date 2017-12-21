<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        
        <meta charset="utf-8">
        <link rel="SHORTCUT ICON" href="images/hospital.png"  />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hospital Management System</title>
        <!-- css -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="css/cubeportfolio.min.css">
	<link href="css/nivo-lightbox.css" rel="stylesheet" />
	<link href="css/default.css" rel="stylesheet" type="text/css" />
	<link href="css/owl.carousel.css" rel="stylesheet" media="screen" />
        <link href="css/owl.theme.css" rel="stylesheet" media="screen" />
	<link href="css/animate.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>	 
        <script src="js/bootstrap.min.js"></script>
	<!-- boxed bg -->
	<link id="bodybg" href="css/bg1.css" rel="stylesheet" type="text/css" />
	<!-- template skin -->
    </head>
    <body id="page-top" data-spy="scroll" data-target=".navbar-custom" style="background:url('images/img.jpg');background-repeat: no-repeat">
        <div id="wrapper">
            <nav class="navbar navbar-custom navbar-fixed-top" role="navigation" style="background: #e1edf7">

               		<!--header-->
                        <%@include file="Seperate_Content/header.html" %>
        
                        <!--menu services-->
                        
                        <%@include file="Seperate_Content/menu_services.html" %>
            </nav>
        </div>
        
        <!-- Section: intro -->
        <section id="intro" class="intro">
		<div class="intro-content">
			<div class="container">
				<div class="row">
				<div class="col-lg-6">
						<div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
                                                    <img src="images/lady.png" class="img-responsive" alt=""  width="600"/>
						</div>
					</div>	
					<div class="col-lg-6">
                                             
					<div class="panel-body">
                                            <center><h3>Doctor Login</h3></center><hr>
					<div class="col-lg-6">
						<div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
                                                    <img src="images/doctor.png" style="width: 190px;height: 210px;margin-bottom: 9px;" class="img-responsive" alt="" />
						</div>
					</div>		
					<form action="DoctorDao.jsp" method="post" role="form" class="contactForm lead">
    										<div class="row">
    											<div class="col-xs-6 col-sm-6 col-md-6">
    												<div class="form-group">
    													<label>Doctor Name</label>
                                                                                                        <input type="text" required="" name="Doctor_name" id="first_name" class="form-control input-md" data-rule="minlen:3" data-msg="Please enter at least 3 chars">
                                                        <div class="validation"></div>
    												</div>
    											</div>
                                                                                    <div class="col-xs-6 col-sm-6 col-md-6">
    												<div class="form-group">
    													<label>Doctor ID</label>
                                                                                                        <input type="text" name="did" required="" id="first_name" class="form-control input-md" data-rule="minlen:3" data-msg="Please enter at least 3 chars">
                                                        <div class="validation"></div>
    												</div>
    											</div>
    											<div class="col-xs-6 col-sm-6 col-md-6">
    												<div class="form-group">
    													<label>Password</label>
                                                                                                        <input type="password"  required=" " name="Password" id="last_name" class="form-control input-md" data-rule="minlen:3" data-msg="Please enter at least 3 chars">
                                                                                                      <div class="validation"></div>
    												</div>
    											</div>
    										</div>
    										<input type="submit" value="Submit" class="btn btn-skin btn-block btn-lg">
    									</form>
                                            <center><a href="ForgotPassword.jsp">Forgot Password?</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="DoctorForm.jsp">Sign Up Here</a></center>
											</div>
							</div>	
					</div>		
				</div>		
			</div>
				
    </section>
    </body>
</html>
