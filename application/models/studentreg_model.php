<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* Author: Rahul Satheesh s
 * Date: 16/10/2018
 * Description: Login model class
 */
class studentreg_model extends CI_Model{
    function __construct(){
        parent::__construct();
    }
    
    public function register(){
		
		
        // grab user input
        $name = $this->security->xss_clean($this->input->post('name'));
        $dob = $this->security->xss_clean($this->input->post('dob'));
		$address=$this->security->xss_clean($this->input->post('address'));
        $gender=$this->security->xss_clean($this->input->post('gender'));
		$class=$this->security->xss_clean($this->input->post('class'));
		$division=$this->security->xss_clean($this->input->post('division'));
		$blood=$this->security->xss_clean($this->input->post('blood'));
		$religion=$this->security->xss_clean($this->input->post('religion'));
		$caste=$this->security->xss_clean($this->input->post('caste'));
		$add_date=$this->security->xss_clean($this->input->post('add_date'));
		$jclass=$this->security->xss_clean($this->input->post('jclass'));
		$jdivision=$this->security->xss_clean($this->input->post('jdivision'));
		$gname=$this->security->xss_clean($this->input->post('gname'));
		$gdob=$this->security->xss_clean($this->input->post('gdob'));
		$relation=$this->security->xss_clean($this->input->post('relation'));
		$gblood=$this->security->xss_clean($this->input->post('gblood'));
		$gaddress=$this->security->xss_clean($this->input->post('gaddress'));
		$gphone=$this->security->xss_clean($this->input->post('gphone'));
		$gemail=$this->security->xss_clean($this->input->post('gemail'));
        // Prepare the query
        $data = array(
		'usr_name'=>'0',
        'name'=>$name,
        'class'=>$class,
		'gender'=>$gender,
		'dob'=>$dob,
		'blood_grp'=>$blood,
		'address'=>$address,
		'cast'=>$caste,
		'religion'=>$religion,
		'joined_class'=>$jclass,
		'add_date'=>$add_date,
		);
        
        // Run the query
        $result=$this->db->insert('student',$data);
                  

					

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
		
		$this->db->select('name,class,division,gender,dob,blood_grp,address,religion,cast');
		$this->db->from('student');
		$query = $this->db->get();
		return $query;
		

		
	}
}
?>
