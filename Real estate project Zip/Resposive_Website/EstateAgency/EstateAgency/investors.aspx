<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="investors.aspx.cs" Inherits="Resposive_Website.EstateAgency.EstateAgency.investors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
</head>
<body>
    <header id="header" class="header d-flex align-items-center fixed-top">
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
              <%--<li><a href="investors.aspx" class="active">Investors</a></li>--%>
             
          </ul> </li>
        <li><a href="services.aspx">Services</a></li>
        <li><a href="properties.aspx">Properties</a></li>
        <li><a href="agents.aspx">Agents</a></li>
        <li><a href="contact.aspx">Contact</a></li>
        <li class="dropdown"><a href="#"><span>Online Booking</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
         <ul>
            <li><a href="bookingsale.aspx">Booking For Sale</a></li>
            <li><a href="bookingrent.aspx">Booking For Rent</a></li>
             </ul></li>
            <%--<li><a href="Login.aspx">Admin</a></li>--%>
      </ul>
      <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
    </nav>

  </div>
</header>
   <main class="main">

  <!-- Page Title -->
  <div class="page-title" data-aos="fade">
    <div class="heading">
      <div class="container">
        <div class="row d-flex justify-content-center text-center">
          <div class="col-lg-8">
            <h1>Investors</h1>
          </div>
        </div>
      </div>
    </div>
    <nav class="breadcrumbs">
      <div class="container">
        <ol>
          <li><a href="index.aspx">Home</a></li>
          <li class="current">About</li>
        </ol>
      </div>
    </nav>
  </div><!-- End Page Title -->

  <!-- About Section -->
  <section id="about" class="about section">

    <div class="container">

      <div class="row gy-4">

        <div class="col-lg-12 content" data-aos="fade-up" data-aos-delay="100">
           
          <p class="who-we-are"><strong>The storied journey of Kolte-Patil Developers Limited started with Mr. Aniruddha Patil, our visionary Founder setting up real estate business in Jalgaon,
              Maharashtra in the year 1970. Mr. Aniruddha Patil, fondly referred to as AVP by Kolte-Patilites started the real estate development business in Jalgaon with a vision to offer plotting development,
              row houses, and bungalows to home buyers at value pricing with an emphasis on quality.
              </strong></p>
          <p>
              <mark>Mr. Rajesh Patil, Chairman and Managing Director</mark><br />
              Mr. Rajesh Patil holds a degree in Civil Engineering from the University of Mysore. He has been associated as promoter with the company since its inception.
              He has more than 30 years' experience in the real estate business for business development, land procurement, funding requirements and strategy. He believes future belongs to only those developers with a brand equity built on corporate governance, innovation and execution.
          </p>
            <p>
                <mark>Mr. Naresh Patil, Vice-Chairman</mark><br />
              Mr. Naresh Patil holds a degree in Commerce from University of Pune. He has more than 30 years of experience in real estate development including company level strategy,
                Legal framework and safety. He was also instrumental in the Company’s geographical diversification initiatives, having started the Bengaluru operations in 1994. He believes Kolte-Patil has always acted like a specialized developer not an aggregator,
                making investments in active assets like people, processes, equipment and technology.

            </p>
        
        </div>

      
      </div>

    </div>
  </section><!-- /About Section -->

 

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
