<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* Author: Rahul Satheesh
 * Date: 16/10/2018
 /* Description: Login model class
   Author:Rahul Satheesh s
   Date:15/10/2018
   Description:Model description for login action
 */
class Login_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    public function validate(){
        // grab user input
        $username = $this->security->xss_clean($this->input->post('username'));
        $password = $this->security->xss_clean($this->input->post('password'));
        
        // Prepare the query
        $this->db->where('usr_name', $username);
        $this->db->where('password', $password);
        
        // Run the query
        $query = $this->db->get('login');
                  

					

        // Let's check if there are any results
        if($query->num_rows() > 0)
        {
			
			$row = $query->row();
	

            // If there is a user, then create session data
            
               $data = array(
                   'usr_name' => $row->usr_name,
                    'user' => $row->user);      
            $this->session->set_userdata($data);
            return true;
        }
        
        return false;
    }
}
?>
