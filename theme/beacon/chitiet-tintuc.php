<?php 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_news->getNewsLangDetail_byUrl($slug,$lang);
    $row = $action_news->getNewsDetail_byId($rowLang['news_id'],$lang);

    $_SESSION['sidebar'] = 'newsDetail';
// die();




    function extractHeadings( $content ) {

    $matches = array();

    // reset the internal collision collection as the_content may have been triggered elsewhere
    // eg by themes or other plugins that need to read in content such as metadata fields in
    // the head html tag, or to provide descriptions to twitter/facebook
    /** @todo does this need to be used??? */
    //self::$collision_collector = array();

    // $content = apply_filters( 'ez_toc_extract_headings_content', wptexturize( $content ) );

    // get all headings
    // the html spec allows for a maximum of 6 heading depths
    if ( preg_match_all( '/(<h([1-6]{1})[^>]*>)(.*)<\/h\2>/msuU', $content, $matches, PREG_SET_ORDER ) ) {

      // $minimum = absint( ezTOC_Option::get( 'start' ) );

      // $this->removeHeadingsFromExcludedNodes( $matches );
      // $this->removeHeadings( $matches );
      // $this->excludeHeadings( $matches );
      // $this->removeEmptyHeadings( $matches );

      // if ( count( $matches ) >= $minimum ) {

      //   $this->alternateHeadings( $matches );
      //   $this->headingIDs( $matches );
      //   $this->hasTOCItems = true;

      // } else {

      //   return array();
      // }
        // var_dump($matches);

    }

    $headings_find = array();
    foreach ( $matches as $i => $match ) {

        //$anchor     = $matches[ $i ]['id'];
        $headings_find[] = str_replace(
          array(
            $matches[ $i ][1],                // start of heading
            '</h' . $matches[ $i ][2] . '>'   // end of heading
          ),
          array(
            '>',
            '</h' . $matches[ $i ][2] . '>'
          ),
          $matches[ $i ][0]
        );
      }

    // var_dump($headings);
    // var_dump(strip_tags($headings[0]));

      $headings_rep = array();
      foreach ( $matches as $i => $match ) {

        $anchor = strip_tags($matches[$i][0]);
        $anchor     = vi_en1($anchor);
        $anchor = preg_replace("/[^a-zA-Z0-9-]/", "",$anchor);
        $headings_rep[] = str_replace(
          array(
            $matches[ $i ][1],                // start of heading
            '</h' . $matches[ $i ][2] . '>'   // end of heading
          ),
          array(
            '><span class="ez-toc-section" id="' . $anchor . '"></span>',
            '<span class="ez-toc-section-end"></span></h' . $matches[ $i ][2] . '>'
          ),
          $matches[ $i ][0]
        );
      }

      $string = $content;

      for ( $i = 0; $i < count( $headings_find ); $i ++ ) {

        $start  = strpos( $string, $headings_find[ $i ] );
        $length = strlen( $headings_find[ $i ] );

        /*
         * `strpos()` can return `false`. Only process `substr_replace()` if position in string is found.
         */
        if ( is_int( $start ) ) {

          $string = substr_replace( $string, $headings_rep[ $i ], $start, $length );
        }
      }

      // var_dump($headings);

    // return array_values( $matches ); // Rest the array index.
      return $string;
  }
  $content = extractHeadings($rowLang['lang_news_content']);
  // var_dump($a);

  function menu_post ( $content ) {
     if ( preg_match_all( '/(<h([1-6]{1})[^>]*>)(.*)<\/h\2>/msuU', $content, $matches, PREG_SET_ORDER ) ) {}

      $menu = array();
      foreach ( $matches as $i => $match ) {

        $anchor_name = strip_tags($matches[$i][0]);
        $anchor     = vi_en1($anchor_name);
        $anchor_id = preg_replace("/[^a-zA-Z0-9-]/", "",$anchor);

        $menu[] = array(
            'name' => $anchor_name,
            'id' => $anchor_id
        );
      }

      return $menu;
  }

  $menu_post_list = menu_post($rowLang['lang_news_content']);//var_dump($menu_post_list);

