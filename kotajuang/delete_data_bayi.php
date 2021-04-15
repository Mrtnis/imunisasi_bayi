<?php

include '../config/koneksi.php';

$id = $_GET['id'];

mysqli_query($koneksi, "DELETE FROM kotajuang WHERE id_imunisasi='$id' ");
header('Location: tabel_imunisasi_bayi.php?pesan=terhapus');
?>