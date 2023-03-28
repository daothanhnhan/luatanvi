<?php
if ($_GET['page'] == 'n' || $_GET['page'] == 'page') {
    $_GET['page'] = $_GET['trang'];
}
if (isset($_GET['search'])) {
    $_GET['page'] = $_GET['search'];
}
//phpinfo();die;

session_start();

ob_start();

$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

$folder = dirname(__FILE__);

include_once('config.php');

include_once('__autoload.php');

$action = new action();

include_once dirname(__FILE__).DIR_FUNCTIONS."database.php";

// $urlAnalytic = $action->showabc();

include_once dirname(__FILE__).DIR_FUNCTIONS_PAGING."pagination.php";

include_once 'functions/phpmailer/class.smtp.php';

include_once 'functions/phpmailer/class.phpmailer.php';

include_once "functions/vi_en.php";

// // LÀM RÕ NHỮNG THƯ VIỆN NÀY

// // include_once('lib/vi_en.php');

// // include_once('lib/nganLuong/NL_Checkoutv3.php');



// // LÀM RÕ Install Cart



// Install MultiLanguage

include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE."lang_config.php";

include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE.$lang_file;

// Install Friendly Url

include_once dirname(__FILE__).DIR_FUNCTIONS_URL."url_config.php";

// Configure Website

include_once dirname(__FILE__).DIR_FUNCTIONS."website_config.php";

// echo $translate['link_contact'];die;

$trang = isset($_GET['trang']) ? $_GET['trang'] : '1';

// $action = new action();

$cart = new action_cart();

$menu = new action_menu();

$action_product = new action_product();

$action_news = new action_news();

$action_page = new action_page();

$action_service = new action_service();

if($lang == "vn"){

    $rowConfig_lang = $action->getDetail('config_languages','id',1);

}else{

    $rowConfig_lang = $action->getDetail('config_languages','id',2);

}





$rowConfig = $action->getDetail('config','config_id',1);

?>

<!doctype html>

<html lang="en" xmlns="http://www.w3.org/1999/html">

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">



    <!-- <title>BEACON ENGLISH</title> -->



    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <meta name="description" content="<?= $meta_des ?>">

    <meta name="keywords" content="<?= $meta_key ?>">
    <meta id="meta_topic_id" property="og:id" content="1139">

    <?php
    if ($urlAnalytic == 'news_languages' && isset($_GET['page'])) {
      $slug = isset($_GET['slug']) ? $_GET['slug'] : '';
      $rowLang = $action_news->getNewsLangDetail_byUrl($slug,$lang);
      $row = $action_news->getNewsDetail_byId($rowLang['news_id'],$lang);
    ?>
    <meta property="og:image" content="<?= $action->curPageURL() ?>/images/<?= $row['news_img'] ?>" />
    <?php } elseif ($urlAnalytic == 'page_language' && isset($_GET['page'])) {
      $slug = isset($_GET['slug']) ? $_GET['slug'] : '';
      $rowLang = $action_page->getPageLangDetail_byUrl($slug,$lang);
      $row = $action_page->getPageDetail_byId($rowLang['page_id'],$lang);
    ?>
    <meta property="og:image" content="<?= $action->curPageURL() ?>/images/<?= $row['page_img'] ?>" />
    <?php } else { ?>
    <meta property="og:image" content="<?= $action->curPageURL() ?>/images/VTraderLogo.jpg" />
    <?php } ?>
    <title><?= $title ?></title>

    <link rel="icon" href="/images/<?= $rowConfig['icon_web'] ?>" type="image/gif" sizes="16x16">

    <!-- Latest compiled and minified CSS -->

    <link rel="stylesheet" href="/css/bootstrap.min.css">

    <link rel="stylesheet" href="/css/animate.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" id="themify-icons-css" href="/css/themify-icons.css" type="text/css" media="all">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">

<!--    <link rel="stylesheet" href="css/isotope-docs.css">-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- <link rel="stylesheet" href="css/style.css"> -->

    <!--    font open san-->

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"

          rel="stylesheet">



