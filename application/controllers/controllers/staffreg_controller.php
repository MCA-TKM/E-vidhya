<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class staffreg_controller extends CI_Controller {

	
	public function index()
	{
		if(!isset($_SESSION['user']))
		{
			$this->load->view('login');
		}
		$this->load->helper('url');
		$this->load->view('staff_reg');
		$this->load->model('staffreg_model');
		if(!isset($_POST['sub']))
		{
			return;
		}
		//if(!isset($_POST['sub']))
		
			$result=$this->staffreg_model->register();
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
