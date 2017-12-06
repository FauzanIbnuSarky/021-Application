<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller {

	
	public function getNews(){
		$q =$this->db->get('tb_reeport');

		if($q->num_rows()>0){
			$data['result'] = true ;
			$data['pesan'] = 'Data Ada';
			$data['data'] = $q->result();
		}
		else{
			$data['result'] = false ;
			$data['pesan'] = 'Data, tidak ada';
		}

		echo json_encode($data);
	}


	public function daftar(){ 
$data = array();
$id = $this->input->post('id');
$judul = $this->input->post('judul');
$tanggal = $this->input->post('tanggal');
$isi = $this->input->post('isi');


$this->db->where('id', $id);

$q = $this->db->get('tb_reeport');

if($q->num_rows() > 0) {
$data['result'] = 'false';
$data['msg'] = 'Data telah tersedia';
}else{	
$simpan = array();

$simpan['id'] = ($id);
$simpan['judul'] = ($judul);
$simpan['isi'] = $isi;
$simpan['tanggal'] = $tanggal;


$status = $this->db->insert('tb_reeport',$simpan);

if($status){	
$data['result'] = 'true';
$data['msg'] = 'data berhasil disimpan';

}else{
$data['result'] = 'false';
$data['msg'] = 'data gagal disimpan, silahkan coba kembali';
}
}
echo json_encode($data);
}

	// //menambahkan method baru untuk input data
	// public function input_data_karyawan(){

	// 	//membuat data array
	// 	$data = array();

	// 	//membuat variable untuk menampung data english dan indonesia
	// 	$id_employee = $this->input->post('id_employee');
	// 	$nama_employee = $this->input->post('nama_employee');
	// 	$posisi = $this->input->post('posisi');
	// 	$gaji = $this->input->post('gaji');
	// 	$alamat = $this->input->post('alamat');
	// 	$masuk = $this->input->post('tanggal_masuk');

	// 	//membuat variable simpan sebagai data array
	// 	$simpan = array();

	// 	$simpan['id_employee'] = $id_employee;
	// 	$simpan['nama_employee'] = $nama_employee;
	// 	$simpan['posisi'] = $posisi;
	// 	$simpan['gaji'] = $gaji;
	// 	$simpan['alamat'] = $alamat;
	// 	$simpan['tanggal_masuk'] = $masuk;

	// 	//membuat variable status untuk mengecek apakah berhasil simpan atau tidak
	// 	$status = $this->db->insert('tb_employee', $simpan);

	// 	//apabila kondisi status nya benar
	// 	if($status){
	// 		//data nya keluar result true
	// 		$data['result'] = 'true';
	// 		$data['msg'] = 'Data berhasil di simpan';

	// 	}else{
	// 		//kondisi salah
	// 		$data['result'] = 'false';
	// 		$data['msg'] = 'Simpan gagal, silahkan coba lagi';
	// 	}

	// 	//melakukan encode data json
	// 	echo json_encode($data);
	// }
}
