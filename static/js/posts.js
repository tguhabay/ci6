$(document).ready(function() {
  initialize();
  
  $('#post_submit').click(function(){
    var _post = $('#post_input').val();
    var _alamat = $('#post_input2').val();
	var _sekolah = $('#post_input3').val();
	var _id = $('#post_input4').val();
	
    $.ajax({
      url: 'http://localhost/ci6/services/posts_send',
      dataType: 'json',
      type: 'post',
      data: '_post=' + _post+'&_alamat=' + _alamat+'&_sekolah=' + _sekolah+'&_id=' + _id,
      success: function(response){
        post_render(response);
		resetData();
        initialize();
      }
    });    
    
    $('#post_input').val('');
    $('#post_input2').val('');
	$('#post_input3').val('');
	$('#post_input4').val('');
  });
  
  $(".delete_button").live('click', function(){
		var _this_id = jQuery(this).attr('id');
        $.ajax({
        url: 'http://localhost/ci6/services/delete',
		dataType:'json',
		type:'post',
        data: "op=delete&id="+_this_id,
        cache: false,
        success: function(response){
		resetData();
        initialize();
      }
        });
    });
	$(".edit_button").live('click', function(){
		var _this_id = jQuery(this).attr('id');
        $.ajax({
        url: 'http://localhost/ci6/services/edit',
		dataType:'json',
		type:'post',
        data: "op=edit&id="+_this_id,
        cache: false,
        success: function(response){
        //post_render(response);
		$("#post_input").val(response.nama);
		$("#post_input2").val(response.alamat);
		$("#post_input3").val(response.sekolah);
		$("#post_input4").val(response.id);
		resetData();
        initialize();
      }
        });
    });
  
  function resetData(){
	$('.item').remove();
  }
  
  function initialize(){
    $.ajax({
      url: 'http://localhost/ci6/services/posts_init',
      dataType: 'json',
      type: 'post',
      success: function(response){
        $.each(response, function(rkey, rval){
          post_render(rval);
        });
      }
    });
  }
  
  function post_render(response){
    var data = $('.item_sampler').clone();
    
    data.find('.post_item_sampler').html(response.nama);
    data.find('.post_item_sampler').addClass('post_item');
    data.find('.post_item_sampler').removeClass('post_item_sampler');
    
	data.find('.post_item_alamat_sampler').html(response.alamat);
    data.find('.post_item_alamat_sampler').addClass('post_item');
    data.find('.post_item_alamat_sampler').removeClass('post_item_alamat_sampler');
 
	data.find('.post_item_sekolah_sampler').html(response.sekolah);
    data.find('.post_item_sekolah_sampler').addClass('post_item_sekolah');
    data.find('.post_item_sekolah_sampler').removeClass('post_item_sekolah_sampler');
	
	data.find('.post_item_date_sampler').html(response.the_time);
    data.find('.post_item_date_sampler').addClass('post_item_date');
    data.find('.post_item_date_sampler').removeClass('post_item_date_sampler');
    
    data.addClass('item');
    data.removeClass('item_sampler');
    data.css('display', 'block');
    
	data.find('.delete_button').attr('id', 'del_' + response.id);
	data.find('.edit_button').attr('id', 'edit_' + response.id);
	
    data.insertAfter('.item_sampler');
    
    delete(data);
  }
  
});
