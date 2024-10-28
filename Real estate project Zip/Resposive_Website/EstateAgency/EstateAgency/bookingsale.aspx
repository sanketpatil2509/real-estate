<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookingsale.aspx.cs" Inherits="Resposive_Website.EstateAgency.EstateAgency.bookingsaleaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Index - Bold Real Estate</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"/>

  <!-- Main CSS File -->
    
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: EstateAgency
  * Template URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
  * Updated: Aug 09 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
    <style>
       
    </style>
</head>
<body>
    <header id="header" class="header d-flex align-items-center fixed-top" >
  <div class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

    <a href="index.aspx" class="logo d-flex align-items-center">
      <!-- Uncomment the line below if you also wish to use an image logo -->
      <!-- <img src="assets/img/logo.png" alt=""> -->
      <h1 class="sitename">Bold Real<span>Estate</span></h1>
    </a>

    <nav id="navmenu" class="navmenu">
      <ul>
        <li><a href="index.aspx">Home</a></li>
        <li class="dropdown"><a href="#"><span>About</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
           <ul>
              <li><a href="about.aspx">About Bold Real Estate</a></li>
              <li><a href="founder.aspx">Founder</a></li>
              <li><a href="leadership-team.aspx">LeaderShip Team</a></li>
              <%--<li><a href="investors.aspx">Investors</a></li>--%>
          </ul></li>
        <li><a href="services.aspx">Services</a></li>
        <li><a href="properties.aspx">Properties</a></li>
        <li><a href="agents.aspx">Agents</a></li>
        
        <li><a href="contact.aspx">Contact</a></li>
        <li class="dropdown"><a href="#"><span>Online Booking</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
             <ul>
                <li><a href="bookingsale.aspx" class="active">Booking For Sale</a></li>
                <li><a href="bookingrent.aspx">Booking For Rent</a></li>
                 </ul></li>
            <%--<li><a href="Login.aspx">Admin</a></li>--%>

      </ul>
      <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
    </nav>

  <%--</div><img src="assets/img/backimg.jpg" />--%>
