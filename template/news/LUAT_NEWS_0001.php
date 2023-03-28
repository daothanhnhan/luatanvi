<?php 
	$news_relate = $action->getList('news', 'newscat_id', $row['newscat_id'], 'news_id', 'desc', '', '3', '');
?>
<div class="row hidden-xs hidden-sm news-relate">
	<p class="tin-tuc-lien-quan">Tin Tức Liên Quan</p>
	<?php foreach($news_relate as $item) { ?>
	<div class="col-md-4">
		<a href="/<?= $item['friendly_url'] ?>" title=""><img src="/images/<?= $item['news_img'] ?>" alt="<?= $item['news_name'] ?>" width="100%"></a>
		<p><a href="/<?= $item['friendly_url'] ?>" title=""><?= $item['news_name'] ?></a></p>
	</div>
	<?php } ?>
</div>