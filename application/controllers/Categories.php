<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Categories extends CI_Controller
{

	public function Bola()
	{
		$data['title'] = 'Bola Categories';
		$data['bola'] = $this->model_kategori->bola()->result();
		$this->load->view('layout/home/header', $data);
		$this->load->view('bola', $data);
		$this->load->view('layout/home/footer');
	}

	public function pakaian()
	{
		$data['title'] = 'Pakaian Categories';
		$data['pakaian'] = $this->model_kategori->pakaian()->result();
		$this->load->view('layout/home/header', $data);
		$this->load->view('pakaian', $data);
		$this->load->view('layout/home/footer');
	}

	public function sepatu()
	{
		$data['title'] = 'Sepatu Categories';
		$data['sepatu'] = $this->model_kategori->sepatu()->result();
		$this->load->view('layout/home/header', $data);
		$this->load->view('sepatu', $data);
		$this->load->view('layout/home/footer');
	}

	public function jacket()
	{
		$data['title'] = 'Jacket Categories';
		$data['jacket'] = $this->model_kategori->jacket()->result();
		$this->load->view('layout/home/header', $data);
		$this->load->view('jacket', $data);
		$this->load->view('layout/home/footer');
	}

	public function alat()
	{
		$data['title'] = 'Alat Categories';
		$data['alat'] = $this->model_kategori->alat()->result();
		$this->load->view('layout/home/header', $data);
		$this->load->view('alat', $data);
		$this->load->view('layout/home/footer');
	}

	public function tas()
	{
		$data['title'] = 'Tas Categories';
		$data['tas'] = $this->model_kategori->tas()->result();
		$this->load->view('layout/home/header', $data);
		$this->load->view('tas', $data);
		$this->load->view('layout/home/footer');
	}
}
