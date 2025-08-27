<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="DanaSolution.registerAccount" %>


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
                         
                                   <li style="background-color:#51be78"><a href="logout.aspx">Logout</a></li>
                                    <li style="background-color:#51be78"><a href="adminindex.aspx">Admin Home</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
             <div id="navbarNav" class="nav-row d-none d-md-block container-fluid">
                <div class="container">
                    <div class="row nav-col">
                        <ul>
                            <li><a href="adminindex.aspx">Admin Home</a></li>     
                            <li><a href="changepass.aspx">Change Password</a></li>
                            <li><a href="contact.aspx">Contact Us</a></li>
                            <li><a href="help#">Help</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            
        </header>
        
        <!--  ************************* Page Title Starts Here ************************** -->
<div class="page-nav no-margin row">
    <div class="container">
        <div class="row">
            <h2>New Account Registration Form</h2>
            <ul>
                <li> <a href="adminindex.aspx"><i class="fas fa-home"></i> Admin Home</a></li>
                <li><a href="login.aspx"><i class="fas fa-angle-double-right"></i> Login</a></li>
            </ul>
          
          
        </div>
    </div>
</div>
       
    <div class="login container-fluid">
        <div class="container">
            <div class="row">
              
                   <form class="form-cover" runat="server" style="border-block-color:aqua;border:double">
                       <h2 style="text-align:center" > New Account Registraion Form </h2> 
        
           <asp:Image ID="Image1" runat="server" Height="135px" 
       ImageUrl="~/assets/images/wordpress-registration.png" Width="146px" />
     
    <div class="col-md-4" style="text-align:center">
       
 <asp:Label ID="LblMsg1" runat="server" Visible="False"></asp:Label> 
        </div><br>
     <div  class="row cont-row">
 <div  class="col-sm-2"><label>Your Name:</label><span></span></div>

                   
                   <div class="col-sm-4"> <asp:TextBox ID="txtName" runat="server" placeholder="Enter Name"></asp:TextBox>
                   
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="Your Name is Required"  
                        ForeColor="#990000" ToolTip="Your Name is Required"></asp:RequiredFieldValidator>
                                    </div>
        </div>

 <div  class="row cont-row">
     <div  class="col-sm-2"><label>Email Address:</label><span></span> </div>
                  <div class="col-sm-4"><asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email Address"></asp:TextBox>

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
      ControlToValidate="txtEmail" ErrorMessage="Email-ID is Required" 
      ForeColor="#990000" ToolTip="Email-ID is Required"></asp:RequiredFieldValidator>
  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
      ControlToValidate="txtEmail" ErrorMessage="Invalid Email-ID" 
      ForeColor="#990000" ToolTip="Invalid Email-ID" 
      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                         </div>
     </div>
           <div  class="row cont-row">
    <div  class="col-sm-2"><label>User ID:</label><span></span> </div> 
                 <div class="col-sm-4">   <asp:TextBox ID="txtUserID" runat="server" placeholder="Enter User ID"></asp:TextBox>
               
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
     ControlToValidate="txtUserID" ErrorMessage="User ID is Required"  
     ForeColor="#990000"  ToolTip="User ID is Required"></asp:RequiredFieldValidator>
  
            </div>
               </div>
                                  <div  class="row cont-row">
    <div  class="col-sm-2"><label>Role:</label><span></span> </div> 
                 <div class="col-sm-4">   <asp:TextBox ID="Role" runat="server" ReadOnly="true" placeholder="Select Roles"></asp:TextBox>
       <asp:DropDownList ID="DropDownList1" runat="server"  AutoPostBack = "true" OnSelectedIndexChanged = "DropDownList1_SelectedIndexChanged" Height="32px" Width="154px">
    <asp:ListItem Text="Select Role" Value="1" />
        <asp:ListItem Text="Admin" Value="2" />
    <asp:ListItem Text="Standard" Value="3" />
</asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
     ControlToValidate="Role" ErrorMessage="Role is required"  
     ForeColor="#990000"  ToolTip="User ID is Required"></asp:RequiredFieldValidator>
  
            </div>
               </div>
                     <div  class="row cont-row">
<div  class="col-sm-2"><label>Password:</label><span></span> </div> 
                   <div class="col-sm-4">  <asp:TextBox ID="txtPassword" placeholder="Enter Password" TextMode="Password" runat="server"></asp:TextBox></td>
                 <td  style="width:175px">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
     ControlToValidate="txtPassword" ErrorMessage="Password is Required" 
     ForeColor="#990000" ToolTip="Password is Required"></asp:RequiredFieldValidator>
      
           </div>
        </div>
                     <div  class="row cont-row">
<div  class="col-sm-2"><label>Confirm Password:</label><span></span> </div> 
               <div class="col-sm-4">  <asp:TextBox ID="txtConfirmPass" runat="server" placeholder="Enter Confirm Password" TextMode="Password"></asp:TextBox>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtConfirmPass" ErrorMessage="Confirm Password is Required" 
                        ForeColor="#990000" ToolTip="Confirm Password is Required"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" 
                        ErrorMessage="Password and Confirm Password did not match" ForeColor="#990000" 
                        ToolTip="Password and Confirm Password did not match"></asp:CompareValidator>
               </div>
             </div>
                  <div  class="row cont-row">
           <div  class="col-sm-2"><label></label><span></span> </div>
        <div class="col-sm-4">
                     <asp:Button ID="Createbtn" class="btn btn-success btn-sm" runat="server" Text="Register" Font-Sized="25px" onclick="Createbtn_Click" /></td>
            
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
                <li><a href=
                    ><i class="fas fa-angle-double-right"></i>About Us</a></li>
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