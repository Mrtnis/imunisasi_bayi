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

$judulHalaman->setJudul('Halaman Profil');

include 'header.php';

include 'sidebar.php';
?>
          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <h3>Data Operator</h3>
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
              if($_GET['pesan'] === 'edit') {
                echo "<div class='alert alert-success alert-dismissible fade show' role='alert'>
                Data anda berhasil <strong>diubah</strong> 
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
              <div class="table-responsive ">
                <table class="table table-bordered" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Username</th>
                        <th scope="col">Password</th>
                        <th scope="col">Nama Operator</th>
                        <th scope="col">Divisi</th>
                        <th scope="col">Puskesmas</th>
                        <th scope="col">Aksi</th>
                    </tr>
                  </thead>
                    <?php
                        $number = 1;
                        $data = mysqli_query($koneksi, "SELECT * FROM operator where username='$username' ");
                        foreach ($data as $op) {
                    ?>
                  <tbody>
                    <tr>
                        <td><?= $number ?></td>
                        <td><?= $op["username"] ?></td>
                        <td><?= $op["password"] ?></td>
                        <td><?= $op["nama"] ?></td>
                        <td><?= $op["divisi"] ?></td>
                        <td><?= $op["puskesmas"] ?></td>
                        <td>
                            <a href="edit_data_opr.php?id=<?= $op['id'] ?>" class="fas fa fa-edit text-success"> Ubah Data</a>
                        </td>
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