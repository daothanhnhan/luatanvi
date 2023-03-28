<?php 
$rows = $action->getList('nhan_tai_lieu_1','','','id','desc',$trang,20,'nhan-tai-lieu');//var_dump($rows_lien_he);die();
?>
<div class="container">
  <h2>Bảng nhận tài liệu.</h2>            
  <table class="table">
    <thead>
      <tr>
      	<th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <!-- <th>Address</th> -->
        <!-- <th>Comment</th> -->
      </tr>
    </thead>
    <tbody>
    <?php foreach ($rows['data'] as $v_row_lh) { ?>
      <tr>
        <td><?php echo $v_row_lh['name'];?></td>
        <td><?php echo $v_row_lh['email'];?></td>
        <td><?php echo $v_row_lh['phone'];?></td>
        <!-- <td><?php echo $v_row_lh['address'];?></td> -->
        <!-- <td><?php echo $v_row_lh['comment'];?></td> -->
      </tr>
      <?php $i++; } ?>
    </tbody>
  </table>
</div>
<?php

    echo $rows['paging'];
?>