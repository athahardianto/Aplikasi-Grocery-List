<?php
session_start();
if( !isset($_SESSION["login"]) ){
    header("location: login.php");
}
require 'functions.php';

$id= $_GET["id"];

$nama_list= query("SELECT * FROM tabellist WHERE id_list = '$id' ")[0];

$banyak_list= query("SELECT * FROM tabellistbahan WHERE id_list = '$id'  ");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lihat List</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <section class="header-lht">
        <br>
        <h1><?= $nama_list["nama_list"]; ?></h1>
        <br>
    </section>
    
    <section class="body-lht">
        <br>
        <table>
            <tr>
                <td>Nama Produk</td>
                <td>Aksi</td>
            </tr>
            <?php foreach($banyak_list as $bali) : ?>
            <tr>
            
                <td>
                    <?= $bali["nama_list_bahan"]; ?>
                </td>
                <td>
                    <a href="hapusproduk.php?id=<?= $bali["id_list_bahan"]; ?> &id_list=<?= $id; ?>">Hapus Produk</a>
                </td>
                
            </tr>
            <?php endforeach; ?>  
        </table><br><br>

        <a href="kategori.php?id=<?= $nama_list["id_list"]; ?>">Tambah</a><br>
        <a href="hapuslist.php?id=<?= $nama_list["id_list"] ?>">Hapus List</a><br>
        <a href="index.php">KEMBALI</a>
    </section>
</body>
</html>