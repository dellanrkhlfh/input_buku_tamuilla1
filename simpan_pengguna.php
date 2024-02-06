<?php

$nama = $_POST['nama'];
$ttl = $_POST['ttl'];
$alamat = $_POST['alamat'];
$username = $_POST['username'];
$password = $_POST['password'];

include 'koneksi.php';
$sql = "INSERT INTO bt_user (nama, ttl, alamat, username, password) values
       ('$nama', '$ttl', '$alamat', '$username', '$password')";

$query = mysqli_query ($koneksi, $sql);
if ($query){ 
    ?>
    <script type="text/javascript">
        alert ('Data Pengguna Berhasil Disimpan');
        window.location='lihat_pengguna.php';
    </script>
    <?php
}
?>