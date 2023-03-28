<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<link rel="stylesheet" href="./plugin/animsition/css/animate.css">
<style>
@media screen and (max-width: 768px) {
    .hinh-anh-hoat-dong {
        font-size: 25px !important;
    }
}
</style>
<div class="gb-slideshow hpfix0909_4">
    <h2 class="hinh-anh-hoat-dong hpfix0909_3">
        Hình ảnh hoạt động 
    </h2>
    <div class="container">
        <div class="gb-slideshow-slide1 owl-carousel owl-theme">        
       
                    <div class="item">
                        <a href=""><img src="/images/anvi_hd_1.jpg" alt="" class="img-responsive"></a>
                    </div> 
                    <div class="item">
                        <a href=""><img src="/images/anvi_hd_3.jpg" alt="" class="img-responsive"></a>
                    </div>
                    <div class="item">
                        <a href=""><img src="/images/anvi_hd_4.jpg" alt="" class="img-responsive"></a>
                    </div>                  
                    
        
    </div>
    </div>
</div>

<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        var owl = $('.gb-slideshow-slide1');
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
                0:{items:1,
                    nav:false
                },
                600:{items:3,
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