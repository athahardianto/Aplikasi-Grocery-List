<?php
session_start();
if( !isset($_SESSION["login"]) ){
    header("location: login.php");
}

require 'functions.php';
$id_akun = $_SESSION["id_akun"];

$nama_akun =implode(query("SELECT username FROM akun WHERE id_akun = '$id_akun' ")[0]);

$nama_list= query("SELECT nama_list, id_list FROM  tabellist WHERE id_akun = '$id_akun' ");

$cek = cek("SELECT nama_list FROM  tabellist WHERE id_akun = '$id_akun' ");

//cek apakah tombol submit sudah ditekan
if(isset($_POST["submit"]) ){
    
    //cek apakah data berhasil ditambahkan atau tidak
    if( namalist($_POST) > 0){
        echo "<script>
            alert('Nama List Berhasil Disimpan');
        </script>";
        $id_list = query("SELECT id_list FROM  tabellist WHERE id_akun = '$id_akun' ")[0];
        $hasil_id_list= implode($id_list);
        header("location: kategori.php?id=$hasil_id_list");
        
    }else{
        echo "<script>
            alert('Nama List Gagal Disimpan');
            document.location.href='index.php'
        </script>";
    }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>utama</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <section class="header-index">

        <div class="logout">
            <header>
                <a href="logout.php">LOG OUT</a>
            </header>
        </div>
    
        <dic class="header">
            <h2>Hai <?= $nama_akun; ?></h2>
            <h1>GROCERY LIST</h1>
            <br>
            <br>
        </div>

    </section>

    <section class="buat-sec">
        <div class="buat">
            <form action="" method="post">
                <br>
                <label for="nama_list">Buat List Kamu!</label> <br>
                <input type="text" name="nama_list" id="nama_list" > <br>
                <button type="submit" name="submit" id="submit" class="submit-btn">Simpan List!!!</button>
            </form>
            <br>
            <hr>
        </div>
    </section>
    
    <section class="list-sec">
        <div class="list">
            <ul>
                <h3>Your List</h3>

                <?php if( $cek===0 ){ ?>

                    <h5>Tidak Ada list</h4>

                <?php }else{ ?>

                    <?php foreach( $nama_list as $nali ) : ?>
                        <a href="lihatlist.php?id=<?= $nali["id_list"]; ?>"><?= $nali["nama_list"]; ?></a>  
                    <?php endforeach; ?>

                <?php }; ?>
            </ul>
        </div>
    </section>
    

</body>
</html>