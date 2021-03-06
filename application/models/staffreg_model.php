<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* Author: Rahul Satheesh s
 * Date: 16/10/2018
 * Description: Login model class
 */
class staffreg_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    public function register(){
		
		
        // grab user input
        $name = $this->security->xss_clean($this->input->post('name'));
        $dob = $this->security->xss_clean($this->input->post('dob'));
		$address=$this->security->xss_clean($this->input->post('address'));
        $gender=$this->security->xss_clean($this->input->post('gender'));
		$designation=$this->security->xss_clean($this->input->post('designation'));
		$jdate=$this->security->xss_clean($this->input->post('jdate'));
		$blood=$this->security->xss_clean($this->input->post('blood'));
		$qualification=$this->security->xss_clean($this->input->post('qualifiaction'));
		$phone=$this->security->xss_clean($this->input->post('phone'));
		$mail=$this->security->xss_clean($this->input->post('mail'));
        // Prepare the query
        $data = array(
		'usr_name'=>'0',
        'name'=>$name,
        'designation'=>$designation,
		'gender'=>$gender,
		'dob'=>$dob,
		'blood_grp'=>$blood,
		'address'=>$address,
		'phno'=>$phone,
		'qualification'=>$qualification,
		'join_date'=>$jdate,
		'email'=>$mail
		);
        
        // Run the query
        $result=$this->db->insert('staff',$data);
                  

					

        // Let's check if there are any results
       /* if($query->num_rows() > 0)
        {
			
			$row = $query->row();
	

            // If there is a user, then create session data
            
               $data = array(
                   'usr_name' => $row->usr_name,
                    'user' => $row->user);      
            $this->session->set_userdata($data);
            return true;
        } */
        
        return $result;
    }
	public function view()
	{
		
		$this->db->select('usr_name,name,designation,dob,blood_grp');
		$this->db->from('staff');
		$query = $this->db->get();
		return $query;
		

		
	}
}
?>
