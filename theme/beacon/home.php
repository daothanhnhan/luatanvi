<?php include "template/slideShow/MS_SLIDESHOW_BEACON_0001.php";?>
<!-- Luật sư ... -->
<?php include "template/questionAndAnswer/MS_QUESTIONANDANSWER_LANDINGPAGE1_0001.php";?>
<!-- Lĩnh vực... -->
<?php include "template/questionAndAnswer/MS_QUESTIONANDANSWER_LANDINGPAGE1_0002.php";?>
<!--End bài viết mới nhất-->
<?php //include "template/partner/MS_PARTNER_BEACON_0001.php" ?>
<!--BEGIN Ưu đãi mùa hè-->
<!-- <section id="vk-uu-dai">

    <div class="vk-uu-dai-overlay"></div>

    <div class="container">

        <div class="row">

            <div class="vk-uu-dai-content">

                <div class="col-sm-7 vk-uu-dai-left">

                    <div class="vk-uu-dai-left-text">

                      

                        <h3>TẶNG NGAY <span style="color: #dea315"> 50$</span></h3>

                        <p>CHO HỌC VIÊN VÀ NGƯỜI MỚI KHI ĐĂNG KÝ</p>

                    </div>

                    <div class="vk-uu-dai-left-time">

                        <span class="countdown-section">

                                    <span class="count-amount" id="days">12</span>

                                    <span class="countdown-period">Ngày</span>

                        </span>

                        <span class="countdown-section">

                                    <span class="count-amount" id="hour">07</span>

                                    <span class="countdown-period">Giờ</span>

                        </span>

                        <span class="countdown-section">

                                    <span class="count-amount" id="minutes">23</span>

                                    <span class="countdown-period">Phút</span>

                        </span>

                        <span class="countdown-section">

                                    <span class="count-amount" id="second">45</span>

                                    <span class="countdown-period">Giây</span>

                        </span>

                    </div>

                </div>



                <div class="col-sm-4 col-sm-offset-1 vk-uu-dai-right">

                    <div class="vk-uu-dai-right-title">

                        <h3>ĐĂNG KÍ HỌC NGAY</h3>

                        <div class="img">

                            <div class="trigle"></div>

                            <img src="images/box-course.jpg" alt="" class="img-responsive">

                        </div>

                    </div>

                    <form method="post">

                    <div class="vk-uu-dai-right-form">

                        <div class="wrap-select">

                            <div class="form-group">

                                <select class="form-control" name="course" required>

                                    <option value="">--Chọn khóa học--</option>

                                    <option value="Hội thảo web(DK room bắn tín hiệu)">Hội thảo web(DK room bắn tín hiệu)</option>

                                    <option value="Hội thảo tài chính(offline)">Hội thảo tài chính(offline)</option>

                                    <option value="Khoá chuyên sâu">Khoá chuyên sâu</option>

                                </select>

                            </div>

                        </div>

                        <div class="vk-uu-dai-right-form-action">



                                <div class="form-group">

                                    <input id="name" name="name" type="text" class="form-control" required

                                           placeholder="Họ & tên ... ">

                                </div>

                                <div class="form-group">

                                    <input id="phone" name="email" type="email" class="form-control" required

                                           placeholder="Email...">

                                </div>

                                <div class="form-group">

                                    <input id="phone" name="phone" type="number" class="form-control" required

                                           placeholder="Số diện thoại....">

                                </div>

                               

                                <div class="form-group ">

                                  

                                    <button class="btn btn-primary btn-lg btn-block login-button" id="button" name="dang_ky_ngay">Đăng ký</button>

                                </div>



                        </div>

                    </div>

                    </form>

                </div>

            </div>

        </div>

    </div>

