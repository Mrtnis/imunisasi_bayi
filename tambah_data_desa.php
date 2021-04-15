<?php 

// session
session_start();
if ($_SESSION['status'] != 'login') {
    header('Location: login.php?pesan=belum_login');
}

include 'config/koneksi.php';

$username = $_SESSION['username'];

$data = mysqli_query($koneksi, "SELECT * FROM admin WHERE username='$username' ");
$pecah = mysqli_fetch_array($data);

// proses input
if (isset($_POST['input'])) {
    $nama = $_POST['nama_desa'];
    $kecamatan = $_POST['kecamatan'];

    mysqli_query($koneksi, "INSERT INTO desa (id_desa,nama_desa,kecamatan) VALUES('','$nama','$kecamatan') ");
    header("Location: desa.php?pesan=berhasil");
}

?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Admin - Input Data Desa</title>

  <!-- Custom fonts for this template-->
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container ">

  <div class="row justify-content-center">

    <div class="col-md-6">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <div class="row">
          <div class="col-md">
              <div class="p-5">
                <div class="text-center">
                  <h1 class="h4 text-gray-900 mb-4">Input Data Desa</h1>
                </div>

                <form class="user" action="" method="post">
                    <div class="form-group">
                        <label for="nama_desa">Nama Desa :</label>
                        <input type="text" class="form-control form-control-user" name="nama_desa" id="nama_desa">
                    </div>
                    <div class="form-group">
                        <label for="kecamatan">Kecamatan :</label>
                        <select name="kecamatan" class="custom-select" id="kecamatan">
                        <option value="Kotajuang">Kotajuang</option>
                        <option value="Gandapura">Gandapura</option>
                        </select>
                    </div>
                  <button class="btn btn-primary btn-user btn-block" type="submit" name="input">
                    Tambah Data
                  </button>
                <hr>
              </div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="assets/js/sb-admin-2.min.js"></script>

</body>

</html>