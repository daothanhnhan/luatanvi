<?php
    $link_all = $_SERVER['REQUEST_URI'];
    if (strpos($link_all, '?') === false) {

    } else {
        $link_all_arr = explode('?', $link_all);
        $trang = substr($link_all_arr[1], 5);
    }
    //////
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];//echo 'tuan';die;
        $rowCatLang = $action_news->getNewsCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_news->getNewsCatDetail_byId($rowCatLang[$nameColIdNewsCat_newsCatLanguage],$lang);
        if (newsCatPageHasSub) {
            $rows = $action_news->getNewsList_byMultiLevel_orderNewsId($rowCat[$nameColId_newsCat],'desc',$trang,6,$slug);//var_dump($rows);
        } else {
            $rows = $action_news->getNewsCat_byNewsCatIdParentHighest(76,'desc');//var_dump($rows);die;
        }
    }
    else $rows = $action->getList($nameTable_news,'','',$nameColId_news,'desc',$trang,6,'tin-tuc');
    // var_dump($rows);die;
    // $count -> $action_news ->countBL('c')
?>
<style>
.vk-blog-right-item-text-des p span {
    font-family: 'Open Sans', serif !important;
    color: #000;
}
</style>
<div class="vk-blog">

    <div class="container-fluid">
        <div class="row">
            <div class="vk-blog-banner">
                <img src="/images/1_sZ8SxNEJekT5clQLYy3OuA.jpg" alt="" class="img-responsive">
                
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-9 vk-blog-right">
                <div class="row">
                    <?php
                    $d = 0;
                    foreach ($rows['data'] as $item) {
                        $d++;
                        $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang);

                        $danh_muc = $action->getDetail('newscat', 'newscat_id', $item['newscat_id']);
                        if (empty($danh_muc)) {
                            $danh_muc['friendly_url'] = 'danh-muc-tin-tuc';
                        }
                    ?>
                    <div class="col-md-6">
                        <div class="vk-blog-right-item">
                            <div class="vk-blog-right-item-img">
                                <a href="/n/<?= $danh_muc['friendly_url'] ?>/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive"></a>
                                <div class="caption caption-large">
                                    <time class="the-date"><?= substr($item['news_created_date'], 0, 10) ?></time>
                                </div>
                            </div>
                            <div class="vk-blog-right-item-text">
                                <div class="vk-blog-right-item-title">
                                    <h3><a href="/n/<?= $danh_muc['friendly_url'] ?>/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a></h3>
                                </div>
                                <div class="vk-blog-right-item-text-des">
                                    <p><?= $rowLang['lang_news_des'] ?></p>
                                </div>
                            </div>
                            <div class="vk-blog-right-item-button">
                                <a href="/n/<?= $danh_muc['friendly_url'] ?>/<?= $rowLang['friendly_url'] ?>">
                                    <button type="button" class="btn vk-btn-readmore">Đọc tiếp</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    <?php
                    if ($d%2==0) {
                        echo '<hr style="width:100%;border:0;" />';
                    }
                    } ?>
                </div>
                <!-- <div class="vk-blog-pagination">
                    <ul class="vk-pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li class="vk-active"><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
                            </a>
                        </li>
                    </ul>
                </div> -->
                <div style="text-align: center;"><?= $rows['paging'] ?></div>
            </div>
            <div class="col-md-3 vk-blog-left">
                <?php include "template/sideBar/MS_SIDEBAR_BEACON_0001.php"; ?>
            </div>
        </div>
    </div>
</div>
