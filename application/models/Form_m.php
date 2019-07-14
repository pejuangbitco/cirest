<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Form_m extends CI_Model {

	public function getForm($form)
	{
		$q = $this->db->get($form);
		return $q->result();
	}

	public function inputForm($form,$data)
	{
		return $this->db->insert($form, $data);
	}

	public function lihatForm($form,$alat,$tanggal) {
		// $sql = "SELECT * FROM alat_dfr JOIN form_dfr on alat_dfr.id_alat=form_dfr.alat WHERE form_dfr.tanggal=? GROUP BY alat_dfr.nama_alat ORDER BY form_dfr.tanggal ;";
		// $this->db->select('*');
		
		
		$this->db->select('*');
		$this->db->from($form);
		$this->db->join($alat, $form.'.alat = '.$alat.'.id_alat');
		$this->db->where($form.'.tanggal', $tanggal);
		// $this->db->order_by('form_dfr.tanggal', 'desc');
		$q = $this->db->get();	

		// $q = $this->db->query($sql, array($tanggal));
		return $q->result();
	}

	public function cekForm($form,$date)
	{
		$this->db->where('tanggal', $date);
		$q = $this->db->get($form);
		return $q->result();
	}

}

/* End of file User_m.php */
/* Location: ./application/models/User_m.php */ ?>