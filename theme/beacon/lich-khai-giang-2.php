<?php 
    $lich_khaigiang = $action->getList('bang_khoa_hoc', '', '', 'id', 'asc', '', '', '');
?>
<div class="vk-lich-khai-giang-2">
    <div class="container-fluid">
        <div class="row">
            <div class="vk-khai-giang-2-banner">
                <img src="images/dangky/banner.jpg" alt="" class="img-responsive">
                
            </div>
        </div>
    </div>

    <div class="container">
        <div class="vk-khai-giang-2-header">
            <!-- <h3>HOMESTAY ENGLISH</h3> -->
            <h2>LỊCH KHAI GIẢNG CÁC KHÓA HỌC</h2>
            <div class="vk-khai-giang-2-line"></div>
        </div>
        <div class="vk-custyle table-responsive">
            <table class="table table-striped custab ">
                <thead>
                <tr>
                    <th>KHÓA HỌC</th>
                    <th>KHAI GIẢNG</th>
                    <th>THỜI LƯỢNG</th>
                    <th>THỜI GIAN HỌC</th>
                    <th>ĐẦU TƯ</th>
                    <th>ĐĂNG KÍ</th>
                </tr>
                </thead>
                <?php foreach ($lich_khaigiang as $item) { ?>
                <tr>
                    <td><a href=""><?= $item['name'] ?></a></td>
                    <td><h5><?= date('d/m/Y', strtotime($item['ngay'])) ?></h5></td>
                    <td>
                        <p><?= str_replace("\r\n", "<br>", $item['thoi_luong']) ?></p>
                    </td>
                    <td>
                        <p><?= str_replace("\r\n", "<br>", $item['thoi_gian']) ?></p>
                    </td>
                    <td ><h4><?= number_format($item['price']) ?></h4></td>
                    <td ><a href="/dang-ky"><span>ĐĂNG KÝ NGAY</span></a></td>
                </tr>
                <?php } ?>
            </table>
        </div>
    </div>
</div>