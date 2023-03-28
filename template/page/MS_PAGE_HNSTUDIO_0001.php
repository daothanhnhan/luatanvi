<?php 

     $action_page = new action_page(); 

    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';



    $rowLang = $action_page->getPageLangDetail_byUrl($slug,$lang);

    $row = $action_page->getPageDetail_byId($rowLang['news_id'],$lang);

    $_SESSION['sidebar'] = 'pageDetail';

?>

<div class="gb-page-gioithieu">

    <?php include DIR_BREADCRUMBS."MS_BREADCRUMS_HNSTUDIO_0001.php";?>

    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                 <div class="gb-page-gioithieu-right">

            <h2 class="title-gt"><?= $rowLang['lang_page_name'] ?></h2>

            <?= $rowLang['lang_page_content'] ?>

        </div>
            </div>
            <div class="col-sm-3 vk-blog-left">

                <?php include "template/sideBar/MS_SIDEBAR_BEACON_0001.php"; ?>

            </div>
       

         </div>
  </div>

</div>
