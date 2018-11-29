<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class load_profile extends CI_Controller {

	
	public function index()
	{
		if(!isset($_SESSION['user']))
		{
			$this->load->view('login');
		}
		$this->load->view('index');
		echo "<script>document.getElementById</script>";

	}
}
