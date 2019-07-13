<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_m extends CI_Model {

	public function getUser($cond='') {
		if($cond=='')
			return $this->db->get('user')->result();
		$this->db->where($cond);
		return $this->db->get('user')->result();
	}

	public function tambah_user($data)
	{
		return $this->db->insert('user', $data);
	}

	public function hapus_user($id)
	{
		$this->db->where('id_user', $id);
		return $this->db->delete('user');
	}

	public function getpesan($nama)
	{
		$this->db->where('untuk', $nama);
		return $this->db->get('pesan')->result();
	}

	public function tambah_pesan($data)
	{
		return $this->db->insert('pesan', $data);
	}

	public function balas_pesan($id, $data)
	{
		$this->db->where('id_pesan', $id);
		return $this->db->update('pesan', $data);
	}

	public function hapus_pesan($id)
	{
		$this->db->where('id_pesan', $id);
		return $this->db->delete('pesan');
	}

	public function ubah_password($id, $data)
	{
		$this->db->where('id_user', $id);
		return $this->db->update('user', $data);
	}
}

/* End of file User_m.php */
/* Location: ./application/models/User_m.php */ ?>