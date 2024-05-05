<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_kategori extends CI_Model
{
	public function bola()
	{
		return $this->db->get_where('product', array('kategori' => 'Bola'));
	}

	public function pakaian()
	{
		return $this->db->get_where('product', array('kategori' => 'Pakaian'));
	}

	public function sepatu()
	{
		return $this->db->get_where('product', array('kategori' => 'Sepatu'));
	}

	public function jacket()
	{
		return $this->db->get_where('product', array('kategori' => 'Jacket'));
	}

	public function alat()
	{
		return $this->db->get_where('product', array('kategori' => 'Alat'));
	}

	public function tas()
	{
		return $this->db->get_where('product', array('kategori' => 'Tas'));
	}
}
