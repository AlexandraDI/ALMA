<%@ include file="headWithoutSpringForm.jsp" %>

<style>
    .multi-item-carousel {
        overflow: hidden;
    }
    .multi-item-carousel .carousel-indicators {
        margin-right: 25%;
        margin-left: 25%;
    }
    .multi-item-carousel .carousel-control-prev, 
    .multi-item-carousel .carousel-control-next {
        background: rgba(255, 255, 255, 0.3);
        width: 25%;
        z-index: 11;  /* .carousel-caption has z-index 10 */
    }
    .multi-item-carousel .carousel-inner {
        width: 150%;
        left: -25%;
    }
    .carousel-inner > .carousel-item.next, 
    .carousel-inner > .carousel-item.active.right {
        -webkit-transform: translate3d(33%, 0, 0);
        transform: translate3d(33%, 0, 0);
    }
    .carousel-inner > .carousel-item.prev, 
    .carousel-inner > .carousel-item.active.left {
        -webkit-transform: translate3d(-33%, 0, 0);
        transform: translate3d(-33%, 0, 0);
    }
    .item__third {
        float: left;
        position: relative;  /* captions can now be added */
        width: 33.33333333%;
    } 
    
    div.col-md-6.text.p-4.ftco-animate.fadeInUp.ftco-animated{
        background-color: white;
        color: gray;
    }
    
    a.btn-custom.p-3.px-4.bg-primary{
margin-top: -26%;
position: absolute;
width: 150px;
/*margin-left: 6%;*/
color: white;
    }
</style>


</head>

<body>

    <div class="bd-example">
        <div id="carouselExampleCaptions" class="carousel slide multi-item-carousel" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active my-3">
                    <div class="item__third">
                        <img src="oia.webp" class="d-block w-100 p-3" alt="" height="750" width="300">
                        <div class="carousel-caption d-none d-md-block">
<!--                        <div class="overlay"></div>-->
                        <div class="container">
                            <div class="row no-gutters slider-text align-items-md-end align-items-center justify-content-end">
                                
                                <div class="col-md-6 text p-4 ftco-animate">
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                    <h1 class="mb-3">Oia, Santorini</h1>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Melbourne, Vic 3004</span>
                                    <p>Oia is a traditional settlement in the north of Santorini and a great place to live. It is also known as 'Apano Meria' or 'Anomeria'.</p>
                                    <span class="price">280.000 Euros</span>
<!--                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>-->
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
<!--                     <div class="slider-item" style="background-image:url(/oia.webp);">
                        <div class="overlay"></div>
                        <div class="container">
                            <div class="row no-gutters slider-text align-items-md-end align-items-center justify-content-end">
                                <div class="col-md-6 text p-4 ftco-animate">
                                    <h1 class="mb-3">Florida 5, Pinecrest, FL</h1>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Melbourne, Vic 3004</span>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <span class="price">$28,000</span>
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>                   -->
                </div>
                <div class="carousel-item my-3">
                    <div class="item__third">
                        <img src="oia1.webp" class="d-block w-100 p-3" alt="" height="750" width="300">
<!--                        <div class="carousel-caption d-none d-md-block">
                            <h5>Second slide label</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>-->
                        <div class="carousel-caption d-none d-md-block">
<!--                        <div class="overlay"></div>-->
                        <div class="container">
                            <div class="row no-gutters slider-text align-items-md-end align-items-center justify-content-end">
                                
                                <div class="col-md-6 text p-4 ftco-animate">
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                    <h1 class="mb-3">Oia, Santorini</h1>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Melbourne, Vic 3004</span>
                                    <p>Oia is a traditional settlement in the north of Santorini and a great place to live. It is also known as 'Apano Meria' or 'Anomeria'.</p>
                                    <span class="price">280.000 Euros</span>
<!--                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>-->
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item my-3">
                    <div class="item__third">
                        <img src="oia.webp" class="d-block w-100 p-3" alt="" height="750" width="300">
<!--                        <div class="carousel-caption d-none d-md-block">
                            <h5>Third slide label</h5>
                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                        </div>-->
                        <div class="carousel-caption d-none d-md-block">
<!--                        <div class="overlay"></div>-->
                        <div class="container">
                            <div class="row no-gutters slider-text align-items-md-end align-items-center justify-content-end">
                                
                                <div class="col-md-6 text p-4 ftco-animate">
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                    <h1 class="mb-3">Oia, Santorini</h1>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Melbourne, Vic 3004</span>
                                    <p>Oia is a traditional settlement in the north of Santorini and a great place to live. It is also known as 'Apano Meria' or 'Anomeria'.</p>
                                    <span class="price">280.000 Euros</span>
<!--                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>-->
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    </br>


    <%--   <%@ include file="carousel.jsp" %> --%>

<!--    <section class="hero-section">
        <div class="row" >
            <div class="col-2 my-4" >
                <image id="next" src="oiaPrevious.png" width="100%" height="100%"/>  
            </div>  

            <div class="col-8">
                <div class="home-slider owl-carousel my-4" id="owl-carousel">
                    <div class="slider-item" style="background-image:url(/oia.webp);">
                        <div class="overlay"></div>
                        <div class="container">
                            <div class="row no-gutters slider-text align-items-md-end align-items-center justify-content-end">
                                <div class="col-md-6 text p-4 ftco-animate">
                                    <h1 class="mb-3">Florida 5, Pinecrest, FL</h1>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Melbourne, Vic 3004</span>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <span class="price">$28,000</span>
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="slider-item" style="background-image:url(/oia1.webp);">
                        <div class="overlay"></div>
                        <div class="container">
                            <div class="row no-gutters slider-text align-items-md-end align-items-center justify-content-end">
                                <div class="col-md-6 text p-4 ftco-animate">
                                    <h1 class="mb-3">3015 Grand Avenue, CocoWalk</h1>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Melbourne, Vic 3004</span>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <span class="price">$28,000</span>
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="slider-item" style="background-image:url(/oia.webp);">
                        <div class="overlay"></div>
                        <div class="container">
                            <div class="row no-gutters slider-text align-items-md-end align-items-center justify-content-end">
                                <div class="col-md-6 text p-4 ftco-animate">
                                    <h1 class="mb-3">Florida 5, Pinecrest, FL</h1>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Melbourne, Vic 3004</span>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <span class="price">$28,000</span>
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>      

                </div>

            </div>
            <div class="col-2 my-4">
                <image id="next" src="oiaNext.png" width="100%" height="100%"/>  
            </div>          
        </div>     
    </section>    -->


  <%@ include file="search.jsp" %>  
    
<%@ include file="information.jsp" %>

  <%@ include file="recentPosts.jsp" %>
  
   <%@ include file="specialOffers.jsp" %>
 
    
   <%@ include file="funFacts.jsp" %>
   
   <%@ include file="lawyers.jsp" %>
   
   <%@ include file="readArticles.jsp" %>
   
   <%@ include file="subscribe.jsp" %>
   
   <%@ include file="footer.jsp" %>


    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>



    <script>

    </script>

</body>
</html>






<script>
    $('.carousel-item', '.multi-item-carousel').each(function () {
        var next = $(this).next();
        if (!next.length) {
            next = $(this).siblings(':first');
        }
        next.children(':first-child').clone().appendTo($(this));
    }).each(function () {
        var prev = $(this).prev();
        if (!prev.length) {
            prev = $(this).siblings(':last');
        }
        prev.children(':nth-last-child(2)').clone().prependTo($(this));
    });
</script>




</body>

</html>