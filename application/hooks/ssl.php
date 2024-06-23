<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function redirect_ssl() {
    $CI =& get_instance();
    $CI->config->config['base_url'] = str_replace('http://', 'https://', $CI->config->config['base_url']);
    if ($_SERVER['SERVER_PORT'] != 443) {
        redirect($CI->config->config['base_url'].$CI->uri->uri_string());
    }
}
?>