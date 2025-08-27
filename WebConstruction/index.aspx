<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DanaSolution.index" %>

<!doctype html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Dana Dental Clinic Website</title>
        <link rel="shortcut icon" href="assets/images/fav.png" type="image/x-icon">
      
        <link rel="shortcut icon" href="assets/images/fav.jpg">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
       
        <link rel="stylesheet" href="assets/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    </head>

    <body>
        <header class="head-container">
            <div class="info-row container-fluid">
               <div class="container">
                        <div class="col-md- d-none d-md-block call-col">
                            
    
                            <h1>Dana Dental Clinick  Website</h1>
                        </div>
                   <ul >
                             <li style="border-color: #32b6a1"><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                              <li style="border-color: #32b6a1"><a href="https://instagram.com"><i class="fab fa-instagram"></i></a></li>
                            <li style="border-color: #32b6a1"><a href="https://linkedin.com"><i class="fab fa-linkedin-in"></i></a></li>
                             <li style="border-color: #32b6a1"><a href="https://twitter.com"><i class="fab fa-twitter"></i></a></li>
                              <li style="border-color: #32b6a1"><a href="https://facebook.com"><i class="fab fa-facebook-f"></i></a></li>
                                
                      </ul>  
                            
               </div>
               
            </div>
            <div class="log-row container-fluid">
                <div class="container">
                    <div class="row">
                        <div class="col-md-1 d-none d-md-block call-col">
                            


                        </div>
                        <div class="col-md-1 logo-col">
                            <img src="assets/images/logo.png" alt="">
                            <a class="navbar-toggler d-block d-md-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                 <i class="bi bi-list"></i>
                             </a>
                        </div>
                        <div class="col-md-4 d-none d-md-block socialcol">
                            <ul>
                         
                                   <li style="background-color:#51be78"><a href="logout.aspx">LogOut</a></li>
                                    <li style="background-color:#51be78"><a href="index.aspx">Home</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
             <div id="navbarNav" class="nav-row d-none d-md-block container-fluid">
                <div class="container">
                    <div class="row nav-col">
                        <ul>
                            
                            <li><a href="index.aspx">Home</a></li>
                            <li><a href="Newcustom.aspx">New Customer Registration</a></li>
                            <li><a href="changepass.aspx">Change Password</a></li>
                            <li><a href="help#">Help</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            
        </header>
        
<div class="apointment container-fluid">
    <div class="container">
        <div class="row">
            <div class="col-md-6 imgcol">
                <img src="assets/images/appoinment.png" alt="">
            </div>
            <div class="col-md-6">
               <div class="form-cover">
                   <form runat="server">
                   <h3>Make an Appointment</h3>
                   <p>We don’t want you to think what is the best for you. We know what it is and will make everything to help You.</p>
                    <div  style="margin-right: auto; margin-right: auto; text-align: right;">

                            <asp:Label ID="AppointL" runat="server" BorderStyle="Double" Visible="false"  text-align="center" Text="Label"  BackColor="Lime"></asp:Label></div>

                    <div class="form-row row">
                        <div class="col-md-6">
                            <asp:TextBox ID="TextBox11" runat="server" placeholder="Enter Full Name" class="form-control" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="LightSkyBlue" ControlToValidate="TextBox11" runat="server" ErrorMessage="Enter your Name"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6">
                             <asp:TextBox ID="TextBox12" runat="server" placeholder="Enter Mobile Number" TextMode="Number" onkeypress="return this.value.length<=13" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="LightSkyBlue" ControlToValidate="TextBox12" runat="server" ErrorMessage="P/s enter your Mobile Number"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="form-row row">
                        <div class="col-md-6">
                            <asp:TextBox ID="ADate" runat="server" placeholder="Select Date" type="date" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="LightSkyBlue" ControlToValidate="ADate" runat="server" ErrorMessage="Enter the Date"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6">
                             <asp:TextBox ID="ATime" runat="server" type="time" placeholder="Select Time" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="LightSkyBlue" ControlToValidate="ATime" runat="server" ErrorMessage="Enter the Time"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Button ID="Appoint" runat="server"  OnClick="Appoint_Click" class="btn btn-success" Text="Make Appointment"></asp:Button>
                 
                    </div>
                       </form>
               </div>
               
            </div>
        </div>
    </div>
</div>  
    
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-3 about">
                <h2>About Us</h2>
                <p>We have given Dental services,We are unique in work and reliable we will ensure your safe return home with happiness.. </p>
                
                <div class="foot-address">
                    <div class="icon">
                        <i class="fas fa-map-marker-alt"></i>
                    </div>
                    <div class="addet">
                        Gondaar
                        Arada Street (Bomb Tera Area)
                        Mina Building 
                    </div>
                </div>
                <div class="foot-address">
                    <div class="icon">
                        <i class="far fa-envelope-open"></i>
                    </div>
                    <div class="addet">
                        Dana.Dental@gmail.com <br>
                        WWW.Dana.Dental.com
                    </div>
                </div>
                <div class="foot-address">
                    <div class="icon">
                       <i class="fas fa-mobile-alt"></i>
                   </div>
                   <div class="addet">
                    +251-91111111 <br>
                    +251-211111111
                </div>
            </div>
        </div>
        <div class="col-md-3 fotblog">
            <h2>From latest Blog</h2>
            <div class="blohjb">
                <p>under construction</p>
                <span>22-1-2019</span>
            </div>
            <div class="blohjb">
                <p>under construction</p>
                <span>22-1-2019</span>
            </div>
            <div class="blohjb">
                <p>under construction</p>
                <span>22-1-2019</span>
            </div>
        </div>
        <div class="col-md-3 glink">
            <ul>
                <li><a href="index.aspx"><i class="fas fa-angle-double-right"></i>Home</a></li>
                <li><a href="aboutus.aspx"><i class="fas fa-angle-double-right"></i>About Us</a></li>
                <li><a href="services.aspx"><i class="fas fa-angle-double-right"></i>Services</a></li>
                <li><a href="blog.aspx"><i class="fas fa-angle-double-right"></i>Blog</a></li>
                <li><a href="contact.aspx"><i class="fas fa-angle-double-right"></i>Contact Us</a></li>
            </ul>
        </div>
        <div class="col-md-3 tags">
            <h2>Easy Tags</h2>
            <ul>
                <li>Finance</li>
                <li>Web Design</li>
                <li>Internet Pro</li>
                <li>Node Js</li>
                <li>Java Swing</li>
                <li>Angular Js</li>
                <li>Vue Js</li>
            </ul>
        </div>
    </div>
</div>
</footer>
<div class="copy">
    <div class="container">
       <p> 2024 &copy; All Rights Reserved </p>
        <span>
            <a><i class="fab fa-github"></i></a>
            <a><i class="fab fa-google-plus-g"></i></a>
            <a><i class="fab fa-pinterest-p"></i></a>
            <a><i class="fab fa-twitter"></i></a>
            <a><i class="fab fa-facebook-f"></i></a>
        </span>
    </div>
</div>
    
     
    </body>

<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
<script src="assets/js/script.js"></script>

</html>