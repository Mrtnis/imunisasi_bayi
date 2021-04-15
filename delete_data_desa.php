<?php

include 'config/koneksi.php';

$id = $_GET['id'];

mysqli_query($koneksi, "DELETE FROM desa WHERE id_desa='$id' ");
header('Location: desa.php?pesan=terhapus');
?>