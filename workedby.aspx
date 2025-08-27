<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="workedby.aspx.cs" Inherits="DanaSolution.workedby" %>
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
                            <li><a href="ReportCustomer.aspx">Customer Home</a></li>
                            <li><a href="AdminAccount.aspx">Admin Accounts</a></li>
                           <li><a href="Totalpricereport.aspx">Total Price report by date</a></li>
                            <li><a href="workedby.aspx">Report Workeby Staff</a></li>
                            <li><a href="adminindex.aspx">Go TO Appointments</a></li>
                            
                        </ul>
                    </div>
                </div>
            </div>
            
        </header>
                <!--  ************************* Page Title Starts Here ************************** -->
     <div class="container">
         <div class="row">
                
    <form class="form-cover" runat="server">
  <h3 style="text-align:center; background-color:beige">Total work done by Staff Report By Selecting UserId</h3>
           <asp:Label ID="lbldisplay" runat="server" style="position:absolute;left:800px;font:bold; font-size:medium" Visible="false"  BorderStyle="Double" ForeColor="IndianRed" Text="Display Messages"></asp:Label>  <br />
        
 <asp:Repeater ID="Repeater11" runat="server" EnableVIewState="true" OnItemDataBound = "Repeater11_OnItemDataBound"   >
    <HeaderTemplate>
        <table>
            <tr>   
           <td> <asp:Label ID="start" runat="server" Text="Enter Staff UserId:" Font-Bold="True"></asp:Label></td>
        <td><asp:TextBox ID="textBox1" placeholder="Enter UserId"   runat="server"></asp:TextBox> </td>   
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ControlToValidate="textBox1" runat="server" ForeColor="Red" ErrorMessage="Required field Enter Staff userId"></asp:RequiredFieldValidator>
         <td><asp:LinkButton ID="LinkButton1" Text="Search" runat="server" OnClick="OnSearchstaff" EnableVIewState="true" class="btn btn-success btn-sm" /></td>

            </tr>
             
            </table>
        <br />

    </HeaderTemplate>
    
    <ItemTemplate>
        <table class="table" border="1" >
       <tr>
                                     <td>
                                     <b>Messageid:</b>  
                                    <asp:TextBox ID="Id" runat="server"  Text='<%# Eval("Messageid") %>' ReadOnly="True"></asp:TextBox>  
                                     <br />
                                    </td>
                                <td><b>Name:</b>  
                                    <asp:Label ID="Name" runat="server" Text='<%# Eval("Name")%>'></asp:Label>  
                                    <br />  
                                    </td>
                                     <td>
                                         <b>Phonenumber:</b>  
                                    <asp:Label ID="Phonenumber" runat="server" Text='<%# Eval("Phonenumber") %>'></asp:Label>  
                                    <br />
                                         </td>
                                                <td>
                                      <b>price:</b>  
                                    <asp:Label ID="price" runat="server" Text='<%# Eval("price") %>'></asp:Label>  
                                    <br />
                                         </td>
                                        <td>
                                         <b>DateNow:</b>    
                                    <asp:Label ID="DateNow" runat="server" Text='<%# Eval("DateNow") %>'></asp:Label>  
                                    <br />
                                         </td>
                                    <td>
                                    <b>RegisterdBy:</b>  
                                    <asp:Label ID="RegisterdBy" runat="server" Text='<%# Eval("RegisterdBy") %>'></asp:Label>  
                                    <br />  
                                        </td>
                                  <td> <b>Message:</b>  
                             
                                      <asp:TextBox ID="textbox11" runat="server"   Width="500px" Text='<%# Eval("Message") %>' EnableVIewState="true" ></asp:TextBox>  
                                         <br />                                   
                               </td>
                               <td>
                                </td>
          
      </tr>
    </ItemTemplate>
     <FooterTemplate>
      </table>
      <table>
          <tr>
             
<td><asp:LinkButton ID="LinkButton1" CausesValidation="false" Text="Calculate Total Price" runat="server" OnClick="OnTotalcal"  class="btn btn-success btn-sm" />
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

</td>
              

          </tr>
      </table>
  </FooterTemplate>
</asp:Repeater>
        <div style="margin-top: 20px;">
                    <table style="width: 600px;">
                        <tr>
                            <td>
                                <asp:LinkButton ID="lbFirst111" runat="server" OnClick="lbFirst_Click" class="btn btn-success btn-sm"  BorderColor="YellowGreen">First</asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="lbPrevious111" runat="server" OnClick="lbPrevious_Click" class="btn btn-success btn-sm" BorderColor="YellowGreen">Previous</asp:LinkButton>
                            </td>
                            <td>
                                <asp:DataList ID="rptPaging111" runat="server"
                                    OnItemCommand="rptPaging_ItemCommand"
                                    OnItemDataBound="rptPaging_ItemDataBound" 
					RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lbPaging11" runat="server" class="btn btn-success btn-sm"
                                            CommandArgument='<%# Eval("PageIndex") %>' 
						CommandName="newPage"
                                            Text='<%# Eval("PageText") %> ' Width="20px">
						</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td>
                                <asp:LinkButton ID="lbNext11" runat="server" class="btn btn-success btn-sm"
				OnClick="lbNext_Click"  BorderColor="YellowGreen">Next</asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="lbLast11" runat="server" class="btn btn-success btn-sm"
				OnClick="lbLast_Click"  BorderColor="YellowGreen">Last</asp:LinkButton>
                            </td>
                            <td>
                                <asp:Label ID="lblpage11" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>

                </div>
      </form>
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