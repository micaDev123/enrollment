<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Admin_model extends CI_Model { 
	
	function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->helper('database');
    }


    function createNewAdministrator() {
        // Retrieve the selected database from the form
        $selected_db = $this->input->post('database');
    
        // Switch to the selected database
        $this->load->database($selected_db, TRUE);
    
        $page_data = array(
            'name'      => html_escape($this->input->post('name')),
            'email'     => html_escape($this->input->post('email')),
            'phone'     => html_escape($this->input->post('phone')),
            'password'  => sha1($this->input->post('password')),
            'level'     => html_escape($this->input->post('level'))
        );
    
        $this->db->insert('admin', $page_data);
        $admin_id = $this->db->insert_id();
        move_uploaded_file($_FILES['admin_image']['tmp_name'], 'uploads/admin_image/' . $admin_id . '.jpg');
    
        $page_data2 = array(
            'admin_id' => $admin_id
        );
        $this->db->insert('admin_role', $page_data2);
    
        // Switch back to the default database
        $this->load->database('default', TRUE);
    }

    // function createNewPortal() {
    //     // Switch to the new database
    //     $selected_db = $this->session->userdata('selected_db');
    //     switch_database();

    //     // Create initial tables in the new database
    //     $this->createInitialTables();

    //     // Insert admin user into the new database
    //     $this->createNewAdministrator();
    // }

    // private function createInitialTables() {
    //     // Example SQL for creating a new table
    //     $sql = "CREATE TABLE IF NOT EXISTS admin (
    //                 admin_id INT AUTO_INCREMENT PRIMARY KEY,
    //                 name VARCHAR(100) NOT NULL,
    //                 email VARCHAR(100) NOT NULL,
    //                 phone VARCHAR(15) NOT NULL,
    //                 password VARCHAR(255) NOT NULL,
    //                 level INT NOT NULL
    //             )";
    //     $this->db->query($sql);

    //     // Repeat for other necessary tables...
    // }


    function get_all_administrators_from_all_databases() {
        $databases = ['default', 'STAJULIANA_DB_B1', 'STAJULIANA_DB_B2','STAJULIANA_DB_B3'];
        $all_administrators = [];

        foreach ($databases as $database) {
            $this->load->database($database, TRUE);

            $query = $this->db->get('admin');
            if ($query->num_rows() > 0) {
                $result = $query->result_array();
                foreach ($result as &$admin) {
                    $admin['database'] = $database; // Add the database name to the result
                }
                $all_administrators = array_merge($all_administrators, $result);
            }
        }

        // Switch back to default database
        $this->load->database('default', TRUE);
        return $all_administrators;
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