?>
<div class="vk-single-blog vk-blog">
    <div class="container-fluid">
        <div class="row">
            <div class="vk-blog-banner">
                <img src="/images/1_sZ8SxNEJekT5clQLYy3OuA.jpg" alt="" class="img-responsive">
               
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-9 vk-single-blog-right">
                <!-- <div class="vk-single-blog-right-img">
                    <img src="/images/<?= $row['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive">
                </div> -->
                <div class="vk-single-blog-right-title">
                    <h2><?= $rowLang['lang_news_name'] ?></h2>
                </div>
                <div class="vk-single-blog-right-info">
                    <ul>
                        <li><i class="fa fa-user" aria-hidden="true"></i><a href="#"> Admin</a></li>
                        <li><i class="fa fa-clock-o" aria-hidden="true"></i><a href="#"> <?= substr($row['news_created_date'], 0, 10) ?></a></li>
                        <li><i class="fa fa-folder-open-o" aria-hidden="true"></i>
                            <a href="<?= $action->getDetail('newscat','newscat_id',$row['newscat_id'])['friendly_url']?>"> 
                            <?= $action->getDetail('newscat','newscat_id',$row['newscat_id'])['newscat_name']?></a></li>
                        <li><i class="fa fa-comment-o" aria-hidden="true"></i><a href="#"> 5 comments</a></li>
                    </ul>
                </div>
                <?php if (count($menu_post_list) != 0) { ?>
                <div class="list-menu-post">
                  
                  <p class="title">Mục lục bài viết</p>
                  
                  <ol>
                  <?php foreach ($menu_post_list as $item) { ?>
                    <li>
                      <a href="#<?= $item['id'] ?>" title="" class="slide-section"><?= $item['name'] ?></a>
                    </li>
                    
                  <?php } ?>
                  </ol>
                </div>
                <?php } ?>
                <div class="vk-single-blog-right-text">
                    <?= $content ?>
                </div>
                 <div class="no-des">    
                    <h4 class="title-grid hpfix1009_2"><?= $rowConfig['web_name'] ?></h4>
                    <p class="hpfix1009_1"><?= $rowConfig['web_email'] ?></p>
                    <div class="grid-container">

                  <div class="s1">
                      <img src="/images/<?= $rowConfig['web_logo'] ?>" alt="" width="100%">
                  </div>
                  <div class="s2">
                      <h3>Hotline </h3>
                        <a href="tel:<?= $rowConfig['content_home3'] ?> ">
                            <?= $rowConfig['content_home3'] ?> 
                        </a>                         

                  </div>
                  <div class="s3">
                      <h3>Email  </h3>
                        <a href="">
                            <?= $rowConfig['content_home2'] ?> 
                        </a>
                         
                  </div>
                  <div class="s4">
                      <img src="/images/<?= $rowConfig['web_logo'] ?>" alt="" width="50%">
                  </div>
                  <div class="s5"></div>
                  <div class="s6">
                        <h2>  
                            <a href="tel:0981214789">Công ty luật uy tín hàng đầu - Tư vấn luật miễn phí</a> <br>  <span> Kết nối với chúng tôi với bất cứ kênh nào bạn thuận tiện nhất (Zalo, viber, wechat, telegram,...)</span>
                        </h2>   
                  </div>
                  <div class="s7"></div>
                </div>

                    </div>  
                <div class="vk-single-blog-share">
                    <div class="row">
                        <div class="col-md-5 vk-single-blog-share-left">
                            <ul>
                                <li><a href="#">Finance</a></li>
                                <li><a href="#">Business</a></li>
                                <li><a href="#">Photo</a></li>
                            </ul>
                        </div>
                        <div class="col-md-5 col-md-offset-2 vk-single-blog-share-right">
                            <ul>
                                <li><span><i class="fa fa-share-alt" aria-hidden="true"></i> share</span></li>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <?php include_once "template/news/LUAT_NEWS_0001.php"; ?>
                <?php include_once "template/email/MS_EMAIL_BEACON_0001.php"; ?>
            </div>
            <div class="col-md-3 vk-blog-left">
                <?php include "template/sideBar/MS_SIDEBAR_BEACON_0001.php"; ?>
            </div>
        </div>
    </div>
</div>
<script src="/plugin/sticky/jquery.sticky.js"></script>
<script>
    $(document).ready(function () {
        var headerHeight = $('.gb-main-menu_ldpvinhome').outerHeight();

        $('.slide-section').click(function () {
            var linkHref = $(this).attr('href');
            $('html, body').animate({
                scrollTop: $(linkHref).offset().top - headerHeight
            }, 1000);
            e.preventDefault();
        });

        $(".sticky-menu").sticky({topSpacing:0});
    });
</script>