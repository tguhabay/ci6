<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Services extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function posts_init()
	{
	$q_wall_post = $this->db->get('test2');
    echo json_encode($q_wall_post->result_array());
	}
  
	public function posts_send()
	{
    $_post = $this->input->post('_post');
	$_alamat = $this->input->post('_alamat');
	$_sekolah = $this->input->post('_sekolah');
	$id = $this->input->post('_id');
    
    if(!empty($_post)){
      if(empty($id)){
      $id = date('mydhis');
      
      $q_wall_post_in = $this->db->insert('test2', array('id' => $id, 'nama' => $_post, 'alamat'=>$_alamat, 'sekolah'=>$_sekolah) );
      
      $q_wall_post_out = $this->db->get_where('test2', array('id' => $id) );
      
      echo json_encode($q_wall_post_out->row_array());  
	  }
	  else
	  {
	   $this->db->where('id',$id);
	   $this->db->update('test2', array('id' => $id, 'nama' => $_post, 'alamat'=>$_alamat, 'sekolah'=>$_sekolah));
      $q_wall_post_out = $this->db->get_where('test2', array('id' => $id) );
      echo json_encode($q_wall_post_out->row_array());  
	  }
    }
	}
	
	function delete(){
	$id = $this->input->post('id');
	$id = substr($id, 4);
	$op = $this->input->post('op');
	if($op == "delete"){
    $this->db->delete('test2', array('id' => $id));
    }
  }
  
  function edit(){
	$id = $this->input->post('id');
	$op = $this->input->post('op');
	$_post = $this->input->post('_post');
	$_alamat = $this->input->post('_alamat');
	$_sekolah = $this->input->post('_sekolah');
	$id = substr($id, 5);
	$q_wall_post_out = $this->db->get_where('test2', array('id' => $id) );
	echo json_encode($q_wall_post_out->row_array());
	if($op == "edit"){
      if ($id==''){
	  $data = array(
      'nama'=>$nama,
      'alamat'=>$alamat,
      'sekolah'=>$sekolah
    );
		$this->db->where('id',$id);
		$this->db->update('test2',$data);
    }
	}
   }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
