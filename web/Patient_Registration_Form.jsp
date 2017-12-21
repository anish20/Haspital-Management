
<%@page import="java.util.Random"%>
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
	<!-- boxed bg -->
	<link id="bodybg" href="css/bg1.css" rel="stylesheet" type="text/css" />
	<!-- template skin -->
    </head>
    <body id="page-top" data-spy="scroll" data-target=".navbar-custom" style="background:url('images/img.jpg');background-repeat: no-repeat; background: #CCCCFF">
        <%!
        public static String generateOTP() {
		int randomPin   =(int)(Math.random()*9000)+1000;
		String otp  =String.valueOf(randomPin);
		return otp;
	}                                                  
       %>
        <div id="wrapper">
            <nav class="navbar navbar-custom navbar-fixed-top" role="navigation" style="background: #e1edf7">

               		<!--header-->
                        <%@include file="Seperate_Content/header.html" %>
        
                        <!--menu services-->
                        
                        <%@include file="Seperate_Content/menu_services.html" %>
            </nav>
        </div>
        
        <!-- Section: intro -->
        
        <section id="intro" class="intro"  >
                <div class="intro-content"  >
                    <div class="container" >
                        <div class="row" >
                            <div class="col-lg-6">
                                <div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
                                    <img src="images/lady.png" width="600" class="img-responsive" alt=""  style="margin-top: 0px;"/>
                                </div>
                            </div>	
                            <div class="col-lg-6">

                                <div class="panel-body" style="margin-top: 0px; width: 100%;height: 100%">
                                    <center><h6>Patient Registration Form</h6></center><hr>

                                    <form action="Patient_Register" method="post" name="frm" role="form" class="contactForm lead">
                                        <table class="table table-responsive">
                                            <tr>
                                                <td>
                                                   <div class="form-group">
                                                    <label>Patient ID</label>
                                                    <input type="text" name="pid" id="first_name" class="form-control input-md"   title="Patient ID" value="<%="PID"+generateOTP()%>">
         
                                                    <div class="validation"></div>
                                                </div> 
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                    <label>Patient Name</label>
                                                    <input type="text" pattern="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$" name="pname" id="last_name" class="form-control input-md" required="" title="Patient name can not be blank and should not contain any digit.">
                                                    <div class="validation"></div>
                                                </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                  <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="email" name="email" placeholder="me@example.com" id="last_name" class="form-control input-md" required="" title="Email can not be blank and should contain @ character.">
                                                    <div class="validation"></div>
                                                </div>  
                                                </td>
                                                <td>
                                                   <div class="form-group">
                                                    <label>Password</label>
                                                    <input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="pass" class="form-control input-md" required="" title="Password should contain at least 1 Uppercase ,1 Lowercase and digit and minimum of 6 character.">
                                                    <div class="validation"></div>
                                                </div> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    
                                                <div class="form-group">
                                                    <label>Contact No.</label>
                                                    <input type="number" name="contact" id="first_name" class="form-control input-md" required="" title="Phone no. should not contain any alaphabets.">
                                                    <div class="validation"></div>
                                                </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                    <label>Patient DOB</label>
                                                    <input type="date"  name="dob" id="last_name" class="form-control input-md" required="">
                                                    <div class="validation"></div>
                                                </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                    <label>Patient Gender</label>
                                                    <select name="gender" class="form-control" required="">
                                                        <option selected="" value="-1" disabled="">Select Gender</option>
                                                        <option>Male</option>
                                                        <option>Female</option>
                                                        <option>Other</option>
                                                    </select>
                                                    <div class="validation"></div>
                                                </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                    <label>Patient Age</label>
                                                    <input type="number"  name="age" id="last_name" class="form-control input-md" required="" title="Age should not contain any alaphabets.">
                                                    <div class="validation"></div>
                                                </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                    <label>Marital Status</label>
                                                    <select name="status" class="form-control" required="">
                                                        <option selected="" value="-1" disabled="">Select Status</option>
                                                        <option>Married</option>
                                                        <option>Divorced</option>
                                                        <option>Single</option>
                                                        <option>Widow</option>
                                                    </select>
                                                    <div class="validation"></div>
                                                </div>
                                                </td>
                                                <td>
                                                     <div class="form-group">
                                                    <label>Address</label>
                                                    <textarea class="form-control" title="Enter your Address" required rows="2" cols="20" name="address" ></textarea>
                                                   
                                                    <div class="validation"></div>
                                                </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                    <label>Select Disease</label>
                                                    <select name="disease" class="form-control" required="">
                                                        <option selected="" value="-1" disabled="">Select Disease</option>
                                                        <option value="Normal Diseases">Normal Diseases</option> 
                                                        <option value="Cancer">Cancer</option> 
                                                        <option value="Celiac Disease">Celiac Disease</option> 
                                                        <option value="Heart Disease">Heart Disease</option> 
                                                        <option value="Crohn's & Colitis">Crohn's & Colitis</option> 
                                                        <option value="Infectious Diseases">Infectious Diseases</option> 
                                                        <option value="Liver Disease">Liver Disease</option> 
                                                        <option value="Big Diseases">Big Diseases</option> 
                                                        <option value="Private Diseases">Private Diseases</option> 
                                                        <option value="Ear, Nose and Throat Diseases">ENT Diseases</option>
                                                        <option value="Other Diseases">Other Diseases</option>    
                                                    </select>
                                                    <div class="validation"></div>
                                                </div>
                                                </td>
                                                <td>
                                                     <div class="form-group">
                                                    <label>Room Type</label>
                                                    <select name="room" class="form-control" required="">
                                                        <option selected="" value="-1" disabled="">Select Room Type</option>
                                                        <option value="Normal">Normal</option> 
                                                        <option value="Medium">Medium</option> 
                                                        <option value="V.I.P">V.I.P</option>
                                                    </select>
                                                    <div class="validation"></div>
                                                </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2"><input type="submit" name="btn" value="Sign Up" class="btn btn-skin btn-block btn-lg" onclick="return check();"></td>
                                               
                                            </tr>
                                            
                                        </table>
                                    </form>
                                </div>
                </div>
               
    </section>
    </body>
</html>
