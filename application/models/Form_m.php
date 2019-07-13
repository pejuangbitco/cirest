<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Form_m extends CI_Model {

	public function getDFR()
	{
		$q = $this->db->get('alat_dfr');
		return $q->result();
	}

	public function inputDFR($data)
	{
		return $this->db->insert('form_dfr', $data);
	}

	public function lihatFormDFR($tanggal) {
		$sql = "SELECT * FROM alat_dfr JOIN form_dfr on alat_dfr.id_alat=form_dfr.alat WHERE form_dfr.tanggal=? GROUP BY alat_dfr.nama_alat ORDER BY form_dfr.tanggal ;";
		$q = $this->db->query($sql, array($tanggal));
		return $q->result();
	}

}

/* End of file User_m.php */
/* Location: ./application/models/User_m.php */ ?>