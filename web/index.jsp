<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
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
                                                    <img src="images/lady.png" class="img-responsive " alt="" width="600" />
						</div>
					</div>	
					<div class="col-lg-6">
                                             <%
                                             String m=(String)request.getAttribute("M");
                                             if(m!=null){
                                             %>
                                             <div class="container bg-light" style="width: 100%;padding-bottom: 10px;padding-top: 10px;">
                                                 <span><a href="index.jsp" class="close" data-dismiss="model" >&times;</a><img src="images/Error_48px.png" style="width: 25px;"><%=m%></span>
                                               
                       
                                             </div><br>
                                             <%}%>
                                            <div class="panel-body" >
                                            <center><h3>Patient Login</h3></center><hr>
					<div class="col-lg-6">
						<div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
                                                    <img src="images/patient.png" style="width: 190px;height: 220px;margin-bottom: 9px;" class="img-responsive" alt="" />
						</div>
					</div>		
                                            <form action="Patient_Register" method="post" role="form" class="contactForm lead">
                                                <table>
                                                    
                                                    <tr>
                                                        <td>
                                                           <div class="form-group ">
    			                                     <label>Patient Name</label>
                                                             <input required="" type="text" name="pname" id="first_name" class="form-control input-md" placeholder="Patient Name">
                                                             <div class="validation"></div>
    							    </div> 
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                           <div class="form-group">
    							     <label>Patient ID</label>
                                                              <input placeholder="Patient ID" required="" type="text" name="pid" id="first_name" class="form-control input-md" title="Enter your Patient ID">
                                                               <div class="validation"></div>
    							   </div> 
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                          <div class="form-group">
    							    <label>Password</label>
                                                             <input placeholder="Password" required="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" type="password" name="password" id="last_name" class="form-control input-md" title="Password should contain at least 1 Uppercase ,1 Lowercase and digit and minimum of 6 character.">
                                                             <div class="validation"></div>
    							 </div>  
                                                        </td>
                                                    </tr>
                                                    
                                                    
                                                </table>
                                                <input type="submit"  value="Login" name="btn" class="btn btn-primary btn-block btn-lg">
                                            </form>
                                            <div>
                                                <a href="Patient_Registration_Form.jsp">For Sign Up New Patient</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Patient_ForgetPass.jsp">Forgot Password?</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="Forget_PID.jsp">Forgot Patient ID?</a>
                                                   
                                            </div>
											</div>
							</div>	
				 	</div>		
				</div>		
			</div>
			
    </section>
    </body>
</html>
