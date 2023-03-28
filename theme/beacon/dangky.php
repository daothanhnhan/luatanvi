<?php

    function dangky () {

        global $conn_vn;

        if (isset($_POST['dangky'])) {

             // var_dump($_POST);

            $name = $_POST['name'];

            $day = $_POST['day'];

            $month = $_POST['month'];

            $year = $_POST['year'];

            $date = $day.'-'.$month.'-'.$year;

            $sex = $_POST['sex'];

            $phone = $_POST['phone'];

            $email = $_POST['email'];

            $course = $_POST['course'];

            $address = $_POST['address'];

            $where = $_POST['where'];

            $note = $_POST['note'];

            $know = $_POST['know'];

            $skype = '';



            $sql = "INSERT INTO dang_ky_online (name, birthday, sex, phone, email, course, address, `where`, note, know, skype) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            $stmt = $conn_vn->prepare($sql);

            $stmt->bind_param("ssissssssss", $name, $date, $sex, $phone, $email, $course, $address, $where, $note, $know, $skype);

            $stmt->execute();

            echo '<script type="text/javascript">alert(\'Bạn đăng ký thành công.\');</script>';

        }

    }

    dangky();

?>



<div class="vk-dang-ky">

    <div class="container-fluid">

        <div class="row">

            <div class="vk-dang-ky-banner">

                <img src="images/dangky/banner.jpg" alt="" class="img-responsive">

                <h3>ĐĂNG KÝ</h3>

            </div>

        </div>

    </div>





    <div class="container">

        <div class="row">

            <div class="col-md-6">

                <div class="vk-dang-ky-right">

                    <div class="vk-dang-ky-right-1">

                        <h2>Luật Gia Phát</h2>

                        <!-- <h4>Trung tâm đào tạo tiếng anh Trung tâm Ngoại ngữ - <span>Tin học Việt Nhật Hàn</span></h4> -->

                        <p>

                            Địa chỉ:  <?= $rowConfig['content_home1'] ?><br>

                            ĐT:  <?= $rowConfig['content_home3'] ?><br>

                            Email : <span><?= $rowConfig['content_home2'] ?></span><br>





                       

                        </p>

                    

                    </div>



                  

                </div>

            </div>



            <div class="col-md-6">

                <div class="vk-dang-ky-left">

                    <h2> HOẶC ĐĂNG KÝ ONLINE THEO FORM SAU</h2>

                    <div class="">

                        <form action="" class="form-horizontal" role="form" method="post">

                            <div class="form-group">

                                <label for="firstName" class="col-sm-4 control-label">Họ và tên</label>

                                <div class="col-sm-8">

                                    <input type="text" name="name" id="firstName" placeholder="" class="form-control" autofocus required>

                                </div>

                            </div>



                            <div class="form-group">

                                <label for="firstName" class="col-sm-4 control-label">Ngày Sinh</label>

                                <div class="col-sm-8">

                                    <div class="row">

                                        <div class="col-sm-4">

                                            <select id="day" name="day" class="form-control" required>

                                                <?php for ($i=1;$i<=31;$i++) { ?>

                                                <option value="<?= $i ?>"><?= $i ?></option>

                                                <?php } ?>

                                            </select>

                                        </div>

                                        <div class="col-sm-4">

                                            <select id="months" name="month" class="form-control" required>

                                                <?php for ($i=1;$i<=12;$i++) { ?>

                                                <option value="<?= $i ?>"><?= $i ?></option>

                                                <?php } ?>

                                            </select>

                                        </div>

                                        <div class="col-sm-4">

                                            <select id="years" name="year" class="form-control" required>

                                                <?php

                                                $year = (int)date('Y');

                                                for ($i=1989;$i<=$year;$i++) {

                                                ?>

                                                <option value="<?= $i ?>"><?= $i ?></option>

                                                <?php } ?>

                                            </select>

                                        </div>

                                    </div>

                                </div>

                            </div>



                            <div class="form-group">

                                <label class="control-label col-sm-4">Giới Tính</label>

                                <div class="col-sm-8">

                                    <div class="row">

                                        <div class="col-sm-6">

                                            <div class="radio-inline">

                                                <input type="radio" name="sex" id="radio1" value="1" checked="">

                                                <label for="radio1">

                                                    Nam

                                                </label>

                                            </div>

                                        </div>

                                        <div class="col-sm-6">

                                            <div class="radio-inline">

                                                <input type="radio" name="sex" id="radio2" value="0">

                                                <label for="radio2">

                                                    Nữ

                                                </label>

                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div> <!-- /.form-group -->

                            <div class="clearfix"></div>



                            <div class="form-group">

                                <label class="control-label col-sm-4">Số diện thoại</label>

                                <div class="col-sm-8">

                                    <input type="number" id="firstName" name="phone" placeholder="số điện thoại" class="form-control" autofocus required>

                                </div>

                            </div> <!-- /.form-group -->



                            <div class="form-group">

                                <label class="control-label col-sm-4">Email</label>

                                <div class="col-sm-8">

                                    <input type="email" id="firstName" name="email" placeholder="Email" class="form-control" autofocus required>

                                </div>

                            </div> <!-- /.form-group -->

                            <div class="form-group" style="display: none;">

                                <label for="country" class="col-sm-4 control-label">Khóa học đăng ký:</label>

                                <div class="col-sm-8">

                                    <select id="country" class="form-control" name="course" required>


                                    <option value="Hội thảo web (DK room bắn tín hiệu)" selected>Hội thảo web (DK room bắn tín hiệu) </option>

                                    <option value="Hội thảo tài chính(offline)">Hội thảo tài chính(offline)</option>

                               

                                    <option value="Khoá chuyên sâu"> Khoá chuyên sâu</option>
                                    </select>

                                </div>

                            </div> <!-- /.form-group -->

                            <div class="form-group">

                                <label class="control-label col-sm-4">Địa chỉ</label>

                                <div class="col-sm-8">

                                    <input type="text" name="address" id="firstName" placeholder="Đia chỉ" class="form-control" autofocus>

                                </div>

                            </div> <!-- /.form-group -->



                            <div class="form-group">

                                <label class="control-label col-sm-4">Nơi công tác/Trường học</label>

                                <div class="col-sm-8">

                                    <input type="text" id="firstName" name="where" placeholder="Nơi công tác/ Trường học" class="form-control" autofocus>

                                </div>

                            </div> <!-- /.form-group -->

                            <div class="clearfix"></div>

                            <div class="form-group">

                                <label class="control-label col-sm-4">Ghi chú</label>

                                <div class="col-sm-8">

                                    <input type="text" id="firstName" name="note" placeholder="Ghi chú" class="form-control" autofocus>

                                </div>

                            </div> <!-- /.form-group -->

                            <div class="form-group" style="display: none;">

                                <label for="country" class="col-sm-4 control-label">Bạn biết Kênh Đầu Tư VTRADER qua:</label>

                                <div class="col-sm-8">

                                    <select id="country" name="know" class="form-control">

                                        <option value="Bạn bè/ Người quen giới thiệu">Bạn bè/ Người quen giới thiệu</option>

                                        <option value="Diễn đàn/ Internet">Diễn đàn/ Internet</option>

                                        <option value="Khác">Khác</option>

                                    </select>

                                </div>

                            </div> <!-- /.form-group -->

                            <!-- <div class="form-group">

                                <label class="control-label col-sm-4">Skype Id</label>

                                <div class="col-sm-8">

                                    <input type="text" id="skype" name="skype" placeholder="Skype Id" class="form-control" autofocus required>

                                </div>

                            </div> -->

                            <div class="form-group">

                                <div class="col-sm-4 col-sm-offset-8">

                                    <button type="submit" name="dangky" class="btn vk-btn-primary btn-block">ĐĂNG KÝ</button>

                                </div>

                            </div>

                        </form>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>
