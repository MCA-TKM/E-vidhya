<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class studentview_controller extends CI_Controller {

	
	public function index()
	{
		$this->load->helper('url');
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
