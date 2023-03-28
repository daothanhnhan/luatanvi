<?php 
    $home_video = $action->getList('video', '', '', 'id', 'asc', '', '2', '');
?>
<div class="gb-video-beacon">
	<div class="container">
		<div class="vk-our-staffs-title">
            
            <h2>Video Luật Pháp</h2>
            <h3>VIDEO</h3>
            <div class="title-center">
                        <div class="under-line3"></div>
                    </div>
        </div>
        <div class="row">
            <?php 
            $d = 0;
            foreach ($home_video as $item) {
                $d++;
                
            ?>
        	<div class="col-md-6 video-item">
        		<?= $item['content'] ?>
        	</div>
        	<?php } ?>
        </div>
	</div>
</div>