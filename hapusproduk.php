<?php
session_start();
if( !isset($_SESSION["login"]) ){
    header("location: index.php");
}
require 'functions.php';

$id= $_GET["id"];
$id_list = $_GET["id_list"];

if(hapusproduk($id) > 0 ){
    echo "<script>
            alert('Data Berhasil Dihapus');
            document.location.href='lihatlist.php?id=$id_list'
        </script>";
}else{
    echo "<script>
            alert('Data Gagal Dihapus');
            document.location.href='lihatlist.php?id=$id_list'
        </script>";
}

?>