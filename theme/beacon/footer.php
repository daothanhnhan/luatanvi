<footer>

    <div class="footer-area-top">

        <div class="container">

            <div class="area-footer">

                <div class="row">
                    <div class="footer-4">

                        <div class="col-sm-3 col-xs-12 footer-box">


                          <img src="/images/<?=$rowConfig['web_logo']?>" alt="">
                          <p style="    margin-top: 15px;    font-size: 15px;    text-align: justify;">
                              <?= $rowConfig['web_email'] ?>
                          </p>
                          <a href="/page/gioi-thieu"><p style="text-align: right;">Xem thêm -></p></a>
                        </div>

                    </div>

                   

                    <div class="footer-2">

                        <div class="col-sm-3 col-xs-12 footer-box">

                            <h1>Dịch vụ tiêu biểu</h1>

                            <ul class="featured-links">

                                <?= $rowConfig['content_home7'] ?>

                            </ul>

                            <?php include_once 'template/footer/MS_FOOTER_LGP_0001.php'; ?>
                        </div>

                    </div>

                    <div class="footer-3">

                        <div class="col-sm-3 col-xs-12 footer-box">

                            <h1>Đăng ký tư vấn</h1>
                            <p>Vui lòng để lại thông tin cá nhân của quý khách, chúng tôi sẽ liên hệ lại ngay với quý khách</p>

                                <form action="">
                                    <input type="text" placeholder="Họ tên" required>
                                    <input type="text" placeholder="Số điện thoại" required>
                                    <div class="dangky">Đăng ký</div>
                                </form>

                        </div>

                    </div>
                     <div class="footer-1">

                        <div class="col-sm-3 col-xs-12 footer-box">

                            <div class="footer-about-us">

                                <h1>Liên hệ</h1>

                            </div>
                            <!-- <p style="font-size: 16px">Văn phòng Hà Nội</p> -->
                            <p>Địa chỉ: <?= $rowConfig['content_home1'] ?> </p>
                            <p>Hotline: <a style="color: #dea315; font-weight: bold;font-size: 15px;" href="tel:<?= $rowConfig['content_home3'] ?> ">
                                <?= $rowConfig['content_home3'] ?></a></p>
                            <p>Email: <a style="color: #dea315; font-weight: bold;font-size: 15px;" href="mailto: <?= $rowConfig['content_home2'] ?>"> <?= $rowConfig['content_home2'] ?></a></p>

                            
                          

                            <!-- <p style="font-size: 16px; margin-top: 15px;">Văn phòng Hồ Chí Minh</p>
                            <p>Địa chỉ: Lầu 4 Indochina Park Tower, số 4 Nguyễn Đình Chiểu,
phường Đa Kao, , Quận 1, TP. Hồ Chí Minh. </p>

                            <a style="color: #dea315; font-weight: bold;font-size: 15px;" href="tel:0972.634.617 ">
                                0972.634.617 
                            </a> - <a style="color: #dea315; font-weight: bold;font-size: 15px;" href="mailto: luatgiaphat@gmail.com"> luatgiaphat@gmail.com</a> -->

                            <!-- <ul class="footer-contact">

                                <li>

                                    <div class="icon">

                                        <i class="fa fa-map-marker" aria-hidden="true"></i>

                                    </div>

                                    <span>Address:</span> <?= $rowConfig['content_home1'] ?>

                                </li>

                                <li>

                                    <div class="icon">

                                        <i class="fa fa-phone" aria-hidden="true"></i>

                                    </div>

                                    <span>Holine:</span> <?= $rowConfig['content_home3'] ?>

                                </li>

                                <li>

                                    <div class="icon">

                                        <i class="fa fa-envelope" aria-hidden="true"></i>

                                    </div>

                                    <span>Mail:</span> <?= $rowConfig['content_home2'] ?>

                                </li>
                                <li>

                                    <div class="icon">

                                        <i class="fa fa-facebook" aria-hidden="true"></i>

                                    </div>

                                    <span>Fanpage:</span> <?= $rowConfig['content_home5'] ?>

                                </li>
                                <li>

                                    <div class="icon">

                                        <i class="fa fa-youtube-play" aria-hidden="true"></i>

                                    </div>

                                    <span>Youtube:</span> <?= $rowConfig['content_home6'] ?>

                                </li>

                            </ul>
 -->
                        </div>

                    </div>

                    

                </div>

            </div>

            <div class="footer-area-bottom">

                <p>© Copyright 2015. All rights reserved. Design by CAFE LINK VIỆT NAM</p>

            </div>

        </div>



    </div>

</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script src="/js/bootstrap.min.js"></script>



<!--js sắp khai giảng-->

<!--==============================================================-->

<script>

</script>

<!-- <script src="/js/countdown.js"></script> -->
<script>
<?php
    $ngay_han = $rowConfig['content_home10'];
    $ngay_han = explode("-", $ngay_han);
?>
/**
 * Created by Dell on 01/06/2017.
 */
function countdown() {
    var now= new Date();
    var enventDate= new Date(<?= $ngay_han[0] ?>,<?= $ngay_han[1] ?>, <?= $ngay_han[2] ?>);
    var currentTime= now.getTime();
    var eventTime = enventDate.getTime();
    var remTime = eventTime -currentTime - 2592000000;
    var s= Math.floor(remTime/ 1000);
    var m=Math.floor(s/60);
    var h=Math.floor(m/60);
    var d= Math.floor(h/24);
    h %=24;
    m %=60;
    s %=60;
    h=(h<10)? "0" +h:h;
    m=(m<10)? "0" +m:m;
    s=(s<10)? "0" +s:s;
    document.getElementById("days").textContent=d;
    // document.getElementById("days").textContent=d;
    document.getElementById("days").innerText=d;

    document.getElementById("hour").textContent=h;
    document.getElementById("minutes").textContent=m;
    document.getElementById("second").textContent=s;
    setTimeout(countdown, 1000);
}
countdown();
</script>

<script src="/js/sliderbanner.js"></script>

<script src="/js/newblog.js"></script>

<script src="/js/logopartner.js"></script>

<script src="/dist/owl.carousel.min.js"></script>





<script src="/js/sapkhaigiang.js"></script>

<script src="/js/main.js"></script>



<script src="/js/isotope.pkgd.min.js"></script>
<script src="https://uhchat.net/code.php?f=3bb381"></script>
<a href="https://zalo.me/0981214789" class="zalo-chat">
    <img src="/images/zalo-icon.png" alt="" width="100%">
</a>