</section> -->
<?php include "template/slideShow/MS_SLIDESHOW_BEACON_0002.php";?>
<!--end khách hàng tiêu biểu-->
<?php

    $home_treem_dv = $action_service->getServiceLangDetail_byId(70, $lang);
    $home_treem_dv_img = $action -> getDetail('service','service_id',70);
    $home_treem_dv_img2 = $action -> getDetail('service','service_id',69);
    $home_treem_dv_img3 = $action -> getDetail('service','service_id',68);
    $home_treem_dv_img4 = $action -> getDetail('service','service_id',67);
    $home_treem_dv_img5 = $action -> getDetail('service','service_id',66);

    $home_luyenthi_dv = $action_service->getServiceLangDetail_byId(69, $lang);

    $home_dilam_dv = $action_service->getServiceLangDetail_byId(68, $lang);

    $home_he_dv = $action_service->getServiceLangDetail_byId(67, $lang);

    $home_dacbiet_dv = $action_service->getServiceLangDetail_byId(66, $lang);

    $home_letan_dv = $action_service->getServiceLangDetail_byId(65, $lang);

?>
<!-- hình ảnh hoat động -->
<?php include "template/slideShow/MS_SLIDESHOW_BEACON_0003.php";?>
<!--begin Khóa học thiết kế đồ họa-->
<!-- <section id="vk-course">

    <div class="overlay"></div>

        <div class="container-fluid">

            <div class="row tabbable tabs-left animated">

                <div class="container-fluid">

                    <div class="row">

                        <div class="col-md-5 animated">

                            <div class="row">

                                <div class="tab-left-content img-bg animated">

                                    <ul class="nav nav-tabs row">

                                        <li class="active"><a href="#a" data-toggle="tab"><?=$home_treem_dv_img['service_name']?></a></li>

                                        <li><a href="#b" data-toggle="tab"><?=$home_treem_dv_img2['service_name']?></a></li>

                                        <li><a href="#c" data-toggle="tab"><?=$home_treem_dv_img3['service_name']?></a></li>

                                        <li><a href="#d" data-toggle="tab"><?=$home_treem_dv_img4['service_name']?></a></li>

                                        <li><a href="#e" data-toggle="tab"><?=$home_treem_dv_img5['service_name']?></a></li>

                                       
                                    </ul>

                                </div>

                            </div>

                        </div>

                        <div class="col-md-7 animated vk-course-right">

                            <div class="right-margin">

                                <div class="tab-right-content-bg"></div>

                                <button class="btn btn-default btn-back">

                                    <i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>

                                <div class="tab-right-content">

                                    <div class="tab-content">

                                        <div class="tab-pane active" id="a">

                                            <div class="row col-md-9">

                                                <div class="tab-pane-left">
                                                    <img src="/images/<?= $home_treem_dv_img['service_img'] ?>" alt="" style="
                                              
    margin: 0 auto;
    display: flex;
   
    height: 415px;
  
    ">

                                                </div>

                                            </div>

                                            <div class="col-md-3">



                                            </div>

                                        </div>

                                        <div class="tab-pane" id="b">

                                            <div class="row col-md-9">

                                                <div class="tab-pane-left">
                                                    <img src="/images/<?= $home_treem_dv_img2['service_img'] ?>" alt="" style="
                                                    
    margin: 0 auto;
    display: flex;
    
    height: 415px;
   
    ">

                                                </div>

                                            </div>

                                            <div class="col-md-3">



                                            </div>

                                        </div>

                                        <div class="tab-pane" id="c">

                                            <div class="row col-md-9">

                                                <div class="tab-pane-left">
                                                    <img src="/images/<?= $home_treem_dv_img3['service_img'] ?>" alt="" style="
                                                    
    margin: 0 auto;
    display: flex;
    
    height: 415px;
   
    ">
                                                    

                                                </div>

                                            </div>

                                            <div class="col-md-3">



                                            </div>

                                        </div>

                                        <div class="tab-pane" id="d">

                                            <div class="col-md-8">

                                                <div class="tab-pane-left">
                                                    <img src="/images/<?= $home_treem_dv_img4['service_img'] ?>" alt="" style="
                                                    
    margin: 0 auto;
    display: flex;
    
    height: 415px;
   
    ">
                                                 

                                                </div>

                                            </div>

                                            <div class="col-md-3">



                                            </div>

                                        </div>

                                        <div class="tab-pane" id="e">

                                            <div class="row col-md-9">

                                                <div class="tab-pane-left">
                                                    <img src="/images/<?= $home_treem_dv_img5['service_img'] ?>" alt="" style="
                                                    
    margin: 0 auto;
    display: flex;
    
    height: 415px;
   
    ">
                                               

                                                </div>

                                            </div>

                                            <div class="col-md-3">



                                            </div>

                                        </div>

                                        <div class="tab-pane" id="f">

                                            <div class="row col-md-9">

                                                <div class="tab-pane-left">
                                                    
                                                

                                                </div>

                                            </div>

                                            <div class="col-md-3">



                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>
