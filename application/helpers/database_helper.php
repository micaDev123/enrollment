<?php defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('switch_database')) {
    function switch_database() {
        $CI =& get_instance();
        $selected_db = $CI->session->userdata('selected_db');
        if ($selected_db && in_array($selected_db, ['default', 'STAJULIANA_DB_B1', 'STAJULIANA_DB_B2', 'STAJULIANA_DB_B3'])) {
            $CI->db = $CI->load->database($selected_db, TRUE);
            return $selected_db;
        } else {
            $CI->db = $CI->load->database('default', TRUE);
        }
    }
}

if (!function_exists('switch_database_login')) {
    function switch_database_login($db_group = 'default') {
        $CI =& get_instance();
        $CI->db = $CI->load->database($db_group, TRUE);

        // Log the database group being used
        log_message('debug', 'Switched to database group: ' . $db_group);
    }
}
?>