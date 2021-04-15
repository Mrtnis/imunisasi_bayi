<?php

session_start();

include '../config/koneksi.php';

if ($_SESSION['status'] != 'login') {
  header('Location: ../login.php?pesan=belum_login');
}

$username = $_SESSION['username'];

$data = mysqli_query($koneksi, "SELECT * FROM operator WHERE username='$username' ");
$pecah = mysqli_fetch_array($data);

if (isset($_POST['edit'])) {
    $id2 = $_POST['id'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $nama = $_POST['nama'];
    $divisi = $_POST['divisi'];
    $puskesmas = $_POST['puskesmas'];

    mysqli_query($koneksi, "UPDATE operator SET username='$username', password='$password', nama='$nama' WHERE id='$id2'");

    header('Location: profil.php?pesan=edit');
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

  <title>Puskesmas - Edit Data</title>

  <!-- Custom fonts for this template-->
  <link href="../assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../assets/css/sb-admin-2.min.css" rel="stylesheet">

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
                  <h1 class="h4 text-gray-900 mb-4">Ubah Data Operator</h1>
                </div>

                <?php 
                    $id = $_GET['id'];
                    $result = mysqli_query($koneksi, "SELECT * FROM operator WHERE id = '$id'");
                    while($data = mysqli_fetch_array($result)) :
                ?>

                <form class="user" action="" method="post">
                    <div class="form-group">
                        <input type="hidden" name='id' value="<?= $data['id'] ?>">
                        <label for="username">Username :</label>
                        <input type="text" class="form-control form-control-user" name="username" id="username" value="<?= $data['username'] ?>">
                    </div>
                    <div class="form-group">
                        <label for="password">Password :</label>
                        <input type="text" class="form-control form-control-user" name="password" id="password" value="<?= $data['password'] ?>">
                    </div>
                    <div class="form-group">
                        <label for="nama">Nama Operator :</label>
                        <input type="text" class="form-control form-control-user" name="nama" id="nama" value="<?= $data['nama'] ?>">
                    </div>
                    <div class="form-group">
                        <label for="divisi">Divisi :</label>
                        <input type="text" class="form-control form-control-user" name="divisi" id="divisi" value="<?= $data['divisi'] ?>" disabled>
                    </div>
                    <div class="form-group">
                        <label for="puskesmas">Puskesmas :</label>
                        <input type="text" class="form-control form-control-user" name="puskesmas" id="puskesmas" value="<?= $data['puskesmas'] ?>" disabled>
                    </div>
                  <button class="btn btn-primary btn-user btn-block" type="submit" name="edit">
                    Edit Data
                  </button>
                    <?php endwhile; ?>
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
  <script src="../assets/vendor/jquery/jquery.min.js"></script>
  <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../assets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../assets/js/sb-admin-2.min.js"></script>

</body>

</html>