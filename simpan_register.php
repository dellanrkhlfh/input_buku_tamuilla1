<?php

$username = $_POST['username'];
$password = $_POST['password'];

include 'koneksi.php';
$sql = "INSERT INTO bt_login (username, password) values
       ('$username', '$password')";

$query = mysqli_query ($koneksi, $sql);
if ($query){
    ?>
    <script type="text/javascript">
        alert ('Akun Berhasil Disimpan');
        window.location='index.php';
    </script>
    <?php
}
?>