</section> -->
<?php // include "template/questionAndAnswer/MS_QUESTIONANDANSWER_LANDINGPAGE1_0003.php";?>
<?php

    $home_list_khoahoc = $action->getList('news', 'newscat_id', '10', 'news_id', 'asc', '', '3', '');

?>
<section id="vk-sap-khai-giang">
    <div class="container">
        <div class="vk-sap-khai-giang-title">
            <h2>Dịch vụ nổi bật</h2>
            
            <div class="title-center">
                <div class="under-line3"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-xs-12">
                <div class="service___box">
                    <img src="/images/anvi_dv_1.jpg" alt="" width="100%">
                    <div class="service___text">
                        <a href=""><h2>Thành lập công ty trọn gói</h2></a>
                    </div>
                    <div class="over">
                        <a href="">
                            <div class="box">
                            <div class="block">
                                <div class="frame">
                                    <strong class="title">Thành lập công ty trọn gói</strong>
                                    <div class="practice-description">Chúng tôi luôn đồng hành cùng quý khách hàng trong lĩnh vực tư vấn pháp luật, pháp lý tuân thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di trú định cư Mỹ - Úc - Canada...
                                    </div>
                                </div>
                            </div>
                        </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12">
                <div class="service___box">
                    <img src="/images/anvi_dv_2.jpg" alt="" width="100%">
                    <div class="service___text">
                        <h2>Thay đổi đăng ký kinh doanh</h2>
                    </div>
                    <div class="over">
                        <a href="/n/giai-quyet-tranh-chap/tu-van-giai-quyet-tranh-chap">
                        <div class="box">
                            <div class="block">
                                <div class="frame">
                                    <strong class="title">Thay đổi đăng ký kinh doanh</strong>
                                     <div class="practice-description">
                                    Chúng tôi luôn đồng hành cùng quý khách hàng trong lĩnh vực tư vấn pháp luật, pháp lý tuân thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di trú định cư Mỹ - Úc - Canada...</div>
                                </div>
                            </div>
                        </div></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12">
                <div class="service___box">
                    <img src="/images/anvi_dv_4.jpg" alt="" width="100%">
                    <div class="service___text">
                        <a href="/n/doanh-nghiep-100-von-nuoc-ngoai/thanh-lap-cong-ty-co-von-dau-tu-nuoc-ngoai-theo-quy-dinh-cua-phap-luat-hien-hanh">
                            <h2>Thủ tục mua bán sát nhập</h2>
                        </a>
                    </div>
                    <div class="over">
                        <a href="/n/doanh-nghiep-100-von-nuoc-ngoai/thanh-lap-cong-ty-co-von-dau-tu-nuoc-ngoai-theo-quy-dinh-cua-phap-luat-hien-hanh">
                        <div class="box">
                            <div class="block">
                                <div class="frame">
                                    <strong class="title">Thủ tục mua bán sát nhập</strong>
                                    <div class="practice-description">Chúng tôi luôn đồng hành cùng quý khách hàng trong lĩnh vực tư vấn pháp luật, pháp lý tuân thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di trú định cư Mỹ - Úc - Canada...
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12">
                <div class="service___box">
                    <img src="/images/anvi_dv_3.jpg" alt="" width="100%">
                    <div class="service___text">
                        <h2>Thủ tục định cư Mỹ</h2>
                    </div>
                    <div class="over">
                        <a href="/n/tu-van-hop-dong/tu-van-phap-luat-thuong-xuyen-1">
                        <div class="box">
                            <div class="block">
                                <div class="frame">
                                    <strong class="title">Thủ tục định cư Mỹ</strong>
                                    <div class="practice-description">
                                        Chúng tôi luôn đồng hành cùng quý khách hàng trong lĩnh vực tư vấn pháp luật, pháp lý tuân thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di trú định cư Mỹ - Úc - Canada...
                                    </div>
                                </div>
                            </div>
                        </div></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12">
                <div class="service___box">
                    <img src="/images/anvi_hd_3.jpg" alt="" width="100%">
                    <div class="service___text">
                        <h2>Tranh chấp quyền thừa kế</h2>
                    </div>
                    <div class="over">
                        <a href="/n/giay-phep-trung-tam-dao-tao/thu-tuc-thanh-lap-trung-tam-dao-tao-ky-nang-mem-2">
                            <div class="box">
                            <div class="block">
                                <div class="frame">
                                    <strong class="title">Tranh chấp quyền thừa kế</strong>
                                    <div class="practice-description">
                                        Chúng tôi luôn đồng hành cùng quý khách hàng trong lĩnh vực tư vấn pháp luật, pháp lý tuân thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di trú định cư Mỹ - Úc - Canada...
                                    </div>
                                </div>
                            </div>
                        </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12">
                <div class="service___box">
                    <img src="/images/anvi_hd_4.jpg" alt="" width="100%">
                    <div class="service___text">
                        <h2>Tranh chấp quyền sử dụng đất</h2>
                    </div>
                    <div class="over">
                        <div class="box">
                            <a href="/n/mua-ban-sap-nhap/sap-nhap-doanh-nghiep">
                                <div class="block">
                                <div class="frame">
                                    <strong class="title">Tranh chấp quyền sử dụng đất</strong>
                                    <div class="practice-description">Chúng tôi luôn đồng hành cùng quý khách hàng trong lĩnh vực tư vấn pháp luật, pháp lý tuân thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di trú định cư Mỹ - Úc - Canada...
                                    </div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--giảng VIÊN-->
