<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Buku Tamu</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link  rel="stylesheet" href="style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="aot.png" alt="" widht="50px" height="50px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="dashbord.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="lihat_pengguna.php">Data Pengguna</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="lihat_buku.php">Data Buku</a>
        </li>
      </ul>
      <form class="d-flex" action="index.php">
        <button class="btn btn-outline-success" type="submit">Logout</button>
      </form>
    </div>
  </div>
</nav>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<div>
<h2 class="illa">TABEL PENGGUNA</h2>
<table class="table table-bordered illa">
      <tr>
      <th>No</th>
        <th>Nama</th>
        <th>Tanggal Lahir</th>
        <th>Alamat</th>
        <th>Username</th>
        <th>Password</th>
        <th>Aksi</th>
       <?php
       include 'koneksi.php';
       $sql = "SELECT*FROM bt_user";
       $query = mysqli_query ($koneksi, $sql);
       $No=1;
       while ($data=mysqli_fetch_array($query)){?>
       <tr>
           <td><?= $No++; ?></td>  
           <td><?php echo $data['nama'];?></td>
           <td><?php echo $data['ttl'];?></td>
           <td><?php echo $data['alamat'];?></td>
           <td><?php echo $data['username'];?></td>
           <td><?php echo $data['password'];?></td>
           <td>
           <a href="hapus1.php?id=<?php echo $data['no'];?>"
           onclick="return confirm('Apakah Anda Yakin Ingin Menghapus.?')">
               <span class="text"></span>Hapus</Details> </span>
          </a>
          </td>
       </tr>
       <?php } ?> 
       </table>
       <form method="post" action="tambah_pengguna.php" class="illa">
           <button type="submit">Tambah</button>
       </form>
</div>
</body>
</html>