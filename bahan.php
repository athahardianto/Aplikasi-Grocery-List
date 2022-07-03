<?php
session_start();
if( !isset($_SESSION["login"]) ){
    header("location: login.php");
}
require 'functions.php';


$id= $_GET["id"];

$id_list = $_GET["id_list"];

$tabel_bahan= query("SELECT * FROM tabelbahan WHERE id_kategori = '$id' ");

if(isset($_POST["masukkan"]) ){
    
    //cek apakah data berhasil diubah atau tidak
    if( listbahan($_POST) > 0){
        echo "<script>
            alert('List Berhasil Diubah');
        </script>";
    }else{
        echo "<script>
            alert('List Gagal Diubah');
        </script>";
    }

}
if( isset($_POST["submit"]) ){
    header("location: lihatlist.php?id=$id_list");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>bahan</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
        

    <section class="header-bhn">

        <div class="judul">
            <br>
            <h1>PILIH PRODUK</h1>
            <br>
        </div>

    </section>

    <section class="body-bhn">
    
        <?php foreach( $tabel_bahan as $tabah ) : ?>
        <form action="" method="post">
            <ul>
                <li>
                    <p><?= $tabah["nama_bahan"]; ?></p>
                    <input type="hidden" name="nama_list_bahan" id="nama_list_bahan" value="<?= $tabah["nama_bahan"]; ?>">
                    <input type="hidden" name="id_list" id="id_list" value="<?= $id_list; ?>">
                    <button type="submit" name="masukkan" class="masuk-btn">Masukkan</button>
                </li>
            </ul>
        </form>
        <?php endforeach; ?>
        <form action="" method="post">
            <button type="submit" name="submit" class="submit-btn-bhn">Simpan List</button>
            <a href="kategori.php?id=<?= $id_list; ?>" class="kategori-btn-bhn">Kategori</a>
        </form>

    </section>
</body>
</html>