</header>
    <main class="main">
    <div class="page-title" data-aos="fade" style="background-image:url('assets/img/back10.jpg'); background-attachment:fixed; background-repeat:no-repeat;">
      <div class="heading">
        <div class="container">
          <div class="row d-flex justify-content-center text-center">
            <div class="col-lg-6">
                <div class="card shadow-lg border-0 rounded-lg mt-5">
              <br /><h1 style="border-block-end-style:double;background-color:antiquewhite"">Booking For Sale</h1><br />
                                                        
                    </div>
    <form runat="server" style="margin:20px">
        <div style="text-align:right">
              <asp:TextBox ID="TextBox11" runat="server" Width="100px" ForeColor="Black" Font-Bold="true"></asp:TextBox></div><br />
            <div class="row mb-3">
                <div class="col-md-6" >

                    <div class="form-floating ">
                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                             <asp:ListItem>Select Location</asp:ListItem>
                             <asp:ListItem>Pune</asp:ListItem>
                             <asp:ListItem>Mumbai</asp:ListItem>
                             <asp:ListItem>Nagpur</asp:ListItem>
                         </asp:DropDownList>
                    </div></div>

                     <div class="col-md-6">
                         <div class="form-floating mb-3 mb-md-0">
                             <asp:TextBox ID="txtsector" runat="server" CssClass="form-control"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fill Sector No." ControlToValidate="txtsector" ForeColor="Red"></asp:RequiredFieldValidator>
                             <label>Sector No.</label>
                         </div>
                    </div>
                </div>
                
                
                <div class="row mb-3">
                    <div class="col-md-6">
                        <div class="form-floating">
                        <asp:TextBox ID="txtbuild" runat="server" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fill Building Name" ControlToValidate="txtbuild" ForeColor="Red"></asp:RequiredFieldValidator>
                        <label>Building Name</label>
                          </div>
                        </div>
                       <div class="col-md-6">
                           <div class="form-floating">
                        <asp:TextBox ID="txtunit" runat="server" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fill Unit No." ControlToValidate="txtunit" ForeColor="Red"></asp:RequiredFieldValidator>
                        <label>Unit No.</label>
                    </div>
                </div></div>
                    <div>
                     <div class="col-md-6">
                       <div class="form-floating" style="text-align:left">--Select Agent--
                     <asp:DropDownList ID="DDLagent" runat="server" CssClass="form-control" AppendDataBoundItems="true"
                         DataTextField="Name" DataValueField="Id" Width="285px">
                    <%-- <asp:ListItem>--Select Agent--</asp:ListItem>--%>
                 </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Agent" ControlToValidate="DDlagent" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                 </div>
             <br />
                    <div class="row mb-3" style="text-align:center">
                        <asp:Label ID="txttypes" runat="server" Text="---Types---" ></asp:Label>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" autopostback="true">
                            <asp:ListItem Value="0" ID="type1" style="padding-left:10px; color:black; font-size:20px">1BHK</asp:ListItem>
                            <asp:ListItem Value="1" ID="type2" style="padding-left:10px; color:black; font-size:20px">2BHK</asp:ListItem>
                            <%--<asp:ListItem Value="2" ID="tyep3" style="padding-left:10px; color:orange; font-size:20px">3BHK</asp:ListItem>--%>
                            <asp:ListItem Value="3" ID="type4" style="padding-left:10px; color:black; font-size:20px">4BHK</asp:ListItem>
                            <asp:ListItem Value="4" ID="type5" style="padding-left:10px; color:black; font-size:20px">Banglo</asp:ListItem>
                            <asp:ListItem Value="5" ID="type6" style="padding-left:10px; color:black; font-size:20px">Villa</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select Property Type" ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator>
                </div><div>
                        <asp:Label ID="Lblamount" runat="server" Text="Amount:"></asp:Label>

                        <asp:TextBox Id="txtamount" runat="server" ></asp:TextBox>Rs.
                    </div>
       <hr /></div>
                <h3>Personal Details:</h3>
                <div class="row mb-3">
                    <div class="col-md-4">
                        <div class="form-floating ">
                        <asp:TextBox ID="txtfname" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Fill Correct First Name" ControlToValidate="txtfname" ForeColor="Red"></asp:RequiredFieldValidator>
                        <label for="inputFirstName">First name</label>
                        </div>
                </div>
                    <div class="col-md-4">
                      <div class="form-floating">
                        <asp:TextBox ID="txtmname" runat="server" CssClass="form-control"></asp:TextBox>
                        <label for="inputFirstName">Middel name</label>
                         </div>
                    </div>
                <div class="col-md-4">
                    <div class="form-floating">
                        <asp:TextBox ID="txtlname" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Fill Correct Last Name" ControlToValidate="txtlname" ForeColor="Red"></asp:RequiredFieldValidator>
                        <label for="inputFirstName">Last name</label>
                    </div>
                </div>
                </div>
                <div class="row mb-3">
                      <div class="col-md-4">
                        <div class="form-floating">
                        <asp:TextBox ID="txtage" runat="server" CssClass="form-control" TextMode="Number" OnTextChanged="txtage_TextChanged" AutoPostBack="true"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Fill Correct Age" ControlToValidate="txtage" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblageerrormsg" runat="server" Visible="false" text="Fill correct Age!" ForeColor="Red"></asp:Label>
                          
                         <label>Age</label>
                        </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-floating mb-3 mb-md-0">
                        <asp:TextBox ID="txtoccupation" runat="server" CssClass="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Fill Correct Occupation" ControlToValidate="txtoccupation" ForeColor="Red"></asp:RequiredFieldValidator>
                          <label>Occupations</label>
                        </div>
                    </div>
                     
                </div>
                <div class="row mb-4">
                   
                    <div class="col-md-6">
                        <div class="form-floating mb-3 mb-md-0">
                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Fill EmailId" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Fill Correct EmailId" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ForeColor="Red"></asp:RegularExpressionValidator>
                            <label>EmailID</label>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-floating mb-4 mb-md-1" style="text-align:left">DOB:<br />
                    <asp:TextBox ID="txtDate" runat="server" Text="" TextMode="Date" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Please Enter DOB" ControlToValidate="txtDate" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        </div>
                        <br />
                        <br />
                    </div>
                    <div class="row mb-3">
                         <div class="col-md-4">
                               <div class="form-floating mb-3 mb-md-0">
                                 <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please fill the contact number" ControlToValidate="txtmobile" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                                        runat="server" ErrorMessage="Enter valid Contact number" 
                                        ControlToValidate="txtmobile" 
                                        ValidationExpression= "(0|91)?[6-9][0-9]{9}" ForeColor="Red"></asp:RegularExpressionValidator>                                                      
                                   <label>Mobile No.</label>
                                 </div>
                             </div>
                        <div class="col-md-4">
                            <div class="form-floating">
                                <asp:TextBox ID="txtaadhar" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Please fill the Aadhar number" ControlToValidate="txtaadhar" ForeColor="Red"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                                 runat="server" ErrorMessage="Enter valid Aadhar number" 
                                 ControlToValidate="txtaadhar" 
                                 ValidationExpression= "(0|91)?[6-9][0-9]{11}" ForeColor="Red"></asp:RegularExpressionValidator> 
                                <label>Aadhar No.</label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-floating">
                                <asp:TextBox ID="txtpan" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Fill Pan No." ControlToValidate="txtpan" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ValidationExpression="[A-Z]{5}\d{4}[A-Z]{1}" ErrorMessage="Fill correct Pan Card No" ControlToValidate="txtpan" ForeColor="Red"></asp:RegularExpressionValidator>
                                <label>Pan No.</label>
                            </div>
                        </div>
                         
                    </div>
                <div class="row mb-4">
                    <div class="col-md-6">
                        <div class="form-floating">
                            <asp:TextBox ID="txtparadd" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="fill Permanent Address" ControlToValidate="txtparadd" ForeColor="Red"></asp:RequiredFieldValidator>
                            <label>Permanent Address</label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-floating">
                            <asp:TextBox ID="txtcorradd" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Fill Correspondence Address" ControlToValidate="txtcorradd" ForeColor="Red"></asp:RequiredFieldValidator>
                            <label>Correspondence Address</label>
                        </div>
                    </div>
                    
                </div>
                <div class="row mb-4">
                    <div class="col-md-4">
                        <div class="form-floating">
                            <asp:TextBox ID="txtcountry" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Fill your Country " ControlToValidate="txtcountry" ForeColor="Red"></asp:RequiredFieldValidator>
                            <label>Country</label>
                        </div>
                   </div>
                    <div class="col-md-4">
                        <div class="form-floating">
                             <asp:TextBox ID="txtcity" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Fill City" ControlToValidate="txtcity" ForeColor="Red"></asp:RequiredFieldValidator>
                             <label>City</label>
                        </div>
                    </div>
                    <%--<div class="col-md-4">
                        <div class="form-floating">
                             <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control"></asp:TextBox>
                             <label>Current Date</label>
                        </div>
                    </div>--%>
                </div>
               <div class="row mb-4">
                     <div class="col-md-10">
                         <div class="form-floating">
                             Upload KYC Documnets
                             <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Upload KYC Document" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
                             <ol style="font-size:12px">(Max. 5 MB, jpeg/png/pdf, Please upload  your Addhar & Pan files at one time)></ol>
                         </div>
                    </div>
                     <div class="col-md-4">
                         <div class="form-floating">
                            
                         </div>
                     </div>
                 </div>
                 <div class="row mb-4">
                     <div class="col-md-6">
                         <div class="form-floating">
                             <asp:TextBox ID="txtbank" runat="server" CssClass="form-control"></asp:TextBox>
                             <label>Bank Name</label>
                         </div>
                    </div>
                     <div class="col-md-6">
                         <div class="form-floating">
                              <asp:TextBox ID="txttran" runat="server" CssClass="form-control"></asp:TextBox>
                              <label>Transaction Id</label>
                         </div>
                     </div>
                        <div class="row mb-">
                            <div class="col-md-12" style="text-align:left">
                                <asp:CheckBox ID="txtterms" runat="server" />
                                <label>Terms && Conditions</label>
                                <ol style="font-size:12px">(The rental agreement is an official agreement entered between the tenant and owner of a property)</ol>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Accept the Terms & Conditions" ControlToValidate="txtterms" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                 </div>
                    <div>
                    <asp:Button ID="Button2" runat="server" Text="Booking" class="btn btn-primary btn-block" OnClick="Button1_Click" />

                        <%--<asp:Button ID="Button1" runat="server" Text="Booking" class="btn btn-primary btn-block" OnClick="Button1_Click"/>--%>
                </div>
                </div>
        </form>
            </div>
      
