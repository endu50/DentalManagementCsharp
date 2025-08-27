<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newcustom.aspx.cs" Inherits="DanaSolution.Newcustom" %>

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
                            <a class="navbar-toggler d-block d-md-none" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                 <i class="bi bi-list"></i>
                             </a>
                        </div>
                                                <div class="col-md-4 d-none d-md-block socialcol">
                            <ul>
                         
                                   <li style="background-color:#51be78"><a href="logout.aspx">Log Out</a></li>
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
                            <li><a href="index.aspx"> Home</a></li>
                            <li><a href="Newcustom.aspx">New Customer Registration</a></li>
                            <li><a href="changepass.aspx">Change Password</a></li>
                            <li><a href="help#">Help</a></li>
                            
                        </ul>
                    </div>
                </div>
            </div>
            
        </header>
        
        <!--  ************************* Page Title Starts Here ************************** -->

        <div class="container">
            <div class="row">
                
                <form class="form-cover" runat="server" style="border-block-color:aqua;border:double">
                <div style="padding:20px" class="col-sm-7">
                    <h2 style="text-align:center">Contact Form</h2> <br>
                    <div style="margin-right: auto; margin-right: auto; text-align: right;">
                    <asp:Label ID="LblMsg" runat="server" BorderStyle="Double"  text-align="center" Text="Label" Visible="False" BackColor="Lime"></asp:Label>  </div><br>
                  <div  class="row cont-row"> 
                   <div class="col-sm-7"> <b>Enter Phone Number:</b> <asp:TextBox ID="searchbox" runat="server" BorderStyle="Dotted"  text-align="center" placeholder="enter phonenumber" Visible="True" BackColor="WhiteSmoke"></asp:TextBox>                      
                       </div>
                     <div class="col-sm-2">  <asp:Button ID="search" runat="server" BorderStyle="Double" causevalidation="false"  OnClick="search_Click" text-align="center" CausesValidation="false" Text="Search" Visible="True" BackColor="Lime"></asp:Button> 
                   </div>
                         </div>
                    <br />

                    </div>
                    <div class="row cont-row">
                        <div class="col-sm-2"><label>Enter Name:</label><span></span></div>
                      <div class="col-sm-4"> <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Name" name="name" class="form-control input-sm"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="p/s enter your Name" BorderColor="#CCCCFF" BackColor="#FFCCFF"></asp:RequiredFieldValidator>

                      </div>
                    </div>
                             <div class="row cont-row">           
                        <div class="col-sm-2"><label>Gender:</label><span></span></div>
                    
                    <div class="col-sm-4">  <asp:DropDownList ID="gender" runat="server" border-radius="0px 50px 50px 0px" AutoPostBack = "true" OnSelectedIndexChanged = "gender_SelectedIndexChanged" Height="36px" Width="360px">
    <asp:ListItem Text="Select Gender" Value="0" />
        <asp:ListItem Text="Male" Value="1" />
    <asp:ListItem Text="Female" Value="2" />
</asp:DropDownList>
                        </div>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="gender" ErrorMessage="p/s enter The Gender" BackColor="#FFCCFF"></asp:RequiredFieldValidator>
                            
                       
                                 </div>
                                            
             <div  class="row cont-row">
                        <div class="col-sm-2"><label>Age:</label><span></span></div>
                       <div class="col-sm-4"><asp:TextBox ID="TextBox5" runat="server"  TextMode="Number"  placeholder="Enter Age" class="form-control input-sm"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="p/s enter Age" BackColor="#FFCCFF"></asp:RequiredFieldValidator>
                             </div>
                        </div>
                           <div  class="row cont-row">
                        <div class="col-sm-2"><label>Price:</label><span></span></div>
                       <div class="col-sm-4"><asp:TextBox ID="TextBox6" runat="server"  TextMode="Number" placeholder="Enter The Price" class="form-control input-sm"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="p/s enter The Price" BackColor="#FFCCFF"></asp:RequiredFieldValidator>
                             </div>
                        </div>
                            <div  class="row cont-row">
                        <div class="col-sm-2"><label>Mobile Number:</label><span></span></div>
                       <div class="col-sm-4"><asp:TextBox ID="TextBox2" runat="server"  TextMode="Number" onkeypress="return this.value.length<=13" placeholder="Enter Mobile Number" class="form-control input-sm"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="p/s enter your Mobile number" BackColor="#FFCCFF"></asp:RequiredFieldValidator>
                             </div>
                                </div>
                       
                    <div  class="row cont-row">
                        <div class="col-sm-2"><label>Email Address:</label><span></span></div>
                       <div class="col-sm-4"> <asp:TextBox ID="TextBox3" runat="server"  placeholder="Enter Email Address" class="form-control input-sm"></asp:TextBox>   
                           </div>
                    </div>
                            <div  class="row cont-row">
            <div class="col-sm-2"><label>DateTime:</label><span></span></div>
           <div class="col-sm-4"> <asp:TextBox ID="TextBox7" runat="server"  TextMode="DateTime" placeholder="CurrentDate" class="form-control input-sm"></asp:TextBox>   
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="enter Date: Date/Month/Year Time:Minute format" BackColor="#FFCCFF"></asp:RequiredFieldValidator>
                
               </div>
        </div>
         <div  class="row cont-row">
            <div class="col-sm-2"><label>RegisterdBy:</label><span></span></div>
           <div class="col-sm-4"> <asp:TextBox ID="TextBox8" runat="server"  ReadOnly="true" class="form-control input-sm"></asp:TextBox>   
               </div>
        </div>
                    <div  class="row cont-row">
                        <div class="col-sm-2"><label>Enter Message:</label><span></span></div>
                        <div class="col-sm-4">
                         <div class="col-sm-8"> <textarea id="textarea1" rows="5" runat="server" placeholder="Enter Your Message" class="form-control input-sm"></textarea>
                             </div>
                            </div>
                    </div>
                    <div style="margin-top:10px;" class="row">
                        <div style="padding-top:10px;" class="col-sm-3"><label></label></div>
                        <div class="col-sm-8">
                            
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  class="btn btn-success btn-sm"  Text="Register" />
                               
                              
                        </div>
                    </div>
               
        </form>

  

            </div>
        </div>

 
    <div style="margin-top:0px;" class="row no-margin">


    </div>
                      <div class="col-sm-5">

                  <div style="margin:50px" class="serv">

                      <h2 style="margin-top:10px;">Address</h2>

                     Arada Street, <br>
                      Bomb Tera, Mina Building<br>
                      Gondar<br>
                      Phone:+251-91111111<br>
                      Email:Dana.Dental@gmail.com<br>
                      Website:www.DanaDental.com<br>

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