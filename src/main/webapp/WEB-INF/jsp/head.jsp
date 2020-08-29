<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 <%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">
  <head>
    <title>ALMA</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    
    <!--<script type="text/css" src="/style.css"></script>-->
    <link rel="stylesheet" href="/css/style.css">
    
         <script
            src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
            crossorigin="anonymous">
        </script>

         <style>
.top {
    background: white !important;
    border-bottom: 1px solid #ebebeb;
}


.ftco-navbar-light {
    background: white !important;
    border-bottom: 1px solid #ebebeb;
}

.navbar-dark .navbar-brand:hover, .navbar-dark .navbar-brand:focus {
    color: #2e3536;
}


.navbar-dark .navbar-brand, .navbar-dark .navbar-brand{
    color: #2e3536;
}

.ftco-navbar-light .navbar-nav > .nav-item > .nav-link:hover {
    color: #109fd1;
}

.ftco-navbar-light .navbar-nav > .nav-item > .nav-link {

    color: #000;
    opacity: 6 !important;
}

/*.ftco-navbar-light .navbar-nav > .nav-item > .nav-link {
    color: #109fd1;
}*/

li.nav-item.active {
    color: #2e3536 !important;
}


.top p.social a {

    border-left: 1px solid #ebebeb;
   

}

.top p.social a:last-child {
     border-right: 1px solid #ebebeb;
}


.top p.num {
/*    color: #646464;*/
    font-size: 14px;
}

.ftco-navbar-light .navbar-toggler {
    color: rgb(0, 0, 0) !important;
}

        </style>         

  </head>
  <body>
    <div class="top">
    	<div class="container">
    		<div class="row d-flex align-items-center">
    			<div class="col">
    				<p class="social d-flex">
    					<a href="#"><span class="icon-facebook"></span></a>
    					<a href="#"><span class="icon-twitter"></span></a>
    					<a href="#"><span class="icon-google"></span></a>
							<a href="#"><span class="icon-pinterest"></span></a>
    				</p>
    			</div>
    			<div class="col d-flex justify-content-end">
    				<p class="num"><span class="icon-chat"></span> Alma.support@gmail.com</p>
    			</div>
    		</div>
    	</div>
    </div>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/">AL<span>MA</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="index.html" class="nav-link">HOME</a></li>
                    <li class="nav-item"><a href="property.html" class="nav-link">PROPERTY</a></li>
	          <li class="nav-item"><a href="agents.html" class="nav-link">AGENTS</a></li>
	          <li class="nav-item"><a href="about.html" class="nav-link">ABOUT</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">BLOG</a></li>
	          <li class="nav-item"><a href="/preLogin" class="nav-link">CONTACT</a></li>
                  
                  


                  
                  
                  
                  
	          <li class="nav-item cta" id="loginUser"><a href="#modalLoginForm" data-toggle="modal" class="nav-link ml-lg-2"><span class="icon-user"></span> LOGIN</a></li>
	          <li class="nav-item cta cta-colored" id="registerUser"><a href="/preRegister"  class="nav-link"><span class="icon-pencil"></span> REGISTER</a></li>

	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    