<?php //include DIR_TEAM."MS_TEAM_BEACON_0001.php";?>
<!--begin sắp khai giảng-->
<!--video-->
<?php //include DIR_VIDEO."MS_VIDEO_BEACON_0001.php";?>
<!--begin nhjan xét của học viên-->
<?php
    $home_camnhan = $action->getList('cam_nhan', '', '', 'id', 'asc', '', '', '');
?>
<section id="vk-testimonials">
    <div class="overlay"></div>
    <div class="container">
        <div data-wow-delay="0.2s">
            <div class="vk-testimonials-title">
                <h2>Ý KIẾN KHÁCH HÀNG</h2>
            </div>
            <div class="vk-testimonials-border"></div>
            <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                <div class="row">
                    <div class="carousel-inner text-center">
                        <?php
                        $d = 0;
                        foreach ($home_camnhan as $item) {
                            $d++;
                        ?>
                        <div class="item <?= $d==1 ? 'active' : '' ?>">
                            <blockquotes>
                                <div class="row">
                                    <div class="col-sm-10 col-sm-offset-1 vk-testimonials-item">
                                        <p>
                                            <?= $item['note'] ?>
                                        </p>
                                        <small>
                                            <?= $item['name'] ?> - <span>
                                                <?= $item['tu'] ?></span>
                                        </small>
                                    </div>
                                </div>
                            </blockquotes>
                        </div>
                        <?php } ?>
                    </div>
                </div>
                <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
                <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-angle-right" aria-hidden="true"></i></i>
                </a>
            </div>
        </div>
    </div>