<!--    font RELAWWAY-->

    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!--    OWL-CSSS-->

    <!--    <link rel="stylesheet" href="css/owl.carousel.css">-->

    <!--    <link rel="stylesheet" href="css/owl.theme.css">-->



    <link rel="stylesheet" href="/dist/assets/owl.carousel.min.css">

    <link rel="stylesheet" href="/dist/assets/owl.theme.default.min.css">



    <!-- Latest compiled and minified JavaScript -->

    <link rel="stylesheet" href="/css/style.css">

</head>

<body>


<?php include_once dirname(__FILE__).DIR_THEMES."header.php";?>

<?php

    if (isset($_GET['page'])){



        $urlAnalytic = $action->getTypePage_byUrl($_GET['page'],$lang);

        //echo $urlAnalytic;

        switch ($urlAnalytic) {



            case 'tin-tuc':

                $title = 'Tin tức';

                include_once dirname(__FILE__).DIR_THEMES."tin-tuc.php"; break;



            case 'newscat_languages':

                include_once dirname(__FILE__).DIR_THEMES."tin-tuc.php"; break;



            case 'search-news':

                include_once dirname(__FILE__) . DIR_THEMES . "search-news.php";break;


            case 'tim-kiem':

                include_once dirname(__FILE__) . DIR_THEMES . "search-news.php";break;



            case 'news_languages':



                include_once dirname(__FILE__).DIR_THEMES."chitiet-tintuc.php"; break;

            case 'lien-he':

                $title = 'Liên hệ';

                include_once dirname(__FILE__).DIR_THEMES."lien-he.php"; break;



            case 'gio-hang':



                include_once dirname(__FILE__).DIR_THEMES."giohang.php"; break;



            case 'khuyen-mai':



                include_once dirname(__FILE__).DIR_THEMES."khuyenmai.php"; break;

            case 'san-pham':

                $title = 'Sản phẩm';

                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;



            case 'productcat_languages':

                include_once dirname(__FILE__) . DIR_THEMES . "sanpham.php";break;



            case 'search-product':

                include_once dirname(__FILE__) . DIR_THEMES . "search-product.php";break;



            case 'price':

                include_once dirname(__FILE__) . DIR_THEMES . "price.php";break;



            case 'hang-thanh-ly':



                include_once dirname(__FILE__).DIR_THEMES."hangthanhly.php"; break;



            case 'thanh-toan':



                include_once dirname(__FILE__).DIR_THEMES."cart-payment.php"; break;

            case 'product_languages':



                include_once dirname(__FILE__).DIR_THEMES."chitietsanpham.php"; break;

            case 'huong-dan-dat-hang':



                include_once dirname(__FILE__).DIR_THEMES."huongdanmuahang.php"; break;

            case 'huong-dan-thanh-toan':



                include_once dirname(__FILE__).DIR_THEMES."cachthucthanhtoan.php"; break;



            case 'chinh-sach-van-chuyen':



                include_once dirname(__FILE__).DIR_THEMES."chinhsachvanchuyen.php"; break;

            case 'page_language':



                include_once dirname(__FILE__).DIR_THEMES."gioithieu.php"; break;



            case 'lich-khai-giang':

                include_once dirname(__FILE__) . DIR_THEMES . "lich-khai-giang-2.php";break;



            case 'service_languages':

                include_once dirname(__FILE__) . DIR_THEMES . "course_1.php";break;



            case 'dang-ky':

                include_once dirname(__FILE__) . DIR_THEMES . "dangky.php";break;

            case 'blog-1':

                include_once dirname(__FILE__) . DIR_THEMES . "blog.php";break;

            case 'lich-day':

                include_once dirname(__FILE__) . DIR_THEMES . "lichday.php";break;



            case 'giang-vien':

                include_once dirname(__FILE__) . DIR_THEMES . "giang-vien.php";break;

            case 'cam-on':
                include_once dirname(__FILE__) . DIR_THEMES . "cam-on.php";break;

        }

    }

    else include_once dirname(__FILE__).DIR_THEMES."home.php";

    ?>



<?php include_once dirname(__FILE__).DIR_THEMES."footer.php"; ?>

