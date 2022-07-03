<?php
session_start();
if( !isset($_SESSION["login"]) ){
    header("location: login.php");
}

require 'functions.php';

$id_list = $_GET["id"];

$kategori= query("SELECT * FROM tabelkategori");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>kategori</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <section class="header-kat">

        <br>
        <h1>PILIH KATEGORI: </h1>
        <br>

    </section>
    
    <section class="body-kat">

        <table>
            <?php foreach( $kategori as $row ) : ?>
            <ul>
                <li><a href="bahan.php?id=<?= $row["id_kategori"]; ?> &id_list=<?= $id_list; ?>"><?= $row["nama_kategori"]; ?></a></li>
            </ul>
            <?php endforeach; ?>
        </table>
        
    </section>
</body>
</html>