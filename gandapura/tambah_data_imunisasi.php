<?php 

// session
session_start();
if ($_SESSION['status'] != 'login') {
    header('Location: login.php?pesan=belum_login');
}

include '../config/koneksi.php';

$username = $_SESSION['username'];

$data = mysqli_query($koneksi, "SELECT * FROM operator WHERE username='$username' ");
$pecah = mysqli_fetch_array($data);

// proses input
if (isset($_POST['input'])) {
    $nama_bayi = $_POST['nama_bayi'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $nama_ortu = $_POST['nama_ortu'];
    $alamat = $_POST['alamat'];
    $hb_0 = $_POST['hb_0'];
    $bcg = $_POST['bcg'];
    $pol_1 = $_POST['pol_1'];
    $dpt_hb_hib_1 = $_POST['dpt_hb_hib_1'];
    $pol_2 = $_POST['pol_2'];
    $dpt_hb_hib_2 = $_POST['dpt_hb_hib_2'];
    $pol_3 = $_POST['pol_3'];
    $dpt_hb_hib_3 = $_POST['dpt_hb_hib_3'];
    $pol_4 = $_POST['pol_4'];
    $ipv = $_POST['ipv'];
    $campak = $_POST['campak'];
    $imunisasi_lengkap = $_POST['imunisasi_lengkap'];

    mysqli_query($koneksi, "INSERT INTO gandapura (id_imunisasi,nama_bayi,jenis_kelamin,tanggal_lahir,nama_ortu,alamat,hb_0,bcg,pol_1,dpt_hb_hib_1,pol_2,dpt_hb_hib_2,pol_3,dpt_hb_hib_3,pol_4,ipv,campak,imunisasi_lengkap) VALUES('','$nama_bayi','$jenis_kelamin','$tanggal_lahir','$nama_ortu','$alamat','$hb_0','$bcg','$pol_1','$dpt_hb_hib_1','$pol_2','$dpt_hb_hib_2','$pol_3','$dpt_hb_hib_3','$pol_4','$ipv','$campak','$imunisasi_lengkap') ");
    header("Location: tabel_imunisasi_bayi.php?pesan=berhasil");
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

  <title>Puskesmas - Input Data</title>

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
                  <h1 class="h4 text-gray-900 mb-4">Input Data Imunisasi Bayi</h1>
                </div>

                <form class="user" action="" method="post">
                    <div class="form-group">
                        <label for="nama_bayi">Nama Bayi :</label>
                        <input type="text" class="form-control form-control-user" name="nama_bayi" id="nama_bayi">
                    </div>
                    <div class="form-group">
                        <label for="jenis_kelamin">Jenis Kelamin :</label>
                        <select name="jenis_kelamin" class="custom-select" id="jenis_kelamin">
                        <option value="laki-laki">Laki-laki</option>
                        <option value="perempuan">Perempuan</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="tanggal_lahir">Tanggal Lahir :</label>
                        <input type="date" class="form-control form-control-user" name="tanggal_lahir" id="tanggal_lahir">
                    </div>
                    <div class="form-group">
                        <label for="nama_ortu">Nama Orang Tua :</label>
                        <input type="text" class="form-control form-control-user" name="nama_ortu" id="nama_ortu">
                    </div>
                    <div class="form-group">
                        <label for="alamat">Alamat :</label>
                        <select name="alamat" id="alamat" class="custom-select">
                        <?php
                            $kec = mysqli_query($koneksi, "SELECT * FROM desa WHERE kecamatan='Gandapura'");
                            while ($desa = mysqli_fetch_array($kec)) :
                        ?>
                        <option value="<?= $desa['nama_desa'] ?>"><?= $desa['nama_desa'] ?></option>
                        <?php endwhile; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="hb_0">HB 0 :</label>
                        <input type="date" class="form-control form-control-user" name="hb_0" id="hb_0" >
                    </div>
                    <div class="form-group">
                        <label for="bcg">BCG :</label>
                        <input type="date" class="form-control form-control-user" name="bcg" id="bcg" >
                    </div>
                    <div class="form-group">
                        <label for="pol_1">POL 1 :</label>
                        <input type="date" class="form-control form-control-user" name="pol_1" id="pol_1" >
                    </div>
                    <div class="form-group">
                        <label for="dpt_hb_hib_1">DPT HB HIB 1 :</label>
                        <input type="date" class="form-control form-control-user" name="dpt_hb_hib_1" id="dpt_hb_hib_1" >
                    </div>
                    <div class="form-group">
                        <label for="pol_2">POL 2 :</label>
                        <input type="date" class="form-control form-control-user" name="pol_2" id="pol_2" >
                    </div>
                    <div class="form-group">
                        <label for="dpt_hb_hib_2">DPT HB HIB 2 :</label>
                        <input type="date" class="form-control form-control-user" name="dpt_hb_hib_2" id="dpt_hb_hib_2" >
                    </div>
                    <div class="form-group">
                        <label for="pol_3">POL 3 :</label>
                        <input type="date" class="form-control form-control-user" name="pol_3" id="pol_3" >
                    </div>
                    <div class="form-group">
                        <label for="dpt_hb_hib_3">DPT HB HIB 3 :</label>
                        <input type="date" class="form-control form-control-user" name="dpt_hb_hib_3" id="dpt_hb_hib_3" >
                    </div>
                    <div class="form-group">
                        <label for="pol_4">POL 4 :</label>
                        <input type="date" class="form-control form-control-user" name="pol_4" id="pol_4" >
                    </div>
                    <div class="form-group">
                        <label for="ipv">IPV :</label>
                        <input type="date" class="form-control form-control-user" name="ipv" id="ipv" >
                    </div>
                    <div class="form-group">
                        <label for="campak">CAMPAK :</label>
                        <input type="date" class="form-control form-control-user" name="campak" id="campak" >
                    </div>
                    <div class="form-group">
                        <label for="imunisasi_lengkap">Imunisasi Lengkap :</label>
                        <input type="date" class="form-control form-control-user" name="imunisasi_lengkap" id="imunisasi_lengkap" >
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
  <script src="../assets/vendor/jquery/jquery.min.js"></script>
  <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../assets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../assets/js/sb-admin-2.min.js"></script>

</body>

</html>