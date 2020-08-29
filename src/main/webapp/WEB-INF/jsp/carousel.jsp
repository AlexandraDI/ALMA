<%-- 
    Document   : carousel
    Created on : Aug 19, 2020, 6:44:27 PM
    Author     : alex
--%>



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
    
 
    
    
</style>