</div>
</div>
</div>
</div>


</main>
    
    <footer id="footer" class="footer light-background">

  <div class="container">
    <div class="row gy-3">
      <div class="col-lg-3 col-md-6 d-flex">
        <i class="bi bi-geo-alt icon"></i>
        <div class="address">
          <h4>Address</h4>
          <p>ShivajiNagar, Pune</p>
          <p>India</p>
          <p></p>
        </div>

      </div>

      <div class="col-lg-3 col-md-6 d-flex">
        <i class="bi bi-telephone icon"></i>
        <div>
          <h4>Contact</h4>
          <p>
            <strong>Phone:</strong> <span>+918060705968</span><br>
            <strong>Email:</strong> <span>boldreal@gmail.com</span><br>
          </p>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 d-flex">
        <i class="bi bi-clock icon"></i>
        <div>
          <h4>Opening Hours</h4>
          <p>
            <strong>Mon-Sat:</strong> <span>11AM - 23PM</span><br>
            <strong>Sunday</strong>: <span>Closed</span>
          </p>
        </div>
      </div>

      <div class="col-lg-3 col-md-6">
        <h4>Follow Us</h4>
        <div class="social-links d-flex">
          <a href="#" class="twitter"><i class="bi bi-twitter-x"></i></a>
          <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
          <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
          <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
        </div>
      </div>

    </div>
  </div>

  <div class="container copyright text-center mt-4">
    <p>© <span>Copyright</span> <strong class="px-1 sitename">Bold Real Estate</strong> <span>All Rights Reserved</span></p>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you've purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </div>

</footer>
     <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

 <!-- Preloader -->
 <div id="preloader"></div>

 <!-- Vendor JS Files -->
 <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="assets/vendor/php-email-form/validate.js"></script>
 <script src="assets/vendor/aos/aos.js"></script>
 <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
 <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
 

 <!-- Main JS File -->
 <script src="assets/js/main.js"></script>
</body>
</html>
