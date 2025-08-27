 <%@Page Language="C#" AutoEventWireup="true" CodeBehind="adminindex.aspx.cs" Inherits="DanaSolution.adminindex" %>

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
                            <li><a href="adminindex.aspx">Admin Home</a></li>
                            <li><a href="changepass.aspx">Change Password</a></li>
                            <li><a href="NewAccount.aspx">New Account Registeration</a></li>
                            <li><a href="AdminAccount.aspx">Monitor Accounts</a></li>
                            <li><a href="nowappointed.aspx">Today's Appointment</a></li>
                            <li><a href="Reportcustomer.aspx">Go To Customer Contacts</a></li>
                            
                             
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        
        <!--  ************************* Page Title Starts Here ************************** -->
<div class="page-nav no-margin row">
    <div class="container">
        <div class="row">
            <h2>Admin Home Page</h2>
            <ul>
                <li> <a href="adminindex.aspx"><i class="fas fa-home"></i> Admin Home</a></li>
                <li><a href="changepass.aspx"><i class="fas fa-angle-double-right"></i> Change Password</a></li>
                <li><a href="NewAccount.aspx"><i class="fas fa-angle-double-right"></i>New Account Registration</a></li>
                <li><a href="cumessage.aspx"><i class="fas fa-angle-double-right"></i>Go To Customer Contacts</a></li>
            </ul>
           
        </div>
           
        </div>
       
        </div>

   <div>
     <div class="container">
         <div class="row">
                
    <form class="form-cover" runat="server">
  <h3 style="text-align:center; background-color:beige">Appointment Lists</h3>
        <h4 style="text-align:center; background-color:beige">The Below Lists are Appointment Datas You can search Update Delete and Insert a new record if it is necessary  </h4>
        
      <asp:Label ID="lblmessage" runat="server" style="position:absolute;left:800px;font:bold; font-size:medium" Visible="false"  BorderStyle="Double" ForeColor="IndianRed" Text="Display Messages"></asp:Label>  
        
 <asp:Repeater ID="Repeater1" runat="server" EnableVIewState="true" OnItemCommand="Repeater1_ItemCommand"  >
    <HeaderTemplate>
        <table>
            <tr>
                                      <td><b>Search by PhoneNumber:</b><asp:TextBox ID="search" runat="server" placeholder="Enter Mobilenumber" ></asp:TextBox></td>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" BackColor="Orange" runat="server" ErrorMessage="Enter Mobile Number first" ControlToValidate="search"></asp:RequiredFieldValidator>
                      
                <td><asp:LinkButton ID="LinkButton2" Text="Search" runat="server" OnClick="OnSearch" EnableVIewState="true" class="btn btn-success btn-sm" /></td>
                                     

            </tr>
             
            </table>
        <br />

    </HeaderTemplate>
    
    <ItemTemplate>
        <table class="table" border="1" >
       <tr>
                                     <td>
                                     <b>AppointID:</b>  
                                    <asp:TextBox ID="Id" runat="server"  Text='<%# Eval("AppointId") %>' ReadOnly="True"></asp:TextBox>  
                                     <br />
                                    </td>
                                <td><b>Name:</b>  
                                    <asp:Label ID="name" runat="server" Text='<%# Eval("name")%>'></asp:Label>  
                                    <br />  
                                    </td>
                                     <td><b>MobileNumber:</b>
                                    <asp:Label ID="MobileNumber" runat="server" Text='<%# Eval("Mobilenumber") %>'></asp:Label>  
                                    <br />
                                         </td>
                                    <td>
                                    <b>Date Appointmnet:</b>  
                                    <asp:Label ID="Date" runat="server" Text='<%# Eval("Adate") %>'></asp:Label>  
                                    <br />  
                                        </td>
                                   <td> <b>Time:</b>  
                                    <asp:Label ID="Time" runat="server" Text='<%# Eval("Atime") %>'></asp:Label>  
                                    <br />                                   
                               </td>
                                  <td> <b>Accept:</b>  
                               <asp:TextBox ID="textbox1" runat="server"  Text='<%# Eval("Accept") %>' EnableVIewState="true" ></asp:TextBox>  
                                <br />                                   
                               </td>
                               <td>
                               <asp:LinkButton ID="lnkUpdate" Text="Update" runat="server" OnClick="OnUpdate" OnClientClick="return confirm('Are you sure you want to Update this event?');" EnableVIewState="true" class="btn btn-success btn-sm" />
                               </td>
                              <td>
                               <asp:LinkButton ID="LinkButton1" Text="Delete" runat="server" OnClick="OnDelete" OnClientClick="return confirm('Are you sure you want to delete this event?');" EnableVIewState="true" class="btn btn-success btn-sm" />
                               </td>
          
      </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
        <table>
            <tr>
                <td><b>AppointID:</b>  <asp:TextBox ID="AppointId" runat="server" ReadOnly="true" placeholder="Id will insert automatically"></asp:TextBox></td>
                <td><b>Name:</b>  <asp:TextBox ID="Cname" runat="server" placeholder="enter name"></asp:TextBox></td><td><b>Mobile Number:</b> <asp:TextBox ID="Mob1" runat="server" TextMode="Number" onkeypress="return this.value.length<=13" placeholder="Enter Mobilenumber"></asp:TextBox></td>
                <td><b>Date Appointmnet:</b><asp:TextBox ID="Adate" runat="server" TextMode="Date" placeholder="Enter Date" ></asp:TextBox></td><td> <b>Time:</b>  <asp:TextBox ID="Atime" runat="server" TextMode="Time" placeholder="Enter Time"></asp:TextBox></td>
                <td><b>Accept:</b>  <asp:TextBox ID="Accept" runat="server" placeholder="Enter accept status"></asp:TextBox></td>
  <td><asp:LinkButton ID="LinkButton1" Text="Insert" runat="server" OnClick="OnInsert" OnClientClick="return confirm('Are you sure you want to insert the record?');" EnableVIewState="true" class="btn btn-success btn-sm" />
  </td>

            </tr>
        </table>
    </FooterTemplate>
</asp:Repeater>
        <div style="margin-top: 20px;">
                    <table style="width: 600px;">
                        <tr>
                            <td>
                                <asp:LinkButton ID="lbFirst" runat="server" OnClick="lbFirst_Click" class="btn btn-success btn-sm"  BorderColor="YellowGreen">First</asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="lbPrevious" runat="server" OnClick="lbPrevious_Click" class="btn btn-success btn-sm" BorderColor="YellowGreen">Previous</asp:LinkButton>
                            </td>
                            <td>
                                <asp:DataList ID="rptPaging" runat="server"
                                    OnItemCommand="rptPaging_ItemCommand"
                                    OnItemDataBound="rptPaging_ItemDataBound" 
					RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lbPaging" runat="server" class="btn btn-success btn-sm"
                                            CommandArgument='<%# Eval("PageIndex") %>' 
						CommandName="newPage"
                                            Text='<%# Eval("PageText") %> ' Width="20px">
						</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td>
                                <asp:LinkButton ID="lbNext" runat="server" class="btn btn-success btn-sm"
				OnClick="lbNext_Click"  BorderColor="YellowGreen">Next</asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="lbLast" runat="server" class="btn btn-success btn-sm"
				OnClick="lbLast_Click"  BorderColor="YellowGreen">Last</asp:LinkButton>
                            </td>
                            <td>
                                <asp:Label ID="lblpage" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>

                </div>
      </form>
             </div>
         </div>
        </div>

<div>
    <h3 style="text-align:center;background-color:beige"></h3>
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