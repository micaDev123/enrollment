<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


class Api extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }


    function get_subjects()
    {
        $subject = $this->db->get('subject')->result_array();
        $this->toJson($subject);
    }

    function get_student($id)
    {
        $where = array('student_id' => $id);
        $student = $this->db->select("name, age, sex,address, birthday,email,phone")->get_where('student', $where)->result_array();
        $this->toJson($student);
    }

    function toJson($data)
    {
        header('Content-Type: application/json');
        echo json_encode($data);
    }

    function login()
    {
        $email = html_escape($this->input->get('email'));
        $password = html_escape($this->input->get('password'));
        $credential = array('email' => $email, 'password' => sha1($password));

        $query = $this->db->get_where('student', $credential)->result_array();
        if ($query) {

            $this->toJson([
                'status' => 200,
                'message' => 'Success',
                'body' => $query
            ]);
        } else {
            $this->toJson([
                'status' => 404,
                'message' => 'Invalid User/Password',
                'body' => []
            ]);
        }
    }
}


    // $email = html_escape($this->input->post('email'));			
    // $password = html_escape($this->input->post('password'));	
    // $credential = array('email' => $email, 'password' => sha1($password));	

    // $query = $this->db->get_where('admin', $credential);