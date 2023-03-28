<div class="vk-blog-left-search">
<h1>Tìm Kiếm</h1>
<form action="/tim-kiem" method="post">
    <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="Search...">
        <span class="input-group-btn">
            <button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
        </span>
    </div>
</form>
</div>
<!-- <div class="vk-blog-left-ifreme" style="margin: 30px 0;">
<iframe src="https://www.currency.me.uk/remote/CUK-LFOREXRTICKER-2.php?ws=http://nhatkyforex.com/&amp;w=370&amp;s=2&amp;f=verdana&amp;fc=000044&amp;fs=10px&amp;mbg=f0f0f0&amp;bs=no&amp;bc=000044&amp;vc=000044&amp;lc=000044&amp;lhc=fe9a00" width="100%" height="37" frameborder="0" scrolling="no" marginwidth="0" marginheight="0"></iframe>

<iframe name="myfxbook_market" width="100%" height="290" scrolling="no" frameborder="0" allowtransparency="true" hspace="0" vspace="0" marginheight="0" marginwidth="0" src="http://widgets.myfxbook.com/widgets/market.html"></iframe>
</div> -->
<?php
    $sidebar_news = $action_news->getNewsCat_byNewsCatIdParent(0, 'desc');
?>
<!-- <a href="https://multibankfx.com/vi/account/live-account?company_id=3&ibName=333127122"><img src="/images/MultiBank 1-Gif.gif" width="88%" height="auto" /></a> -->
<div class="vk-blog-left-category">
    <h1>Danh mục</h1>
    <ul>
        <?php
        foreach ($sidebar_news as $item) {
            $rowLang = $action_news->getNewsCatLangDetail_byId($item['newscat_id'],$lang);
        ?>
        <li><a href="/n/<?= $rowLang['friendly_url'] ?>"><span class="ti-angle-right"></span> <?= $rowLang['lang_newscat_name'] ?></a></li>
        <?php } ?>
    </ul>
</div>
<?php
    $sidebar_news_new = $action_news->getListNewsNew_hasLimit(4);//var_dump($sidebar_news_new);
?>
<div class="vk-blog-left-recent-posts">
    <h1>Bài viết mới nhất</h1>
    <ul>
        <?php
        foreach ($sidebar_news_new as $item) {
            $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang);
            
            $danh_muc = $action->getDetail('newscat', 'newscat_id', $item['newscat_id']);
            if (empty($danh_muc)) {
                $danh_muc['friendly_url'] = 'danh-muc-tin-tuc';
            }
        ?>
        <li>
            <div class="vk-item-recent-posts">
                <div class="vk-item-recent-posts-img">
                    <a href="/n/<?= $danh_muc['friendly_url'] ?>/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="new"></a>
                </div>
                <div class="vk-item-recent-posts-text">
                    <h2><a href="/n/<?= $danh_muc['friendly_url'] ?>/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a></h2>
                    <div class="vk-item-recent-post-time">
                        <span><i class="fa fa-calendar" aria-hidden="true"></i> <?= substr($item['news_created_date'], 0, 10) ?></span>
                    </div>
                </div>
            </div>
        </li>
        <?php } ?>
    </ul>
</div>

<!-- <div class="vk-blog-left-tags">
    <h1>TAGS</h1>
    <ul>
        <li><a href="#">Vnskills</a></li>
        <li><a href="#">Graphic</a></li>
        <li><a href="#">Design</a></li>
        <li><a href="#">UI/UX</a></li>
        <li><a href="#">Web Design</a></li>
        <li><a href="#">Solution</a></li>
        <li><a href="#">Đồ Họa</a></li>
    </ul>
</div> -->
