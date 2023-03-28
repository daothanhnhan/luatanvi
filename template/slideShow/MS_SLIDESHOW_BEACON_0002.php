<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<link rel="stylesheet" href="./plugin/animsition/css/animate.css">
<style>
@media screen and (max-width: 768px) {
    .khach-hang-tieu-bieu {
        font-size: 25px !important;
    }
}
</style>
<div class="gb-slideshow">
    <h2 class="khach-hang-tieu-bieu hpfix0909_3">
        KHÁCH HÀNG TIÊU BIỂU
    </h2>
    <div class="container">
        <div class="gb-slideshow-slide owl-carousel owl-theme">        
       
                    <div class="item">
                        <a href=""><img src="/images/blog/1.jpg" alt="" class="img-responsive"></a>
                    </div> 
                    <div class="item">
                        <a href=""><img src="/images/blog/2.png" alt="" class="img-responsive"></a>
                    </div>
                    <div class="item">
                        <a href=""><img src="/images/blog/3.png" alt="" class="img-responsive"></a>
                    </div>                  
                   <!--  <div class="item">
                        <a href=""><img src="/images/blog/4.png" alt="" class="img-responsive"></a>
                    </div> -->
                    <div class="item">
                        <a href=""><img src="/images/blog/5.png" alt="" class="img-responsive"></a>
                    </div>
                    <div class="item">
                        <a href=""><img src="/images/blog/6.png" alt="" class="img-responsive"></a>
                    </div>
                    <div class="item">
                        <a href=""><img src="/images/blog/7.png" alt="" class="img-responsive"></a>
                    </div>
                    <div class="item">
                        <a href=""><img src="/images/blog/8.png" alt="" class="img-responsive"></a>
                    </div>
        
    </div>
    </div>
</div>

<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        var owl = $('.gb-slideshow-slide');
        owl.owlCarousel({
            loop:true,
            margin:15,
            navSpeed:500,
            nav:false,
            dots:false,
            autoplay: true,
            rewind: true,
            navText:[],
            
            responsive:{
                0:{items:2,
                    nav:false
                },
                600:{items:6,
                    nav:true
                }
            }
        });
        function setAnimation ( _elem, _InOut ) {
            var animationEndEvent = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';

            _elem.each ( function () {
                var $elem = $(this);
                var $animationType = 'animated ' + $elem.data( 'animation-' + _InOut );

                $elem.addClass($animationType).one(animationEndEvent, function () {
                    $elem.removeClass($animationType);
                });
            });
        }


    });
</script>