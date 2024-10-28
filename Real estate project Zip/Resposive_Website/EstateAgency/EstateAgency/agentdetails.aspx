<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agentdetails.aspx.cs" Inherits="Resposive_Website.EstateAgency.EstateAgency.agentdetails" %>

<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Contact - Bold Real Estate</title>
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
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

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
    body{
        background-image:url('assets/img/backimg.jpg');
    }
</style>
</head>

<body class="contact-page">

  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

      <a href="index.aspx" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1 class="sitename">Bold Real<span>Estate</span></h1>
      </a>

     <%-- <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="index.aspx">Home</a></li>
          <li class="dropdown"><a href="#"><span>About</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
               <ul>
                  <li><a href="about.aspx">About Bold Real Estate</a></li>
                  <li><a href="founder.aspx">Founder</a></li>
                  <li><a href="leadership-team.aspx">LeaderShip Team</a></li>--%>
                  <%--<li><a href="investors.aspx">Investors</a></li>--%>
              <%--</ul></li>
          <li><a href="services.aspx">Services</a></li>
          <li><a href="properties.aspx">Properties</a></li>
          <li><a href="agents.aspx">Agents</a></li>
          <li><a href="contact.aspx">Contact</a></li>
            <li class="dropdown"><a href="#"><span>Online Booking</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
             <ul>
                <li><a href="bookingsale.aspx">Booking For Sale</a></li>
                <li><a href="bookingrent.aspx">Booking For Rent</a></li>
         </ul></li>--%>
            <%--<li><a href="Login.aspx">Admin</a></li>--%>

       <%-- </ul>
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>--%>

    </div>
  </header>

    <br /><br />
  <div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container" >
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <div class="card shadow-lg border-0 rounded-lg mt-5" style="background-color:antiquewhite">
                            <div class="card-header"><h3 class="text-center font-weight-light my-4">Agent Details</h3></div>
                            <div class="card-body">
                                <form runat="server">
                                    <div style="text-align:right">
                                    <asp:TextBox ID="TextBox3" runat="server" Width="100px" ForeColor="Black" Font-Bold="true"></asp:TextBox></div><br />
                                    <%--<asp:Label ID="Label1" runat="server" Text=""></asp:Label>--%>
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <asp:TextBox ID="txtfname" runat="server" class="form-control" AutoPostBack="true"></asp:TextBox>
                                                <label for="inputFirstName">First name</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-floating">
                                                    <asp:TextBox ID="txtlname" runat="server" class="form-control"></asp:TextBox>
                                                <label for="inputLastName">Last name</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-floating mb-3">
                                           <asp:TextBox ID="txtemail" runat="server" class="form-control" Width="500px"></asp:TextBox>
                                        <label for="inputEmail">Email address</label>
                                    </div>
                                    <div class="row mb-3">
                                        
                                        <div class="col-md-6" >
                                            <div>Gender:
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="form-control" RepeatDirection="Horizontal" >
                                                    <asp:ListItem ID="rmale" style="padding-left:10px;">Male</asp:ListItem>
                                                    <asp:ListItem ID="rfemale" style="padding-left:30px;">Female</asp:ListItem>
                                                </asp:RadioButtonList><br>
                                            </div>
                                        </div> 
                                        <div class="col-md-6">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control"></asp:TextBox>
                                                <label>Contact</label>
                                            </div>
                                        </div>

                                    </div>
                                     <div class="row mb-3">
                                         <div class="col-md-10">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control"></asp:TextBox>
                                                <label>Address</label>
                                            </div>
                                        </div>
                                         
                                        </div>
                                    <div class="mt-4 mb-0">
                                        <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary btn-block" OnClick="Button1_Click" />
                                        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                    </div>
                                </form>
                            </div>
                            <%--<div class="card-footer text-center py-3">
                                <div class="small"><a href="login.aspx">Have an account? Go to login</a></div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <div id="layoutAuthentication_footer">
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Your Website 2023</div>
                    <div>
                        <a href="#">Privacy Policy</a>
                        &middot;
                        <a href="#">Terms &amp; Conditions</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</div>

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

  <!-- Scroll Top -->
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
