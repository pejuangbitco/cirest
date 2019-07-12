<?php

defined('BASEPATH') OR exit('No direct script access allowed');

if (isset($_SERVER['HTTP_ORIGIN'])) 
{
    // Decide if the origin in $_SERVER['HTTP_ORIGIN'] is one
    // you want to allow, and if so:
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400');    // cache for 1 day
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') 
{
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
        // may also be using PUT, PATCH, HEAD etc
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS");         

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
        header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

    exit(0);
}


// header('Access-Control-Allow-Origin: *');
//   header("Access-Control-Allow-Credentials: true");
//   header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
//   header("Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With");
//   header("Content-Type: application/json; charset=utf-8");
require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class User extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
    }

    function index_post() {
        $aksi = $this->post('aksi');
        if($aksi=='login') {
            $username = $this->post('username');
            $password = $this->post('password');
            
            $this->db->where('username', $username);
            $this->db->where('password', $password);
            $data = $this->db->get('user')->result();
            if($data) {
                $result = json_encode(array('success'=>true, 'result'=>$data[0]));    
            } else {
                $result = json_encode(array('success'=>false, 'msg'=>'Username atau Password Salah!'));    
            }
            echo $result;
        }
    }
}
?>