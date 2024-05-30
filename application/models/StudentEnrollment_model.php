<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class StudentEnrollment_model extends CI_Model { 
	
	function __construct()
    {
        parent::__construct();
    }
	
    // The function below inserts into exam question table //
    function createexamQuestion(){
        $page_data = array(
            'student_id'                => html_escape($this->input->post('student_id')),
            'grade_level'               => html_escape($this->input->post('grade_level')),
            'section_id'                => $this->input->post('section_id'),
            // 'subject_id'                => html_escape($this->input->post('subject_id')),
            // 'teacher_id'                => html_escape($this->input->post('teacher_id')),
            // 'timestamp'                 => html_escape($this->input->post('timestamp')),
            'date_of_enrollment'        => html_escape($this->input->post('date_of_enrollment')),
            'file_type'                 => html_escape($this->input->post('file_type')),
            'status'                    => html_escape($this->input->post('status'))
        );

       
        

        //uploading file using codeigniter upload library
        $files = $_FILES['file_name']; 
        $this->load->library('upload');
        $config['upload_path'] = 'uploads/enrollment/';
        $config['allowed_types'] = 'docx|pdf|png|jpg|xcls';
        $_FILES['file_name']['name'] = $files['name'];
        $_FILES['file_name']['type'] = $files['type'];
        $_FILES['file_name']['tmp_name'] = $files['tmp_name'];
        $_FILES['file_name']['size'] = $files['size'];
        $this->upload->initialize($config);
        $this->upload->do_upload('file_name');
        
        // $date_enrolled = array('date_of_enrollment' => html_escape($this->post('date_of_enrollment')));
        $page_data['file_name'] = $_FILES['file_name']['name'];
        // $check_student_status = $this->db->get_where('enrollment', array('date_of_enrollment' => $page_data['date_of_enrollment']))->row()->date_of_enrollment;
        $id = $this->db->insert('enrollment', $page_data);

        if($id) {
            $section_id = array(
                'section_id'                => $this->input->post('section_id', true),
            );

            $s_section_id = $this->db->update('student', $section_id);
        }




    }

    // The function below updates exam question table //
    function updateexamQuestion($param2){
        $page_data = array(
            'student_id'                 => html_escape($this->input->post('student_id')),
            // 'description'               => html_escape($this->input->post('description')),
            // 'class_id'                  => html_escape($this->input->post('class_id')),
            // 'subject_id'                => html_escape($this->input->post('subject_id')),
            // 'teacher_id'                => html_escape($this->input->post('teacher_id')),
            'timestamp'                 => html_escape($this->input->post('timestamp')),
            'file_type'                 => html_escape($this->input->post('file_type')),
            'status'                    => html_escape($this->input->post('status'))
        );

        $this->db->where('enrollment_id', $param2);
        $this->db->update('enrollment', $page_data);
    }

    // The function below delete from exam question table //
    function deleteexamQuestion($param2){

    $this->db->where('enrollment_id', $param2);
    
    $id = $this->db->delete('enrollment');

    if($id) {
        $this->db->delete('student', 'section_id');
    }


    }
}

