<?php
session_start();

if ($_SESSION['status'] != 'login') {
  header('Location: ../login.php?pesan=belum_login');
}

include '../config/koneksi.php';

$username = $_SESSION['username'];

$data = mysqli_query($koneksi, "SELECT * FROM operator WHERE username='$username' ");
$pecah = mysqli_fetch_array($data);

include '../template/judul.php';

$judulHalaman = new judul;

$judulHalaman->setJudul('Tabel Data Imunisasi');

include 'header.php';

include 'sidebar.php';
?>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <h3>Data Imunisasi Bayi</h3>
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

          <!-- Page Heading -->

          <?php
            if (isset($_GET['pesan'])) {
              if($_GET['pesan'] === 'terhapus') {
                echo "<div class='alert alert-danger alert-dismissible fade show' role='alert'>
                Data imunisasi bayi berhasil <strong>dihapus</strong> 
                <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                  <span aria-hidden='true'>&times;</span>
                </button>
                </div>";
              } elseif ($_GET['pesan'] === 'edit') {
                echo "<div class='alert alert-success alert-dismissible fade show' role='alert'>
                Data imunisasi bayi berhasil <strong>diubah</strong> 
                <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                  <span aria-hidden='true'>&times;</span>
                </button>
                </div>";
              } elseif ($_GET['pesan'] === 'berhasil') {
                echo "<div class='alert alert-primary alert-dismissible fade show' role='alert'>
                Data imunisasi bayi berhasil <strong>ditambah</strong> 
                <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                  <span aria-hidden='true'>&times;</span>
                </button>
                </div>";
              }
            }
          ?>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-body">
                <a href="tambah_data_imunisasi.php"  class="btn btn-primary mb-3"><span class="fas fa fa-plus"></span> Tambah Data Imunisasi Bayi</a>
                <a href="clustering.php"  class="btn btn-success mb-3"><span class="fas fa fa-book"></span> Kelompokkan Data Imunisasi Bayi</a>
              <div class="table-responsive ">
                <table class="table table-bordered" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col" >Aksi</th>
                        <th scope="col">Nama Bayi</th>
                        <th scope="col">Jenis Kelamin</th>
                        <th scope="col">Tanggal Lahir</th>
                        <th scope="col">Nama Orang Tua</th>
                        <th scope="col">Alamat</th>
                        <th scope="col">HB 0</th>
                        <th scope="col">BCG</th>
                        <th scope="col">POL 1</th>
                        <th scope="col">DPT HB HIB 1</th>
                        <th scope="col">POL 2</th>
                        <th scope="col">DPT HB HIB 2</th>
                        <th scope="col">POL 3</th>
                        <th scope="col">DPT HB HIB 3</th>
                        <th scope="col">POL 4</th>
                        <th scope="col">IPV</th>
                        <th scope="col">Campak</th>
                        <th scope="col">Imunisasi Lengkap</th>
                    </tr>
                  </thead>
                    <?php
                        $number = 1;
                        $data = mysqli_query($koneksi, "SELECT * FROM kotajuang ORDER BY id_imunisasi DESC");
                        foreach ($data as $bayi) {
                    ?>
                  <tbody>
                    <tr>
                        <td><?= $number ?></td>
                        <td class="text-center">
                            <a href="edit_data_bayi.php?id=<?= $bayi['id_imunisasi'] ?>" class="fas fa fa-edit text-success"></a> 
                            <hr>
                            <a href="delete_data_bayi.php?id=<?= $bayi['id_imunisasi'] ?>" class="fas fa fa-trash text-danger"></a>
                            <hr>
                            <a href="detail_bayi.php?id=<?= $bayi['id_imunisasi'] ?>" class="fas fa fa-book text-primary"></a>
                        </td>
                        <td><?= $bayi["nama_bayi"] ?></td>
                        <td><?= $bayi["jenis_kelamin"] ?></td>
                        <td><?= $bayi["tanggal_lahir"] ?></td>
                        <td><?= $bayi["nama_ortu"] ?></td>
                        <td><?= $bayi["alamat"] ?></td>
                        <td><?= $bayi["hb_0"] ?></td>
                        <td><?= $bayi["bcg"] ?></td>
                        <td><?= $bayi["pol_1"] ?></td>
                        <td><?= $bayi["dpt_hb_hib_1"] ?></td>
                        <td><?= $bayi["pol_2"] ?></td>
                        <td><?= $bayi["dpt_hb_hib_2"] ?></td>
                        <td><?= $bayi["pol_3"] ?></td>
                        <td><?= $bayi["dpt_hb_hib_3"] ?></td>
                        <td><?= $bayi["pol_4"] ?></td>
                        <td><?= $bayi["ipv"] ?></td>
                        <td><?= $bayi["campak"] ?></td>
                        <td><?= $bayi["imunisasi_lengkap"] ?></td>
                    </tr>
                  </tbody>
                  <?php $number++; } ?>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

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