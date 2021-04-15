<?php 

  session_start();
  if ($_SESSION['status'] != 'login') {
    header('Location: ../login.php?pesan=belum_login');
  }

  require_once '../clustering/vendor/autoload.php';
  include "../config/koneksi.php";

  $username = $_SESSION['username'];

  $data = mysqli_query($koneksi, "SELECT * FROM operator WHERE username='$username' ");
  $pecah = mysqli_fetch_array($data);


    // clustering
    use \HierarchicalClustering\Clustering;
    use \HierarchicalClustering\Links\AverageLink;
    use \HierarchicalClustering\Distances\EuclideanDistance;

    $kampung = array();
    $almt = '';
    $arrai_hasilll = array();

    $alamat = mysqli_query($koneksi, "SELECT alamat FROM kotajuang GROUP BY alamat");
    while($row_alamat = mysqli_fetch_assoc($alamat)) {
        $jk = mysqli_query($koneksi, "SELECT jenis_kelamin FROM kotajuang GROUP BY jenis_kelamin");
        while($row_jk = mysqli_fetch_assoc($jk)) {
            $read = mysqli_query($koneksi, "SELECT * FROM kotajuang WHERE alamat='$row_alamat[alamat]' AND jenis_kelamin='$row_jk[jenis_kelamin]' ");
            $batas = mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM kotajuang WHERE alamat='$row_alamat[alamat]' AND jenis_kelamin='$row_jk[jenis_kelamin]' "));
            $tampung = array();
                while($getData2 = mysqli_fetch_array($read)){
                    array_push($tampung, $getData2);         
                }
                $tampungHadir = array();
                $hitung = 0;
                for($j=0; $j<$batas; $j++){
                    for($i=6; $i<=17; $i++){
                        $b = $tampung[$j][$i];
                        if($b != NULL && $b != '0000-00-00'){
                            $hitung++;
                        } 
                    }
                    array_push($tampungHadir, $hitung);
                    $hitung = 0;
                }
                $rataPerJiwa = array();
                for($a=0; $a<$batas; $a++){
                    $cari = $tampungHadir[$a]/12;
                    array_push($rataPerJiwa, $cari);
                }
                $tambahRataPerJiwa = 0;
                for ($c=0; $c<$batas; $c++) { 
                    $tambahRataPerJiwa = $tambahRataPerJiwa + $rataPerJiwa[$c];
                }
                $tambahRataPerJiwa/$batas;
                array_push($arrai_hasilll, $tambahRataPerJiwa/$batas);
                if($almt != $row_alamat['alamat']){
                    array_push($kampung,$row_alamat['alamat']);
                }
                $almt = $row_alamat['alamat'];
            }        
    }

    $input = array();
    $no = 1;
    $temp_input = array();

    foreach($arrai_hasilll as $ah){
        if($no > 2){
            $no = 1;
            array_push($input,$temp_input);
            $temp_input = array();
        }
        array_push($temp_input,$ah);
        $no++;
    }
    array_push($input,$temp_input);
    if (isset($_POST['editCluster'])) {
      $maxClusters = $_POST['cluster'];
    } else {
      $maxClusters = 4;
    }
    $object = new Clustering(
        $input,
        new EuclideanDistance(),
        new AverageLink(),
        $maxClusters
    );
    $clusters = $object->getCluster();

    include '../template/judul.php';

    $judulHalaman = new judul;

    $judulHalaman->setJudul('Klusterisasi Data');

    include 'header.php';

    include 'sidebar.php';
?>

