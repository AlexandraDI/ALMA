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

                <div class="collapse navbar-collapse collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="/" class="nav-link">HOME</a></li>
                        
                        
                        <c:if test="${sessionScope.user.roleId.roleId == 1}"><li class="nav-item"><a href="/showBuyers" class="nav-link" target="_blank">ADMIN PAGE</a></li></c:if>
                        
                        <li class="nav-item"><a href="/getPropertyList?page=0&size=9" class="nav-link">PROPERTIES</a></li>
                        <c:if test="${sessionScope.user.roleId.roleId == 3}"><li class="nav-item"><a href="/preAddProperty" class="nav-link">ADD PROPERTY</a></li></c:if>
                        <c:if test="${sessionScope.user.roleId.roleId == 4}"><c:if test="${sessionScope.user.requiredDocumentsUploaded.status == 2 }"> <li class="nav-item"><a href="/getYourBookings" class="nav-link">MY BOOKINGS</a></li></c:if></c:if>
                        <c:if test="${sessionScope.user.roleId.roleId == 2 || sessionScope.user.roleId.roleId == 3 || sessionScope.user.roleId.roleId == 4}">
                        <li class="nav-item"><a href="/getConversations" class="nav-link">COMMUNICATION</a></li>
                        </c:if>
                        
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          GOLDEN VISA
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item nav-item" href="/goldenVisa">WHAT IT IS</a>
                          <a class="dropdown-item nav-item" href="/whyGreece">WHY GREECE</a>
                          <a class="dropdown-item nav-item" href="/applicationProccess">APPLICATION</a>
                          <a class="dropdown-item nav-item" href="/eligibilityCriteria">ELIGIBILITY CRITERIA</a>
                      </div>
                  </li>                       
                     
                        <c:if test="${sessionScope.user.roleId.roleId == 4}"><c:if test="${empty sessionScope.user.requiredDocumentsUploaded}"> <li class="nav-item"><a href="/preAddLawyer" class="nav-link">COMPLETE PROFILE</a></li></c:if></c:if>

<!--                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                PROPERTY
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item nav-item" href="/preAddProperty">ADD</a>
                                <a class="dropdown-item nav-item" href="/getPropertyList?page=0&size=9">DISPLAY LIST</a>
                            </div>
                        </li>                       
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          LAWYER
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item nav-item" href="/preAddLawyer">SUBMIT FORM</a>
                          <a class="dropdown-item nav-item" href="/getApprovedLawyersList">DISPLAY LIST</a>
                          <a class="dropdown-item nav-item" href="/getYourBookings">MY BOOKINGS</a>
                      </div>
                  </li> -->
                  


                  
                  
                 




                        <c:if test="${empty sessionScope.user.username}">
                            <li class="nav-item cta" id="loginUser"><a href="/preLogin" class="nav-link ml-lg-2"><span class="icon-user"></span> LOGIN</a></li>
                            <li class="nav-item cta cta-colored" id="registerUser"><a href="/preRegister"  class="nav-link"><span class="icon-pencil"></span> REGISTER</a></li>
                            </c:if>
                            <c:if test="${not empty sessionScope.user.username}">
                            <li class="nav-item cta cta-colored" id="loginUser"><a href="/information" class="nav-link ml-lg-2"><span class="icon-plus"></span> INFO</a></li>
                            <li class="nav-item cta" id="registerUser"><a href="/logout"  class="nav-link"><span class="icon-user"></span> LOGOUT</a></li>
                            </c:if>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->

<!--        <nav class="navbar navbar-expand-md bg-warning navbar-light fixed-top border border-dark">
            <a href="index.html" class="navbar-brand text-dark font-weight-bold">
                <img src="https://image.flaticon.com/icons/svg/164/164740.svg"
                     width="80" height="80" class="d-inline-block align-top" alt="brand icon"/>
                AFDEmp</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button> 
            <div class="navbar-collapse collapse" id="collapsibleNavbar">
                <ul class="navbar-nav ml-auto mx-5 pr-5">
                    <li class="nav-item dropdown">
                        <a class="nav-link text-dark font-weight-bold dropdown-toggle" data-toggle="dropdown" href="#">Associations</a>
                        <div class="dropdown-menu bg-warning font-weight-bold">
                            <a href="showCoursesToAddStudents.html" class="dropdown-item">Add Student Per Course</a>
                            <a href="showCoursesToEditStudents.html" class="dropdown-item">Edit Student Per Course</a>
                            <a href="showCoursesToUpdateStudents.html" class="dropdown-item">Update Student Per Course</a>
                            <a href="showCoursesToAddTrainers.html" class="dropdown-item">Add Trainer Per Course</a>
                            <a href="showCoursesToEditTrainers.html" class="dropdown-item">Edit Trainer Per Course</a>
                            <a href="showCoursesToUpdateTrainers.html" class="dropdown-item">Update Trainer Per Course</a> 
                            <a href="showCoursesToAddAssignments.html" class="dropdown-item">Add Assignment Per Course</a>
                            <a href="showCoursesToEditAssignments.html" class="dropdown-item">Edit Assignment Per Course</a>
                            <a href="showCoursesToUpdateAssignments.html" class="dropdown-item">Update Assignment Per Course</a>
                            <a href="showCoursesToShowStudents.html" class="dropdown-item">Add Assignment Per Student Per Course</a>
                            <a href="showCoursesToShowStudentsToEdit.html" class="dropdown-item">Edit Assignment Per Student Per Course</a>
                            <a href="showCoursesToShowStudentsToUpdate.html" class="dropdown-item">Update Assignment Per Student Per Course</a> 
                        </div> 
                    </li> 
                    <li class="nav-item dropdown">
                        <a class="nav-link text-dark font-weight-bold dropdown-toggle" data-toggle="dropdown" href="#">Courses</a>
                        <div class="dropdown-menu bg-warning font-weight-bold">
                            <a href="addCourse.html" class="dropdown-item">Add Course</a>
                            <a href="showCoursesToEdit.html" class="dropdown-item">Edit Course</a>
                            <a href="showCoursesToUpdate.html" class="dropdown-item">Update Course</a>
                        </div> 
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link text-dark font-weight-bold dropdown-toggle" data-toggle="dropdown" href="#">Trainers</a>
                        <div class="dropdown-menu bg-warning font-weight-bold">
                            <a href="addTrainer.html" class="dropdown-item">Add Trainer</a>
                            <a href="showTrainersToEdit.html" class="dropdown-item">Edit Trainer</a>
                            <a href="showTrainersToUpdate.html" class="dropdown-item">Update Trainer</a>
                        </div> 
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link text-dark font-weight-bold dropdown-toggle" data-toggle="dropdown" href="#">Assignments</a>
                        <div class="dropdown-menu bg-warning font-weight-bold">
                            <a href="addAssignment.html" class="dropdown-item">Add Assignment</a>
                            <a href="showAssignmentsToEdit.html" class="dropdown-item">Edit Assignment</a>
                            <a href="showAssignmentsToUpdate.html" class="dropdown-item">Update Assignment</a>
                        </div> 
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link text-dark font-weight-bold dropdown-toggle" data-toggle="dropdown" href="#">Students</a>
                        <div class="dropdown-menu bg-warning font-weight-bold">
                            <a href="addStudent.html" class="dropdown-item">Add Student</a>
                            <a href="showStudentsToEdit.html" class="dropdown-item">Edit Student</a>
                            <a href="showStudentsToUpdate.html" class="dropdown-item">Update Student</a>
                        </div> 
                    </li> 
                </ul>
            </div> 
        </nav>-->