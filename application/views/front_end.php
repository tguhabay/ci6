<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Ajax</title>
  <script type="text/javascript" src="<?php echo base_url(); ?>/static/js/jquery-1.6.1.min.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>/static/js/posts.js"></script>
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>/static/css/default.css"> 
</head>
<body>
  <div class="main_container">
    
    <div class="input_container">
      NAMA  : <br><input type="text" class="intext" id="post_input"><br>
	  ALAMAT  : <br><input type="text" class="intext" id="post_input2"><br>
	  SEKOLAH  : <br><input type="text" class="intext" id="post_input3"><br><input type="hidden" class="intext" id="post_input4"><input id="post_submit" type="button" value="POST!">
    </div>
    
    <div class="posts_container">
      <div class="item_sampler" style="display:none;">
        
        <div class="post_item_sampler">adfsdfsdafasdf</div>
       <div class="post_item_alamat_sampler">adfsdfsdafasdf</div>
	   <div class="post_item_sekolah_sampler">adfsdfsdafasdf</div>
	   <div class="post_item_date_sampler">12 January 2011 21:00:00</div>
	   <input class="delete_button" type="button" value="delete" >
	   <input class="edit_button" type="button" value="edit" >
        <div class="clearfix"></div>
        
      </div>
    </div>
    
  </div>
</body>
</html>
