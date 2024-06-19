<?php if (!defined('BASEPATH'))exit('No direct script access allowed');


class Login extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->helper('database');
    }

    //***************** The function below redirects to logged in user area
    public function index() {

        if ($this->session->userdata('admin_login')== 1) redirect (base_url(). 'admin/dashboard');
        if ($this->session->userdata('hrm_login')== 1) redirect (base_url(). 'hrm/dashboard'); 
        if ($this->session->userdata('hostel_login')== 1) redirect (base_url(). 'hostel/dashboard');
        if ($this->session->userdata('accountant_login')== 1) redirect (base_url(). 'accountant/dashboard');
        if ($this->session->userdata('librarian_login')== 1) redirect (base_url(). 'librarian/dashboard'); 
        if ($this->session->userdata('teacher_login')== 1) redirect (base_url(). 'teacher/dashboard');   
        if ($this->session->userdata('parent_login')== 1) redirect (base_url(). 'parent/dashboard'); 
        if ($this->session->userdata('student_login')== 1) redirect (base_url(). 'student/dashboard'); 
        $this->load->view('backend/login');
    }
  //***************** / The function below redirects to logged in user area

  //********************************** the function below validating user login request 
    function validate_login() {
      
       // Perform login validation using the login model
    $login_check_model = $this->login_model->loginFunctionForAllUsers();
    $login_user = $this->session->userdata('login_type');

    // Log the user login type and database group selection for debugging
    log_message('debug', 'Login User Type: ' . $login_user);
    log_message('debug', 'Selected Database Group: ' . $this->session->userdata('selected_db'));

    if (!$login_check_model) {
      // Handle invalid login credentials
      $this->session->set_flashdata('error_message', get_phrase('Wrong email or password'));
      redirect(base_url() . 'login', 'refresh');
  }

    // Handle successful login based on user type
    switch ($login_user) {
      case 'admin':
      case 'hrm':
      case 'hostel':
      case 'accountant':
      case 'librarian':
      case 'parent':
      case 'student':
      case 'teacher':
          $this->session->set_flashdata('flash_message', get_phrase('Successfully Login'));
          redirect(base_url() . $login_user . '/dashboard', 'refresh');
          break;
      default:
          // Handle unknown user type or other cases
          redirect(base_url() . 'login', 'refresh');
          break;
    }
    }


    function logout(){
      // Retrieve the selected database from the session
    $selected_db = $this->session->userdata('selected_db');
    $this->load->database($selected_db);

    $login_user = $this->session->userdata('login_type');
    if ($login_user == 'admin') {
        $this->login_model->logout_model_for_admin();
    } elseif ($login_user == 'hrm') {
        $this->login_model->logout_model_for_hrm();
    } elseif ($login_user == 'hostel') {
        $this->login_model->logout_model_for_hostel();
    } elseif ($login_user == 'accountant') {
        $this->login_model->logout_model_for_accountant();
    } elseif ($login_user == 'librarian') {
        $this->login_model->logout_model_for_librarian();
    } elseif ($login_user == 'parent') {
        $this->login_model->logout_model_for_parent();
    } elseif ($login_user == 'student') {
        $this->login_model->logout_model_for_student();
    } elseif ($login_user == 'teacher') {
        $this->login_model->logout_model_for_teacher();
    }

    $this->session->sess_destroy();
    redirect('login', 'refresh');
}
}