<!-- Topbar Search -->
<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
        <h3>Hasil Clustering</h3>
      </form>

      <!-- Topbar Navbar -->
      <ul class="navbar-nav ml-auto">

        <div class="topbar-divider d-none d-sm-block"></div>

        <!-- Nav Item - User Information -->
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?= ucfirst($username); ?></span>
            <img class="img-profile rounded-circle" src="../assets/img/user.png">
          </a>
          <!-- Dropdown - User Information -->
          <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="profil.php">
              <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
              Profile
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="../logout.php">
              <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
              Logout
            </a>
          </div>
        </li>

      </ul>

    </nav>
    <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

        <?php
          $batas_alamat = mysqli_num_rows(mysqli_query($koneksi, "SELECT alamat FROM kotajuang GROUP BY alamat"));
        ?>

        <form method="post" action="" class="form-inline">
          <div class="form-group">
            <input type="number" class="form-control mb-3 mr-2" name="cluster" id="cluster" placeholder="Jumlah Cluster" min="1" max="<?= $batas_alamat ?>" style="width:150px">
          </div>
          <button type="submit" class="btn btn-primary mb-3 mr-auto" name="editCluster">Ubah Jumlah Cluster</button>
          <a href="cetak.php?cluster=<?= $maxClusters ?>" class="btn btn-success mb-3 float-right">Cetak Laporan</a>
        </form>

        <div class="row">

        <?php 
        $no = 1;
        // $rata2_cluster = array();
        for ($i=0; $i < $maxClusters; $i++) { 
        ?>
            <div class="col-lg-6 mb-4">

                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h4 class="m-0 font-weight-bold text-primary"><?= "Kelompok ".$no; ?></h6>
                    <?php
                        $number = 1;
                        $rata_cluster = array();
                        for ($j=0; $j < count($clusters[$i]); $j++) { 
                            array_push($rata_cluster,$input[$clusters[$i][$j]]); 
                    ?> 

                    <?php
                        $laki = array();
                        $perm = array();
                        for ($k=0; $k < count($rata_cluster); $k++) { 
                            array_push($laki,$rata_cluster[$k][0]);
                            array_push($perm,$rata_cluster[$k][1]);
                            } 
                            $rata_pria = array_sum($laki) / count($rata_cluster);
                            $rata_wanita = array_sum($perm) / count($rata_cluster);
                    ?>
                    <h6 class="m-0 font-weight-bold mt-2"><?= $number.". Desa ".$kampung[$clusters[$i][$j]]; $number++; } ?></h6>
                    </div>

                    <div class="card-body">
                        <?php  if ($rata_pria < 0.5 ) { ?>
                        <h4 class="small font-weight-bold">Tingkat imunisasi bayi laki-laki <span class="float-right"><?= round($rata_pria*100)."%"; ?></span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-danger" role="progressbar" style="width: <?= round($rata_pria*100)."%"; ?>" aria-valuenow="<?= round($rata_pria*100) ?>"
                            aria-valuemin="0" aria-valuemax="1"><?= round($rata_pria,3); ?>
                            </div>
                        </div>
                        <?php } elseif ($rata_pria < 0.8 && $rata_pria >= 0.5) { ?>
                        <h4 class="small font-weight-bold">Tingkat imunisasi bayi laki-laki <span class="float-right"><?= round($rata_pria*100)."%"; ?></span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: <?= round($rata_pria*100)."%"; ?>" aria-valuenow="<?= round($rata_pria*100) ?>"
                            aria-valuemin="0" aria-valuemax="1"><?= round($rata_pria,3); ?>
                            </div>
                        </div>
                        <?php } elseif ($rata_pria <=1 && $rata_pria >= 0.8) { ?>
                        <h4 class="small font-weight-bold">Tingkat imunisasi bayi laki-laki <span class="float-right"><?= round($rata_pria*100)."%"; ?></span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-success" role="progressbar" style="width: <?= round($rata_pria*100)."%"; ?>" aria-valuenow="<?= round($rata_pria*100) ?>"
                            aria-valuemin="0" aria-valuemax="1"><?= round($rata_pria,3); ?>
                            </div>
                        </div>
                        <?php } ?>

                        <?php  if ($rata_wanita < 0.5 ) { ?>
                        <h4 class="small font-weight-bold">Tingkat imunisasi bayi perempuan <span class="float-right"><?= round($rata_wanita*100)."%"; ?></span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-danger" role="progressbar" style="width: <?= round($rata_wanita*100)."%"; ?>" aria-valuenow="<?= round($rata_wanita*100) ?>"
                            aria-valuemin="0" aria-valuemax="1"><?= round($rata_wanita,3); ?>
                            </div>
                        </div>
                        <?php } elseif ($rata_wanita < 0.8 && $rata_wanita >= 0.5) { ?>
                        <h4 class="small font-weight-bold">Tingkat imunisasi bayi perempuan <span class="float-right"><?= round($rata_wanita*100)."%"; ?></span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: <?= round($rata_wanita*100)."%"; ?>" aria-valuenow="<?= round($rata_wanita*100) ?>"
                            aria-valuemin="0" aria-valuemax="1"><?= round($rata_wanita,3); ?>
                            </div>
                        </div>
                        <?php } elseif ($rata_wanita <=1 && $rata_wanita >= 0.8) { ?>
                        <h4 class="small font-weight-bold">Tingkat imunisasi bayi perempuan <span class="float-right"><?= round($rata_wanita*100)."%"; ?></span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-success" role="progressbar" style="width: <?= round($rata_wanita*100)."%"; ?>" aria-valuenow="<?= round($rata_wanita*100) ?>"
                            aria-valuemin="0" aria-valuemax="1"><?= round($rata_wanita,3); ?>
                            </div>
                        </div>
                        <?php } ?>

                        <?php  if ($rata_pria < 0.5 && $rata_wanita < 0.5 ) : ?>
                          <h4 class="small font-weight-bold">Kesadaran akan imunisasi untuk bayi laki-laki dan perempuan pada kelompok ini masih <span class="text-danger">sangat rendah</span>.</h4>
                        <?php  elseif ($rata_pria < 0.5 && $rata_wanita < 0.8 ) : ?>
                          <h4 class="small font-weight-bold">Kesadaran akan imunisasi untuk bayi laki-laki pada kelompok ini masih <span class="text-danger">sangat rendah</span> sedangkan untuk bayi perempuan sudah <span class="text-warning">mulai baik</span>.</h4>
                        <?php  elseif ($rata_pria < 0.5 && $rata_wanita > 0.8 ) : ?>
                          <h4 class="small font-weight-bold">Kesadaran akan imunisasi untuk bayi laki-laki pada kelompok ini masih <span class="text-danger">sangat rendah</span> sedangkan untuk bayi perempuan sudah <span class="text-success">sangat baik</span>.</h4>
                        <?php  elseif ($rata_pria < 0.8 && $rata_wanita < 0.5 ) : ?>
                          <h4 class="small font-weight-bold">Kesadaran akan imunisasi untuk bayi laki-laki pada kelompok ini sudah<span class="text-primary">mulai baik</span> sedangkan untuk bayi perempuan masih <span class="text-danger">sangat rendah</span>.</h4>
                        <?php  elseif ($rata_pria < 0.8 && $rata_wanita < 0.8 ) : ?>
                          <h4 class="small font-weight-bold">Kesadaran akan imunisasi untuk bayi laki-laki dan perempuan pada kelompok ini sudah <span class="text-warning">mulai baik</span>.</h4>
                        <?php  elseif ($rata_pria < 0.8 && $rata_wanita > 0.8 ) : ?>
                          <h4 class="small font-weight-bold">Kesadaran akan imunisasi untuk bayi laki-laki pada kelompok ini sudah <span class="text-warning">mulai baik</span> sedangkan untuk bayi perempuan sudah <span class="text-success">sangat baik</span>.</h4>
                        <?php  elseif ($rata_pria > 0.8 && $rata_wanita < 0.5 ) : ?>
                          <h4 class="small font-weight-bold">Kesadaran akan imunisasi untuk bayi laki-laki pada kelompok ini sudah<span class="text-success">sangat baik</span> sedangkan untuk bayi perempuan masih <span class="text-danger">sangat rendah</span>.</h4>
                        <?php  elseif ($rata_pria > 0.8 && $rata_wanita < 0.8 ) : ?>
                          <h4 class="small font-weight-bold">Kesadaran akan imunisasi untuk bayi laki-laki pada kelompok ini sudah<span class="text-success">sangat baik</span> sedangkan untuk bayi perempuan sudah <span class="text-warning">mulai baik</span>.</h4>
                        <?php  elseif ($rata_pria > 0.8 && $rata_wanita > 0.8 ) : ?>
                          <h4 class="small font-weight-bold">Kesadaran akan imunisasi untuk bayi laki-laki dan bayi perempuan pada kelompok ini sudah <span class="text-success">sangat baik</span>.</h4>
                        <?php endif;  ?>
                    </div>
                </div>

            </div>

            <?php $no++; } ?>

          </div>

      </div>
      <!-- End of Main Content -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Bootstrap core JavaScript-->
  <script src="../assets/vendor/jquery/jquery.min.js"></script>
  <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../assets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../assets/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="../assets/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="../assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="../assets/js/demo/datatables-demo.js"></script>

</body>

</html>