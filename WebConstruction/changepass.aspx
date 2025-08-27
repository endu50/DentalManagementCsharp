 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="DanaSolution.changepass" %>

<!doctype html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>

        </title>
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
                            <li><a href="login.aspx">Login</a></li>                           
                            <li><a href="help#">help</a></li>
                             
                        </ul>
                    </div>
                </div>
            </div>
            
        </header>
        
        <!--  ************************* Page Title Starts Here ************************** -->   
    <div class="login container-fluid">
        <div class="container">
           <div class="row">  
                <form class="form-cover" runat="server" style="border-block-color:aqua;border:double"> 
                  
                         <h2 style="text-align:center" >Change Password Form </h2> 
                        
       
            <asp:Image ID="Image1" runat="server" Height="135px" 
                ImageUrl="~/assets/images/1382887522_12-Desktop.png" Width="146px" />
        

    <div class="col-md-4" style="text-align:center">
    <asp:Label ID="label1" runat="server" BorderStyle="Double"  text-align="center" Text="Label" Visible="False" BackColor="Lime"></asp:Label>  </div><br>
    <div class="row cont-row">
        <div  class="col-sm-2"><label>User Name:</label><span></span></div>
      <div class="col-sm-4"> <asp:TextBox ID="username1" runat="server" ReadOnly="true" name="name" class="form-control input-sm"></asp:TextBox>
       
                      </div>
                    </div>
                                        <div  class="row cont-row">
                        <div  class="col-sm-2"><label>Enter Current Password:</label><span></span> </div>
                         <div class="col-sm-4"><asp:TextBox ID="passp" runat="server" TextMode="Password"  placeholder="Enter Current Password" class="form-control input-sm"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="passp" ErrorMessage="p/s enter current Password" BackColor="#FFCCFF"></asp:RequiredFieldValidator>
                             </div>
                        </div>
                    <div  class="row cont-row">
                         <div  class="col-sm-2"><label>Enter new Password:</label><span></span> </div>
                         <div class="col-sm-4"><asp:TextBox ID="pass1" runat="server"  TextMode="Password" placeholder="Enter New Password" class="form-control input-sm"></asp:TextBox>
                </div>
                             <div class="col-sm-4"> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass1" ErrorMessage="p/s enter your Password" BackColor="#FFCCFF"></asp:RequiredFieldValidator>
           
                    <asp:RegularExpressionValidator ID="Regex2" runat="server" ControlToValidate="pass1"
ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" ForeColor="Red" />       
                             
                        </div>
                        </div>
                                       <div  class="row cont-row">
                       <div  class="col-sm-2"><label>Confirm new Password:</label><span></span> </div>
                        <div class="col-sm-4"><asp:TextBox ID="pass2" runat="server"  TextMode="Password" placeholder="Enter new Confirm Password" class="form-control input-sm"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pass2" ErrorMessage="p/s enter confirm Password" BackColor="#FFCCFF"></asp:RequiredFieldValidator>
                           <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass1" ControlToValidate="pass2" ErrorMessage="Incorrect Confirm password "   BackColor="#FF6666"></asp:CompareValidator>
                            
                        </div>
                       </div>
                    <div  class="row cont-row">
                  <div  class="col-sm-2"><label></label><span></span> </div>
                          <div class="col-sm-4">
                            
                            <asp:Button ID="log1" runat="server" OnClick="log1_Click" class="btn btn-success btn-sm"  Text="Change Password" />
                               
                              <br />
                              <br />
                        </div>
                   </div>
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