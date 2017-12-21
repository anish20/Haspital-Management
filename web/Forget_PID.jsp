<%-- 
    Document   : Patient_ForgetPass
    Created on : Nov 22, 2017, 2:21:56 PM
    Author     : ANISH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="SHORTCUT ICON" href="images/hospital.png"  />
        <meta charset="utf-8">
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
        <script type="text/javascript">
           
        </script>
         <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

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
                        
                        <div class="container navigation">
		
            <div class="navbar-header page-scroll">
                    <a class="navbar-brand" href="index.jsp">
                        <img src="images/an.png" alt="logo" style="margin-left: -70px; margin-top: -62px;"  width="400" height="180" />
                </a>
            </div>
                            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
			  <ul class="nav navbar-nav">
				<li class="active"><a href="index.html">Home</a></li>
				<li><a href="Services.jsp">Service</a></li>
				<li><a href="ViewDoctors.jsp">Doctors</a></li>
                                <li><a href="About.jsp">About Us</a></li>
                                <li><a href="Contact.jsp">Contact Us</a></li>
			  </ul>
            </div>
                        </div>
            </nav>
        </div>
                        
                        <section id="intro" class="intro">
		<div class="intro-content">
			<div class="container">
				<div class="row">
				<div class="col-lg-6">
						<div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
                                                    <img src="images/lady.png" class="img-responsive" alt="" width="500" />
						</div>
					</div>	
                                    <br><br>
                                    
                                    
                                    
                                    <div class="col-lg-6">
                                        <%
                                             String m1=(String)request.getAttribute("ms");
                                             if(m1!=null){
                                             %>
                                             <div class="container bg-primary" style="width: 100%;padding-bottom: 10px;padding-top: 10px;margin: auto">
                                                 <span><a href="Forget_PID.jsp" class="close" data-dismiss="model" style="color: red;" >&times;</a><%=m1%></span>
                                               </div>
                                                 <%}%><br>
                                        <div class="panel-body" style="padding-bottom: 30px;">
                                            <form action="ForgetPID" method="post" class="contactForm lead">
                                                 <center><h4>Patient Forgot Patient ID Form</h4></center><hr>
                                                 <div class="col-lg-7">
                                                      <div class="input-group"  />
                                                        <span class="input-group-addon"  ><i class="fa fa-user" ></i></span>
                                                          <input placeholder="Patient Name" required="" type="text" name="pname" id="first_name" class="form-control input-md" title="Enter your Patient ID">
					              </div>
                                                    </div>
                                                  <div class="col-lg-5">
                                                      <input type="submit" class="btn btn-info" value="Get PID" name="btn">
                                                 </div>
                                            </form> 
                                        </div><br>
                                        <%
                                             String m=(String)request.getAttribute("PID");
                                             if(m!=null){
                                             %>
                                             <div class="container bg-primary" style="width: 100%;padding-bottom: 10px;padding-top: 10px;margin: auto">
                                                 <div><a href="Forget_PID.jsp" class="close" data-dismiss="model" style="color: red;font-weight: bold" >&times;</a><%="Your Patient ID is :"+m%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style="color: white" href="index.jsp">Back to Login&rightarrow;</a></div>
                                               </div>
                                             <%}%>
			               </div>
                                    
					</div>	
                           
				</div>	
                    
			</div>	
    </section>
    
    </body>
</html>