</section>
<section id="vk-testimonials">
    <div class="container">
        <div data-wow-delay="0.2s">
            <div class="vk-testimonials-title">
                <h2 class="hpfix0909_5">TÔN CHỈ HOẠT ĐỘNG</h2>
            </div>
            <div class="vk-testimonials-border"></div>
            <div class="carousel slide" data-ride="carousel" id="quote-carousel1">
                <div class="row">
                    <div class="carousel-inner text-center">
                        <div class="item active">
                            <blockquotes>
                                <div class="row">
                                    <div class="col-sm-10 col-sm-offset-1 vk-testimonials-item">
                                        <p class="hpfix0909_7"><br>
                                            Mọi chi phí triển khai công việc luôn được thông báo, thỏa thuận rõ ràng, hợp lý và minh bạch, không phát sinh thêm chi phí.</p>
                                        <small class="hpfix0909_6"><?= $rowConfig['web_name'] ?>
                                        </small>
                                    </div>
                                </div>
                            </blockquotes>
                        </div>
                        <div class="item ">
                            <blockquotes>
                                <div class="row">
                                    <div class="col-sm-10 col-sm-offset-1 vk-testimonials-item">
                                        <p class="hpfix0909_7">
                                            <br>
                                           Luôn bám sát công việc, cập nhật quý Khách hàng thường xuyên và kịp thời. Các tài liệu, giấy tờ, kết quả luôn được giao nhận tận nơi trong các quận nội thành Hà Nội/Tp. HCM</p>
                                        </p>
                                        <small class="hpfix0909_6"><?= $rowConfig['web_name'] ?>
                                        </small>
                                    </div>
                                </div>
                            </blockquotes>
                        </div>
                        <div class="item ">
                            <blockquotes>
                                <div class="row">
                                    <div class="col-sm-10 col-sm-offset-1 vk-testimonials-item">
                                        <p class="hpfix0909_7">
                                            <br>
                                            Khách hàng luôn được lắng nghe, thấu hiểu, được tham vấn đưa ra quyết định tối ưu nhất và hài lòng nhất. Có thể cung cấp tư vấn trực tiếp bằng các ngoại ngữ quốc tế</p>
                                        <small class="hpfix0909_6"><?= $rowConfig['web_name'] ?>
                                        </small>
                                    </div>
                                </div>
                            </blockquotes>
                        </div>
                    </div>
                </div>
                <a data-slide="prev" href="#quote-carousel1" class="left carousel-control"><i style="color: #0087CB " class="fa fa-angle-left"

                                                                                             aria-hidden="true"></i></a>

                <a data-slide="next" href="#quote-carousel1" class="right carousel-control"><i style="color: #0087CB " class="fa fa-angle-right"

                                                                                              aria-hidden="true"></i></i>

                </a>
            </div>
        </div>
    </div>
</section>
<style>
#myDiv {
    /*display: none;*/
    text-align: center;
    padding: 30px;
}
.carousel-control.right, .carousel-control.left{
    background: transparent;
}
#vk-testimonials #quote-carousel1 .carousel-control.right{
    right: -60px;
    color: #CACACA;
    font-size: 30px;
    text-shadow: none;
    margin-top: 30px;
}
#vk-testimonials #quote-carousel1 .carousel-control.left{
    left: -60px;
    color: #CACACA;
    font-size: 30px;
    text-shadow: none;
    margin-top: 30px;
}
.gb-popup-overlay {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 9999;
    -webkit-overflow-scrolling: touch;
    outline: 0;
    background: rgba(0, 0, 0, 0.7);
    display: flex;
    align-items: center;
    justify-content: center;
}

.gb-popup-overlay-content {
    position: fixed;
    width: 853px;
    background: #fff;
    background: url(/images/lanthu2.png);
    background-size: cover;
    z-index: 9999;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    height: 443px;
}

@media screen and (max-width: 500px) {
    .gb-popup-overlay-content {
        /*position: relative;*/
        width: 85%;
        background: #fff;
    }
}

.gb-popup-overlay-content .close_poup {
    width: 40px;
    height: 40px;
    background: red;
    color: #fff;
    position: absolute;
    z-index: 9999999999999;
    right: -26px;
    top: -20px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
}

#myDiv h4 {
    font-size: 24px;
    text-transform: uppercase;
    font-weight: 600;
    color: #000;
    margin-bottom: 30px;
    text-align: center;
}

#myDiv .btn-dangky {
    background: #163c71;
    color: #fff;
    margin-top: 25px;
    height: 45px;
    width: 100%;
    text-transform: uppercase;

}

.form-control {
    border: 1px solid #999;
    height: 45px;
    font-size: 15px;
    padding: 6px 15px;
}
</style>