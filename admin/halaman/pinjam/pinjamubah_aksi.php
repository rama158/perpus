<?php 
include '../../../koneksi.php'; 

if (isset($_POST['tombolubah'])) {
    $idpinjam = $_POST['idpinjam'];
    $idpetugas = $_POST['idpetugas'];
    $idsiswa = $_POST['idsiswa'];
    $idbuku = $_POST['idbuku'];
    $waktu = $_POST['created_at'];
    }
     
    $sql = "UPDATE tbl_peminjaman SET idpetugas='$idpetugas', idsiswa='$idsiswa', idbuku='$idbuku', created_at='$waktu' where idpinjam='$idpinjam'";
    $query = mysqli_query($conn, $sql);

    if($query) {
        header('Location: ../../index.php?page=pinjam');
    } else {
        header('Location: ../../index.php?page=pinjam');
    }
?>