<div class="social-button">
    
       
    <!-- <a class="user-support" href="http://zalo.me/0846879799">
      <i aria-hidden="true">  <img src="/images/zalo111111.png" style="width:29px;"></i>

      <span>Zalo:  0846879799</span>
      <div class="animated alo-circle"></div>
      <div class="animated alo-circle-fill"></div>
    </a> -->
  </div>



 <a href="tel:0981214789" class="suntory-alo-phone suntory-alo-green" id="suntory-alo-phoneIcon" style="left: 0px; bottom: -25px;">
  <div class="suntory-alo-ph-circle"></div>
  <div class="suntory-alo-ph-circle-fill"></div>
  <div class="suntory-alo-ph-img-circle"><i class="fa fa-phone"></i></div>
</a> 

<script>
    var myVar;

    function myFunction() {
        myVar = setTimeout(showPage);
    }

    function showPage() {
        document.getElementById("loader").style.display = "none";
        document.getElementById("myDiv").style.display = "block";
    }
    $(document).ready(function(){
        $('.close_poup').click(function(){
            $('.gb-popup-overlay').css('display','none');
            $('.gb-popup-overlay-content').css('display','none');
        });
        $('.gb-popup-overlay').click(function(){
            $('.gb-popup-overlay-content').css('display','none');
            $(this).css('display','none');
        })
    });
</script>

</body>

</html>

  <style>
    .social-button{
      display: inline-grid;
        position: fixed;
        bottom: 99px;
        right: 2%;
        min-width: 45px;
        text-align: center;
        z-index: 99999;
    }
    .social-button-content{
      display: inline-grid;   
    }
    .social-button a {padding:8px 0;cursor: pointer;position: relative;}
    .social-button i{
      width: 40px;
        height: 40px;
        background: #43a1f3;
        color: #fff;
        border-radius: 100%;
        font-size: 20px;
        text-align: center;
        line-height: 1.9;
        position: relative;
        z-index: 999;
    }
    .social-button span{
      display: none;
    }
    .alo-circle {
        animation-iteration-count: infinite;
        animation-duration: 1s;
        animation-fill-mode: both;
        animation-name: zoomIn;
        width: 50px;
        height: 50px;
        top: 3px;
        right: -3px;
        position: absolute;
        background-color: transparent;
        -webkit-border-radius: 100%;
        -moz-border-radius: 100%;
        border-radius: 100%;
        border: 2px solid rgba(30, 30, 30, 0.4);
        opacity: .1;
        border-color: #0089B9;
        opacity: .5;
    }
    .alo-circle-fill {
      animation-iteration-count: infinite;
      animation-duration: 1s;
      animation-fill-mode: both;
      animation-name: pulse;
        width: 60px;
        height: 60px;
        top: -2px;
        right: -8px;
        position: absolute;
        -webkit-transition: all 0.2s ease-in-out;
        -moz-transition: all 0.2s ease-in-out;
        -ms-transition: all 0.2s ease-in-out;
        -o-transition: all 0.2s ease-in-out;
        transition: all 0.2s ease-in-out;
        -webkit-border-radius: 100%;
        -moz-border-radius: 100%;
        border-radius: 100%;
        border: 2px solid transparent;
        background-color: rgba(0, 175, 242, 0.5);
        opacity: .75;
    }
    .call-icon:hover > span, .mes:hover > span, .sms:hover > span, .zalo:hover > span{display: block}
    .social-button a span {
        border-radius: 2px;
        text-align: center;
        background: rgb(103, 182, 52);
        padding: 9px;
        display: none;
        width: 180px;
        margin-left: 10px;
        position: absolute;
        color: #ffffff;
        z-index: 999;
        top: 9px;
        left: 40px;
        transition: all 0.2s ease-in-out 0s;
        -moz-animation: headerAnimation 0.7s 1;
        -webkit-animation: headerAnimation 0.7s 1;
        -o-animation: headerAnimation 0.7s 1;
        animation: headerAnimation 0.7s 1;
    }
    @-webkit-keyframes "headerAnimation" {
        0% { margin-top: -70px; }
        100% { margin-top: 0; }
    }
    @keyframes "headerAnimation" {
        0% { margin-top: -70px; }
        100% { margin-top: 0; }
    }
    .social-button a span:before {
      content: "";
      width: 0;
      height: 0;
      border-style: solid;
      border-width: 10px 10px 10px 0;
      border-color: transparent rgb(103, 182, 52) transparent transparent;
      position: absolute;
      right: -10px;
      top: 10px;
    }
  </style>
