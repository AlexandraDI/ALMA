<%-- 
    Document   : carousel
    Created on : Aug 19, 2020, 6:44:27 PM
    Author     : alex
--%>


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
    
    div.col-md-12.text.p-1.ftco-animate.fadeInUp.ftco-animated{
        background-color: white;
        color: gray;
    }
    
    a.btn-custom.p-2.bg-primary.ftco-animate.col-md-12.offset-md-4.text-white.fadeInUp.ftco-animated{
/*margin-top: -26px;*/
    }
    
    .bluewhite{
        
        left: calc(100% - 184px) !important;
    }
    
    
    
</style>


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
                        <img src="oia.webp" class="img-fluid d-block w-100 p-3" alt="">
                       
                        <div class="carousel-caption d-none d-md-block col-md-7 col-lg-5 offset-md-2 offset-lg-4 col-12">
<!--                                <div class="col-md-12 text p-1 ftco-animate w-100 py-4 ">
                                     <a href="#" class="btn-custom p-3 offset-5 bg-primary ftco-animate col-md-12  text-white">View Details <span class="icon-plus ml-1"></span></a>
                                </div>-->
                                 <a href="#" class="btn-custom p-3 bg-primary ftco-animate col-md-12 offset-md-3 text-white">View Details <span class="icon-plus ml-1"></span></a>
                                <div class="col-md-12 text p-1 ftco-animate w-100 py-4">
<!--                                    <a href="#" class="btn-custom p-3 offset-5 bg-primary ftco-animate col-md-12  text-white">View Details <span class="icon-plus ml-1"></span></a>-->
                                    <h4 class="mb-3">Blue and white</h4>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Oia, Santorini</span>
<!--                                    <p>Oia is a traditional settlement in the north of Santorini and a great place to live. It is also known as 'Apano Meria' or 'Anomeria'.</p>-->
                                           <span class="price">280.000 &euro;</span>
<!--                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>-->
                                </div>
                        </div>
<!--                        <div class="container w-md-50">
                            <div class="row no-gutters slider-text align-items-md-end align-items-center justify-content-end">
                                
                                <div class="col-md-6 text p-4 ftco-animate">
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                    <h1 class="mb-3">Oia, Santorini</h1>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Melbourne, Vic 3004</span>
                                    <p>Oia is a traditional settlement in the north of Santorini and a great place to live. It is also known as 'Apano Meria' or 'Anomeria'.</p>
                                    <span class="price">280.000 Euros</span>
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                </div>
                            </div>
                        </div>-->
<!--                        </div>-->
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
                        <img src="oiaView.jpg" class="img-fluid d-block w-100 p-3" alt="">
                        <div class="carousel-caption d-none d-md-block col-md-7 col-lg-5 offset-md-2 offset-lg-4 col-12">
                               <a href="#" class="btn-custom p-3 bg-primary ftco-animate col-md-12 offset-md-3 text-white">View Details <span class="icon-plus ml-1"></span></a>
                                <div class="col-md-12 text p-1 ftco-animate w-100 py-4">
<!--                                     <a href="#" class="btn-custom p-2 bg-primary ftco-animate col-md-12 offset-md-4 text-white">View Details <span class="icon-plus ml-1"></span></a>-->
                                    <h4 class="mb-3">Breathtaking view</h4>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Oia, Santorini</span>
<!--                                    <p>Oia is a traditional settlement in the north of Santorini and a great place to live. It is also known as 'Apano Meria' or 'Anomeria'.</p>-->
                                               <span class="price">400.000 &euro;</span>
<!--                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>-->
                                </div>
                        </div>                        
<!--                        <div class="carousel-caption d-none d-md-block">
                            <h5>Second slide label</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>-->
