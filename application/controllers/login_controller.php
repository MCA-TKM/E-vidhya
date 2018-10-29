<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class login_controller extends CI_Controller {

	
	public function index()
	{
		$this->load->helper('url');
		$this->load->view('login');
		$this->load->model('login_model');
		if(!isset($_POST['login']))
		{
			return;
		}
		$result=$this->login_model->validate();
		if(! $result)
		{
            // If user did not validate, then show them login page again
            echo '<font color=red>Invalid username and/or password.</font><br />';
          
        }
		
		else{
            // If user did validate, 
            // Send them to members area
			redirect('http://localhost/mini/index.php/load_profile');

			
        }        

	}
}
