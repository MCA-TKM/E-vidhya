<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class studentreg_controller extends CI_Controller {

	
	public function index()
	{
		if(!isset($_SESSION['user']))
		{
			$this->load->view('login');
		}
		$this->load->helper('url');
		$this->load->view('student_reg');
		$this->load->model('studentreg_model');
		if(!isset($_POST['sub']))
		{
			return;
		}
		if(isset($_POST['sub']))
		{
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
	
}
