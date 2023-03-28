<?php

if (isset($_GET['slug']) && $_GET['slug'] != '') {
    $slug = $_GET['slug'];//echo 'tuan';die;
    $rowCatLang = $action_news->getNewsCatLangDetail_byUrl($slug,$lang);
    $rowCat = $action_news->getNewsCatDetail_byId($rowCatLang[$nameColIdNewsCat_newsCatLanguage],$lang);
    if (newsCatPageHasSub) {
        $rows = $action_news->getNewsList_byMultiLevel_orderNewsId($rowCat[$nameColId_newsCat],'desc',$trang,6,$slug);
    } else {
        $rows = $action_news->getNewsCat_byNewsCatIdParentHighest($rowCat[$nameColId_newsCat],'desc');//var_dump($rows);die;
    }
}
else $rows = $action->getList($nameTable_news,'','',$nameColId_news,'desc',$trang,6,'tin-tuc');
?>
<div class="vk-blog">

    <!-- <div class="container-fluid">
        <div class="row">
            <div class="vk-blog-banner">
                <img src="/images/1_sZ8SxNEJekT5clQLYy3OuA.jpg" alt="" class="img-responsive">
             
            </div>
        </div>
    </div> -->

    <div class="container blog">
        <div class="row">
            <div class="col-md-3 vk-blog-left">
              <?php include "template/sideBar/MS_SIDEBAR_BEACON_0003.php"; ?>
            </div>
            <div class="col-md-6 vk-blog-right">
                <div class="row">
                    <table style="width:100%">
                      <tr>
                        <th style="width:80%;">Title</th>
                        <th>View</th>

                      </tr>
                      <?php
                      $d = 0;
                      foreach ($rows['data'] as $item) {
                          $d++;
                          $rowLang = $action_news->getNewsDetail_byId($item['news_id'],$lang);

                      ?>
                      <tr>
                        <td><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['news_name'] ?></a></td>
                        <td>(123 lượt xem)</td>

                      </tr>
                      <?php

                      } ?>
                    </table>


                    <!-- <hr style="border:1px dashed #ccc"> -->

                </div>

                <div style="text-align: center;"><?= $rows['paging'] ?></div>
            </div>
            <div class="col-md-3 vk-blog-left">
                <?php include "template/sideBar/MS_SIDEBAR_BEACON_0002.php"; ?>
            </div>
        </div>
    </div>
</div>