<!--                        <div class="carousel-caption d-none d-md-block">-->
<!--                        <div class="overlay"></div>-->
<!--                        <div class="container w-md-50">
                            <div class="row no-gutters slider-text align-items-md-end align-items-center justify-content-end">
                                
                                <div class="col-md-6 text p-4 ftco-animate">
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                    <h1 class="mb-3">Oia, Santorini</h1>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Melbourne, Vic 3004</span>
                                    <p>Oia is a traditional settlement in the north of Santorini and a great place to live. It is also known as 'Apano Meria' or 'Anomeria'.</p>
                                    <span class="price">280.000 Euros</span>
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                </div>
                            </div>
                        </div>-->
<!--                        </div>-->
                    </div>
                </div>
                <div class="carousel-item my-3">
                    <div class="item__third">
                        <img src="oia2.webp" class="img-fluid d-block w-100 p-3" alt="">
                        <div class="carousel-caption d-none d-md-block col-md-7 col-lg-5 offset-md-2 offset-lg-4 col-12">
                               <a href="#" class="btn-custom p-3 bg-primary ftco-animate col-md-12 offset-md-3 text-white">View Details <span class="icon-plus ml-1"></span></a>
                                <div class="col-md-12 text p-1 ftco-animate w-100 py-4">
<!--                                     <a href="#" class="btn-custom p-2 bg-primary ftco-animate col-md-12 offset-md-4 text-white">View Details <span class="icon-plus ml-1"></span></a>-->
                                    <h4 class="mb-3">The best sun and sea</h4>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Oia, Santorini</span>
<!--                                    <p>Oia is a traditional settlement in the north of Santorini and a great place to live. It is also known as 'Apano Meria' or 'Anomeria'.</p>-->
                                        <span class="price">250.000 &euro;</span>
<!--                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>-->
                                </div>
                        </div>                        
<!--                        <div class="carousel-caption d-none d-md-block">
                            <h5>Third slide label</h5>
                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                        </div>-->
<!--                        <div class="carousel-caption d-none d-md-block">-->
<!--                        <div class="overlay"></div>-->
<!--                        <div class="container w-md-50">
                            <div class="row no-gutters slider-text align-items-md-end align-items-center justify-content-end">
                                
                                <div class="col-md-6 text p-4 ftco-animate">
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                    <h1 class="mb-3">Oia, Santorini</h1>
                                    <span class="location d-block mb-3"><i class="icon-my_location"></i> Melbourne, Vic 3004</span>
                                    <p>Oia is a traditional settlement in the north of Santorini and a great place to live. It is also known as 'Apano Meria' or 'Anomeria'.</p>
                                    <span class="price">280.000 Euros</span>
                                    <a href="#" class="btn-custom p-3 px-4 bg-primary">View Details <span class="icon-plus ml-1"></span></a>
                                </div>
                            </div>
                        </div>-->
<!--                        </div>-->
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





<!--
    <section class="hero-section">
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
       
       <div class="slider-item" style="background-image:url(/oia2.webp);">
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
    </section>

<style>
    
.owl-stage { 
/*    left: 50%;*/
/*    margin-left: -30%;*/
    
  
    
    
/*        margin-right: 40%;*/
/*overflow: visible;*/
}  


/*.home-slider.owl-carousel.m-4{
    margin-left: -30%;
    overflow: visible;
}*/
#previous {
/*  position: inherit;*/

/*  clip-path: polygon(50% 0, 100% 0, 100% 100%, 50% 100%);*/

  overflow:hidden;
  
/*  margin-left:-10%;*/
  
/*  object-fit: cover;*/
  
  /* clip: shape(top, right, bottom, left); NB 'rect' is the only available option */
} 

#next {
/*  position: inherit;*/

/*  clip-path: polygon(50% 0, 100% 0, 100% 100%, 50% 100%);*/

  overflow:hidden;
  
/*  margin-left:-10%;*/
  
/*  object-fit: cover;*/
  
  /* clip: shape(top, right, bottom, left); NB 'rect' is the only available option */
}

#previous2
    {
        position: absolute;
      background-image: url("oia.webp");
      width: 150px;
      height: 600px;
      
    }
    
 
    
    
</style>-->