<?php 
    function dang_ky_ngay () {
        global $conn_vn;
        if (isset($_POST['dang_ky_ngay'])) {
            $name = $_POST['name'];
            $email = $_POST['email'];
            $phone = $_POST['phone'];
            $course = $_POST['course'];
            $skype = $_POST['skype'];

            $sql = "INSERT INTO dang_ky_ngay (name, email, phone, course, skype) VALUES ('$name', '$email', '$phone', '$course', '$skype')";
            $result = mysqli_query($conn_vn, $sql);
            echo '<script type="text/javascript">alert(\'Bạn đã đăng ký ngay thành công.\')</script>';
        }
    }
    dang_ky_ngay();
?>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<?php include DIR_MENU."MS_MENU_DENMOC_0002.php";?>
<!--MENU DESTOP-->
<header class="vk-header">

    <div class="nav-bar ">
        <div class="container">
            <div class="row" style="display: flex; justify-content: center; align-items: center;">
                <div class="col-md-2 logo col-xs-6">
                    <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" class="img-responsive" alt="logo"> </a>
                </div>
                
                <div class="col-md-10 menu-top  col-xs-12">
                

                    <nav id="vk-top-nav">
                        <?php 
                            $list_menu = $menu->getListMainMenu_byOrderASC();
                            $menu->showMenu_byMultiLevel_mainMenuCarrot($list_menu,0,$lang,0);
                            
                        ?>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</header>
<!-- <script src="/plugin/sticky/jquery.sticky.js"></script> -->
<!-- <script>
    $(document).ready(function () {
        $(".sticky-menu").sticky({topSpacing:0});

    });
</script> -->