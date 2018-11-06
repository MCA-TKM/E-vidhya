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
		$this->load->model('studentreg_model');
		$data['h']=$this->studentreg_model->view();  
		$this->load->view('view_students',$data);
		if(!isset($_POST['sub']))
		{
			return;
		}
		$result=$this->studentreg_model->register();
		if(! $result)
		{
            //If student not added successfully, then show error message
            echo '<font>could not admit the student<br />';
        }
		
		else
		{
            // If student admitted  successfully, 
            
			//echo '<script>alert(student admitted successfully')</script>';

		}        

	}
	
}
