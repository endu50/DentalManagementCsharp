<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAccount.aspx.cs" Inherits="DanaSolution.AdminAccount" %>

<!doctype html>
    <html lang="en">

    <head runat="server">
        <meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="cache-control" content="no-store" />
<meta http-equiv="cache-control" content="must-revalidate" />
<meta http-equiv="cache-control" content="proxy-revalidate" />
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
                               
                            <li>
                                
                            </li>
                               
                     </ul>  
                           
              </div> 
             
              <span style="color:blue"></span>
           </div>
            <div class="log-row container-fluid">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 d-none d-md-block call-col">
                           
                        </div>
                        <div class="col-md-4 logo-col">
                            <img src="assets/images/logo.png" alt="">
                            <a class="navbar-toggler d-block d-md-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                 
                                 <i class="bi bi-list"></i>

                             </a>
                        </div>
                        <div class="col-md-4 d-none d-md-block socialcol">
                            <ul>
                         
                                   <li style="background-color:#51be78"><a href="adminindex.aspx">Admin Home</a></li>
                                    <li style="background-color:#51be78"><a href="logout.aspx">Log Out</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
             <div id="navbarNav" class="nav-row d-none d-md-block container-fluid">
                <div class="container">
                    <div class="row nav-col">
                        <ul>
                            <li><a href="ReportCustomer.aspx">Customer Home</a></li>
                            <li><a href="adminindex.aspx">Go TO Appointments</a></li>
                             
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        
        <!--  ************************* Page Title Starts Here ************************** -->
<div class="page-nav no-margin row">
    <div class="container">
        <div class="row">
            <h2>Admin Customer Messages</h2>
            <ul>
                <li> <a href="ReportCustomer.aspx"><i class="fas fa-home"></i> Customer Home</a></li>
                <li><a href="changepass.aspx"><i class="fas fa-angle-double-right"></i> Change Password</a></li>
                <li><a href="NewAccount.aspx"><i class="fas fa-angle-double-right"></i>New Account Registration</a></li>
                <li><a href="adminindex.aspx"><i class="fas fa-angle-double-right"></i>Go To Appointment List</a></li>
            </ul>
           
        </div>
           
        </div>
                            
       
        </div>
       
     <div>
     <div class="container">
         <div class="row">
                
    <form class="form-cover" runat="server">
        <h2 style="text-align:center; background-color:beige">Admin Accounts</h2>

  <h3 style="text-align:center; background-color:beige">Account Details</h3>
         <h4 style="text-align:center; background-color:beige">The Below Lists are Page Adminstrators you can View All Lists and If you are Sure to remove the Account please Click the Delete Button </h4>
                
                <asp:Repeater ID="Repeater1" runat="server">
                 <HeaderTemplate>

                     </HeaderTemplate>
                <ItemTemplate>
                     <table class="table" border="1" >
                        <tr>
                             
                            <td><b>Name:</b>  
                            <asp:Label ID="name" runat="server"  Text='<%# Eval("Yname") %>'></asp:Label>  
                            <br />
                           </td>
                            
                            <td><b>EmailAddress:</b>  
                            <asp:Label ID="Label1" runat="server"  Text='<%# Eval("Yemail") %>'></asp:Label>  
                            <br />
                           </td>
                            
                            <td><b>UserID:</b>  
                            <asp:Label ID="Label2" runat="server"  Text='<%# Eval("Userid") %>'></asp:Label>  
                            <br />
                           </td>
                            
                            <td><b>Password:</b>  
                            <asp:Label ID="Label3"  runat="server"  Text='<%# Eval("Password") %>' ></asp:Label>  
                               <br />
                                </td> 
                             <td><b>Roles:</b>  
                            <asp:Label ID="Label4"  runat="server"  Text='<%# Eval("roles") %>' ></asp:Label>  
                               <br />
                                </td> 
                            <td> <asp:LinkButton ID="LinkButton1" Text="Delete" runat="server" OnClick="OnDelete" OnClientClick="return confirm('Are you sure you want to delete this event?');" EnableVIewState="true" class="btn btn-success btn-sm" />
                               
                           
                                </td>
                             
                        </tr>
                        </table>
                </ItemTemplate>
                    
                <FooterTemplate>
                   
                </FooterTemplate>
                    </asp:Repeater>
            </form>
            
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