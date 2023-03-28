<?php   
   $limit = 6;

    function search ($lang, $trang, $limit) {
        if (isset($_POST['q'])) {
            $q = $_POST['q'];
            $q = trim($q);
            $q = vi_en1($q);//var_dump($q);
            $_SESSION['tim_kiem'] = $q;
        } else {
            // if (isset($_GET['search'])) {
            //     $q = $_GET['search'];
            // } else {
            //     $q = '';
            // }
            $q = $_SESSION['tim_kiem'];
            
            // $q = str_replace('-', ' ', $q);
        }

        $start = ($trang-1) * $limit;
        global $conn_vn;
        $sql = "SELECT * FROM news_languages INNER JOIN news ON news_languages.news_id = news.news_id WHERE news_languages.friendly_url like '%$q%' And news_languages.languages_code = '$lang' ORDER BY news.news_id DESC";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $count = mysqli_num_rows($result);

        $sql = "SELECT * FROM news_languages INNER JOIN news ON news_languages.news_id = news.news_id WHERE news_languages.friendly_url like '%$q%' And news_languages.languages_code = '$lang' ORDER BY news.news_id DESC LIMIT $start,$limit";
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $rows[] = $row;
        }
        $return = array(
                'data' => $rows,
                'count' => $count,
                'q' => $q
            );
        return $return;
    }

    $link_all = $_SERVER['REQUEST_URI'];
    if (strpos($link_all, '?') === false) {
        $trang = 1;
    } else {
        $link_all_arr = explode('?', $link_all);
        $trang = substr($link_all_arr[1], 5);
    }
    $rows = search($lang, $trang, $limit);//var_dump($rows);die;
?>
<div class="vk-blog">

    <div class="container-fluid">
        <div class="row">
            <div class="vk-blog-banner">
                <img src="/images/dangky/banner.jpg" alt="" class="img-responsive">
                <h2><?= $title ?></h2>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-8 vk-blog-right">
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
                                    <button type="button" class="btn vk-btn-readmore">ĐỌC TIẾP</button>
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
                <div style="text-align: center;"><?php 
                    $config = array(
                        'current_page'  => $trang, // Trang hiện tại
                        'total_record'  => $rows['count'], // Tổng số record
                        'total_page'    => 1, // Tổng số trang
                        'limit'         => $limit,// limit
                        'start'         => 0, // start
                        'link_full'     => '',// Link full có dạng như sau: domain/com/page/{page}
                        'link_first'    => '',// Link trang đầu tiên
                        'range'         => 9, // Số button trang bạn muốn hiển thị 
                        'min'           => 0, // Tham số min
                        'max'           => 0,  // tham số max, min và max là 2 tham số private
                        'search'        => str_replace(' ', '-', $rows['q'])

                    );

                    $pagination = new Pagination;
                    $pagination->init($config);
                    echo $pagination->htmlPaging2();
                ?></div>
            </div>
            <div class="col-md-4 vk-blog-left">
                <?php include "template/sideBar/MS_SIDEBAR_BEACON_0001.php"; ?>
            </div>
        </div>
    </div>
</div>