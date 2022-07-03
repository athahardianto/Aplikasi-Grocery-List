<?php
session_start();
if( !isset($_SESSION["login"]) ){
    header("location: index.php");
}
require 'functions.php';

$id= $_GET["id"];

if(hapuslist($id) > 0 ){
    echo "<script>
            alert('Data Berhasil Dihapus');
            document.location.href='index.php?id=$id'
        </script>";
}else{
    echo "<script>
            alert('Data Gagal Dihapus');
            document.location.href='index.php?id=$id'
        </script>";
}

?>