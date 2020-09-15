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
        top: -20px;
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
                        <a href="#" class="btn-custom p-3 bg-primary ftco-animate col-md-12 bluewhite offset-md-3 text-white" style="float:right;"></span></a>
                        <div class="col-md-12 text p-1 ftco-animate w-100 py-4">
                            <h4 class="mb-3">Blue and white</h4>
                            <span class="location d-block mb-3"><i class="icon-my_location"></i><strong> Oia, Santorini</strong></span>
                            <p><strong>Apartment &nbsp; 280.000 &euro;</strong></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item my-3">
                <div class="item__third">
                    <img src="oiaView.jpg" class="img-fluid d-block w-100 p-3" alt="">
                    <div class="carousel-caption d-none d-md-block col-md-7 col-lg-5 offset-md-2 offset-lg-4 col-12">
                        <a href="#" class="btn-custom p-3 bg-primary ftco-animate col-md-12 bluewhite offset-md-3 text-white" style="float:right;"></span></a>
                        <div class="col-md-12 text p-1 ftco-animate w-100 py-4">
                            <h4 class="mb-3">Breathtaking view</h4>
                            <span class="location d-block mb-3"><i class="icon-my_location"></i><strong> Oia, Santorini</strong></span>
                            <p><strong>Villa &nbsp; 400.000 &euro;</strong></p>
                        </div>
                    </div>                        
                </div>
            </div>
            <div class="carousel-item my-3">
                <div class="item__third">
                    <img src="oia2.webp" class="img-fluid d-block w-100 p-3" alt="">
                    <div class="carousel-caption d-none d-md-block col-md-7 col-lg-5 offset-md-2 offset-lg-4 col-12">
                        <a href="#" class="btn-custom p-3 bg-primary ftco-animate col-md-12 bluewhite offset-md-3 text-white" style="float:right;"></span></a>
                        <div class="col-md-12 text p-1 ftco-animate w-100 py-4">
                            <h4 class="mb-3">The best sun and sea</h4>
                            <span class="location d-block mb-3"><i class="icon-my_location"></i><strong> Oia, Santorini</strong></span>
                            <p><strong>Apartment &nbsp; 250.000 &euro;</strong></p>
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


