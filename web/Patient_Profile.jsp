<%@page import="DBConnection.ConnectDemo"%>
<%@page import="Beans.Patient_Reg"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*;"%>
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
                              <li><a href="ViewProfile.jsp"><span class=""></span>View Profile</a></li>
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
                       <!-- Section: intro -->
    <section id="intro" class="intro" >
         <%
            
                String id = (String) session.getAttribute("PID");
                %>
                <div class="intro-content" >
			<div class="container">
                            <div class="row" style="width: 120%;margin-left: -150px">
                                    
                                <div class="col-lg-12" >
                                    <div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
                                        <img src="images/arrow-down-1.png" style="margin: auto"class="img-responsive" alt="" width="180"/>
						</div>
                                </div>
                                    <div class="col-lg-12" >
                                        
                                        <%
                                       try{
                                            Patient_Reg p=new Patient_Reg();
                                            
                                            Connection con=ConnectDemo.shareConnection();
                                            String Query="select * from patient where Pid='"+id+"'";
                                            Statement st=con.createStatement();
                                            ResultSet rs=st.executeQuery(Query);
                                            
                                            %>
                                            <table class="table table-bordered table-responsive table-hover" style="background: white">
                                                <tr style="background: #357ebd">
                                                    <td>PID</td>
                                                    <td>Name</td>
                                                    <td>Email</td>
                                                    <td>Password</td>
                                                    <td>Contact</td>
                                                    <td>DOB</td>
                                                    <td>Gender</td>
                                                    <td>Age</td>
                                                    <td>Address</td>
                                                    <td>Disease</td>
                                                    <td>Room Type</td>
                                                    <td>Operation</td>
                                                </tr>
                                            
                                        <%
                                            if(rs.next()){
                                                p.setPid(rs.getString(1));
                                                p.setPname(rs.getString(2));
                                                p.setEmail(rs.getString(3));
                                                 p.setPassword(rs.getString(4));
                                                p.setContact(rs.getString(5));
                                                p.setDob(rs.getString(6));
                                                p.setGender(rs.getString(7));
                                                p.setAge(rs.getString(8));
                                                p.setAdd(rs.getString(10));
                                                p.setDisease(rs.getString(11));
                                                p.setRoom_type(rs.getString(12));
                                            %>
                                            <tr>
                                                <td><%=p.getPid() %></td>
                                                <td><%=p.getPname() %></td>
                                                <td><%=p.getEmail() %></td>
                                                <td><%=p.getPassword() %></td>
                                                <td><%=p.getContact() %></td>
                                                <td><%=p.getDob() %></td>
                                                <td><%=p.getGender() %></td>
                                                <td><%=p.getAge() %></td>
                                                <td><%=p.getAdd() %></td>
                                                <td><%=p.getDisease() %></td>
                                                <td><%=p.getRoom_type() %></td>
                                                <td><a href="Edit_Patient.jsp?P=<%=p.getPid() %>"><span class="fa fa-edit"></span> Edit</a></td>
                                                
                                            </tr>
                                            <%
                                            }
                                            %>
                                            </table>
                                        <%
                                       }catch(Exception e){
                                           
                                       }
                                        %>
                                    </div>
                                    
                                </div>
                                    <br><br><br><br><br><br>
                        </div>
                </div>
    </section>
</body>

</html>
