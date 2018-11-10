<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class studentview_controller extends CI_Controller {
	public function __construct()
    {
        parent::__construct();
 
        // load Pagination library
        $this->load->library('pagination');
         
        // load URL helper
        $this->load->helper('url');
    }
	
	public function index()
	{
		if(!isset($_SESSION['user']))
		{
			$this->load->view('login');
		}
		$this->load->model('staffreg_model');
		$data['h']=$this->staffreg_model->view();  
		$this->load->view('view_staff',$data);
		        

	}
	
}
