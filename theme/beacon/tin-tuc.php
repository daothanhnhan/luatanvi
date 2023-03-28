
<?php
if (isset($_GET['slug']) && $_GET['slug'] != '') {
    $slug = $_GET['slug'];//echo 'tuan';die;
    $rowCatLang = $action_news->getNewsCatLangDetail_byUrl($slug,$lang);
    $rowCat = $action_news->getNewsCatDetail_byId($rowCatLang[$nameColIdNewsCat_newsCatLanguage],$lang);
    //var_dump();
    if (newsCatPageHasSub) {
        $rows = $action_news->getNewsList_byMultiLevel_orderNewsId($rowCat[$nameColId_newsCat],'desc',$trang,6,$slug);//var_dump($rows);
    } else {
        $rows = $action_news->getNewsCat_byNewsCatIdParentHighest($rowCat[$nameColId_newsCat],'desc');
    }
}
else $rows = $action->getList($nameTable_news,'','',$nameColId_news,'desc',$trang,6,'tin-tuc');

if($rowCat['newscat_parent'] != 95 || true){
    // echo 'a';
  include "template/news/VTRADER_NEWS_0001.php";
  
}
else {
    echo 'b';
  include "template/news/VTRADER_NEWS_0002_1.php";
  
}

?>
