<?php
  
    $blog = $action_news ->getNewsCat_byNewsCatIdParentHighest(95,'asc');
    //var_dump($blog);
?>
<div class="vk-blog">

    <div class="container-fluid">
        <div class="row">
            <div class="vk-blog-banner">
                <img src="/images/1_sZ8SxNEJekT5clQLYy3OuA.jpg" alt="" class="img-responsive">
                <h2><?= $title ?></h2>
            </div>
        </div>
    </div>

    <div class="container blog">
        <div class="row">
            <div class="col-md-3 vk-blog-left">
              <?php include "template/sideBar/MS_SIDEBAR_BEACON_0003.php"; ?>
            </div>
            <div class="col-md-6 vk-blog-right">
                <div class="row">
                    <?php
                    $d = 0;
                    foreach ($blog as $item) {
                        $d++;
                        $rowLang = $action_news->getNewsCatDetail_byId($item,$lang);
                        //var_dump($rowLang);
                    ?>
                    <div class="col-md-12">
                        <!-- <div class="col-md-8" style="padding:0px;"> -->
                          <div class="vk-blog-right-item">
                              <div class="col-md-1" style="padding:0">
                                <img src="/images/node-sprited.png" alt="" width="100%">
                              </div>
                              <div class="col-md-10">
                                <div class="vk-blog-right-item-text">
                                    <div class="vk-blog-right-item-title">

                                        <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['newscat_name'] ?></a></h3>

                                    </div>
                                    <div class="vk-blog-right-item-text-des">
                                        <p><?= $rowLang['newscat_des'] ?></p>
                                        <p id="topic-count">Chủ đề: 200</p>
                                    </div>

                                </div>
                              </div>

                          </div>

                      
                    </div>
                    <hr style="border:1px dashed #ccc">
                    <?php

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
                <?php include "template/sideBar/MS_SIDEBAR_BEACON_0002.php"; ?>
            </div>
        </div>
    </div>
</div>
