<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Admin_model extends CI_Model { 
	
	function __construct()
    {
        parent::__construct();
    }


    function createNewAdministrator() {

        $page_data['name']  = html_escape($this->input->post('name'));
        $page_data['email']  = html_escape($this->input->post('email'));
        $page_data['phone']  = html_escape($this->input->post('phone'));
        $page_data['password']  = sha1($this->input->post('password'));
        $page_data['level']     = html_escape($this->input->post('level'));
        $this->db->insert('admin', $page_data);
        $admin_id = $this->db->insert_id();
        move_uploaded_file($_FILES['admin_image']['tmp_name'], 'uploads/admin_image/' . $admin_id . '.jpg');

        $page_data2['admin_id'] =  $admin_id;
        $this->db->insert('admin_role', $page_data2);


    }

    function deleteAdministrator($param2){
        
        $this->db->where('admin_id', $param2);
        $this->db->delete('admin');
    }

    function select_all_the_administrator_from_admin_table(){
        $all_selected_administrator = $this->db->get('admin');
        return $all_selected_administrator->result_array();

    }

    function updateAllDetailsForAdminRole($param2){
        $page_data['dashboard']  = html_escape($this->input->post('dashboard'));
        $page_data['manage_subject']  = html_escape($this->input->post('manage_subject'));
        $page_data['manage_employee']   = html_escape($this->input->post('manage_employee'));
        $page_data['manage_student']    = html_escape($this->input->post('manage_student'));
        $page_data['manage_class']     = html_escape($this->input->post('manage_class'));
        $page_data['manage_enrollment']     = html_escape($this->input->post('manage_enrollment'));
        // $page_data['manage_parent']     = html_escape($this->input->post('manage_parent'));
        $page_data['manage_subject']     = html_escape($this->input->post('manage_subject'));
        $this->db->where('admin_id', $param2);
        $this->db->update('admin_role', $page_data);


    }

    
}