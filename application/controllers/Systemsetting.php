<?php if (!defined('BASEPATH')) exit('No direct script access allowed');



class Systemsetting extends CI_Controller { 

    function __construct() {
        parent::__construct();
        		$this->load->library('session');					//Load library for session
                $this->load->helper('url');
                $this->load->database(); // Ensure database library is loaded
                $this->load->helper('database');   
                switch_database();

    }


/**default functin, redirects to login page if no admin logged in yet***/
    public function index() {
        	if ($this->session->userdata('admin_login') != 1)
            redirect(base_url() . 'login', 'refresh');
        	if ($this->session->userdata('admin_login') == 1)
            redirect(base_url() . 'admin/dashboard', 'refresh');
    }

   

   /************** Manage system setings  ********************/
	function system_settings($param1 = '', $param2 = '', $param3 = '') 
	{
    if ($this->session->userdata('admin_login') != 1)
    redirect(base_url() . 'login', 'refresh');


        if ($param1 == 'do_update') {
           
        $this->crud_model->update_settings();

        $this->session->set_flashdata('flash_message', get_phrase('Data Updated'));
        redirect(base_url(). 'systemsetting/system_settings', 'refresh');
    }

    if ($param1 == 'upload_logo') 
	{
       $this->crud_model->system_logo();
    //    move_uploaded_file($_FILES['userfile']['tmp_name'], 'uploads/enrollment/' . $this->session->userdata('admin_id') . '.jpg');
       $this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
       redirect(base_url() . 'systemsetting/system_settings', 'refresh');
    }


    if ($param1 == 'themeSettings') 
	{
        $this->crud_model->update_theme();
        $this->session->set_flashdata('flash_message', get_phrase('Theme Selected'));
        redirect(base_url() . 'systemsetting/system_settings', 'refresh');
    }


    $page_data['page_name'] = 'system_settings';
    $page_data['page_title'] = get_phrase('system_settings');
    $page_data['settings'] = $this->db->get('settings')->result_array();
    $this->load->view('backend/index', $page_data);
    }    
        function manage_database() {

            $database = $this->input->post('database');
            $this->session->set_userdata('selected_db', $database);
            switch_database($database);

            $page_data['page_name'] = 'manage_database';
            $page_data['page_title'] = get_phrase('database setting');
            $this->load->view('backend/index', $page_data);
    
}

}
