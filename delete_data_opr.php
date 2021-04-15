<?php

include 'config/koneksi.php';

$id = $_GET['id'];

mysqli_query($koneksi, "DELETE FROM operator WHERE id='$id' ");
header('Location: operator.php?pesan=terhapus');
?>