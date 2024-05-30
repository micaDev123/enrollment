<?php if (!defined('BASEPATH'))exit('No direct script access allowed');


class Home extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
    }

    //***************** The function below redirects to logged in user area
    public function index() {
        $this->load->view('backend/home');
    }
  //***************** / The function below redirects to logged in user area

  }
