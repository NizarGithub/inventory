<?php
session_start();

// Panggil koneksi database.php untuk koneksi database
require_once "../../config/database.php";

if(isset($_POST['dataidbarang'])) {
	$id_barang = $_POST['dataidbarang'];

  // fungsi query untuk menampilkan data dari tabel barang
  $query = mysqli_query($mysqli, "SELECT a.id_barang,a.nama_barang,a.id_satuan,a.stok
                                  FROM is_barang as a
                                  WHERE id_barang='$id_barang'")
                                  or die('Ada kesalahan pada query tampil data barang: '.mysqli_error($mysqli));

  // tampilkan data
  $data = mysqli_fetch_assoc($query);

  $stok   = $data['stok'];
  // $satuan = $data['nama_satuan'];

	if($stok != '') {
		echo "<div class='form-group'>
                <label class='col-sm-2 control-label'>Stok</label>
                <div class='col-sm-5'>
                  <div class='input-group' style='width:35px;'>
                    <input type='text' class='form-control' id='stok' name='stok' value='$stok' readonly>
                  
                  </div>
                </div>
              </div>";
	} else {
		echo "<div class='form-group'>
                <label class='col-sm-2 control-label'>Stok</label>
                <div class='col-sm-5'>
                  <div class='input-group'>
                    <input type='text' class='form-control' id='stok' name='stok' value='Stok barang tidak ditemukan' readonly>
                    
                  </div>
                </div>
              </div>";
	}		  
}
?> 