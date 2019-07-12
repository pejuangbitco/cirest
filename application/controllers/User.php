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

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class User extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
        $this->load->model('user_m');
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

        if($aksi=='adduser') {
            
            $data = [
                'username' => $this->post('username'),
                'password' => $this->post('password'),
                'nama' => $this->post('nama'),
                'status' => 'user'
            ];
            $q = $this->user_m->tambah_user($data);
            if($q) {
                $result = json_encode(array('success'=>true, 'msg' => 'Sukses tambah user'));    
            } else {
                $result = json_encode(array('success'=>false, 'msg'=>'Error'));    
            }
            echo $result;
        }

        if($aksi=='deleteuser') {
            $id = $this->post('id_user');
            $q = $this->user_m->hapus_user($id);
            
            $result = json_encode(array('success'=>true, 'msg' => 'Sukses hapus user'));    
            
            echo $result;
        }

        if($aksi=='getpesan') {
            $id = $this->post('nama');
            $q = $this->user_m->getpesan($id);
            
            $result = json_encode(array('success'=>true, 'result' => $q));    
            
            echo $result;
        }

        if($aksi=='balaspesan') {
            $data = [
                'isi_pesan' => $this->post('isi_pesan'),
                'dari' => $this->post('dari'),
                'untuk' => $this->post('untuk'),
                'tanggal' => date('Y-m-d')
            ];
            $q = $this->user_m->tambah_pesan($data);
            $result = json_encode(array('success'=>true, 'msg' => 'Sukses balas pesan'));
            echo $result;
        }

        if($aksi=='deletepesan') {
            $id = $this->post('id_pesan');
            $q = $this->user_m->hapus_pesan($id);
            
            $result = json_encode(array('success'=>true,  'Sukses hapus pesan'));    
            
            echo $result;
        }                
    }
}
?>