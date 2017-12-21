<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="SHORTCUT ICON" href="images/hospital.png"  />
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hospital Management System</title>
        <!-- css -->
        <link href="" rel="stylesheet" type="text/css">
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
        <style>
            .hb:hover{
                color: red;
            }
        </style>
       <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
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

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse" style="margin-top:-5px;padding: 5px;">
               
			  <ul class="nav navbar-nav">
                              <li class="active"><a href="Patient_Home.jsp"><span class="fa fa-home"></span> Home</a></li>
                              <li><a href="Patient_Profile.jsp"><span class=""></span>View Profile</a></li>
                                <li><a href="BookApointment.jsp">Book Appointment</a></li>
                                <li><a href="PayBill.jsp">Pay Bill</a></li>
                                <li><a href="FeedbackForm.jsp">Feedback</a></li>
                                <li><a href="Logout.jsp"><span class="fa fa-sign-out"></span>Logout</a></li>
                                 
            </div>
           
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
            </nav>	
</div>
             <%
            
                String id = (String) session.getAttribute("PID");
                String name = (String) session.getAttribute("PNAME");
             
             %>           
                        <!-- Section: intro -->
    <section id="intro" class="intro">
		<div class="intro-content">
			<div class="container">
				<div class="row">
				<div class="col-lg-6">
						<div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
                                                    <img src="images/lady.png" class="img-responsive" alt="" width="500"/>
						</div>
					</div>	
                                    <div class="col-lg-6">
                                             
                                        <div class="panel-body" style="width: 125%">
                                            <div class="hb" style="color: green;font-size: 16px;cursor: pointer;text-align: left">Welcome!&nbsp;&nbsp;<%=name%>&nbsp;&nbsp;<%="[ "+id+" ]" %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:15px">Last Access time :<%=new Date(session.getLastAccessedTime()) %></span></div>
                                                

     <div id="myCarousel" class="carousel slide" data-ride="carousel" >
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner"  >

      <div class="item active">
          <img src="images/p.png" class="img-rounded img-responsive" alt="Los Angeles" style="width: 700px;" >
        
      </div>

      <div class="item">
          <img src="images/p2.png" class="img-rounded img-responsive" alt="Chicago" style="width: 700px;" >
        
      </div>
    
      <div class="item">
          <img src="images/p3.jpg" class="img-rounded img-responsive" alt="New York" style="width: 700px;">
        
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="fa fa-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="fa fa-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

                                                <center><h4>Welcome To Patient Treatment Zone.</h4></center>
                                            </div></div>
					
    </section>
    
</body>

</html>
