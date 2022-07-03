<?php

$conn= mysqli_connect("localhost", "root", "", "coba1rpl");

function query($query){
    global $conn;
    $result= mysqli_query( $conn, $query);
    $rows= [];
    while($row= mysqli_fetch_assoc($result) ){
        $rows[]= $row;
    }
    return $rows;
}

function cek($data){
    global $conn;
    $result= mysqli_query( $conn, $data);
    $cek = mysqli_num_rows($result);
    return $cek;
}

function namalist($data){
    global $conn;

    $nama_list= htmlspecialchars($data["nama_list"]);
    $id_akun= $_SESSION["id_akun"];

    $query= "INSERT INTO tabellist values ('','$nama_list', '$id_akun')";
    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}

function listbahan($list){
    global $conn;

    $nama_list_bahan= htmlspecialchars($list["nama_list_bahan"]);
    $id_list= ($list["id_list"]);
    $id_akun= $_SESSION["id_akun"];

    $query= "INSERT INTO tabellistbahan values ('','$nama_list_bahan', '$id_list', '$id_akun' )";
    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}

function registrasi($data){
    global $conn;

    $username = strtolower(stripslashes($data["username"]));
    $password= mysqli_real_escape_string($conn, $data["password"]);
    $password2= mysqli_real_escape_string($conn, $data["password2"]);

    //cek akun sudah ada atau tidak (melihat nama username sama atau tidak)
    $result = mysqli_query($conn, "SELECT username FROM akun WHERE username = '$username' " );
    if(mysqli_fetch_assoc($result) ){
        echo "<script>
            alert('username sudah didaftarkan');
        </script>";
        return false;
    }

    //cek konfirmasi password
    if( $password !== $password2 ){
        echo"<script>
        alert('konfirmasi password salah');
        </script>";
        return false;
    }

    //enkripsi password
    $password = password_hash($password, PASSWORD_DEFAULT);

    //tambahkan user baru ke database
    mysqli_query($conn, "INSERT INTO akun VALUES('','$username','$password') ");

    return mysqli_affected_rows($conn);
}

function hapuslist($id){
    global $conn;

    mysqli_query($conn, "DELETE tabellist.*, tabellistbahan.* FROM tabellist, tabellistbahan WHERE tabellist.id_list= '$id' AND tabellistbahan.id_list = '$id' ");

    return mysqli_affected_rows($conn);
}

function hapusproduk($id){
    global $conn;

    mysqli_query($conn, "DELETE FROM tabellistbahan WHERE id_list_bahan= '$id' ");

    return mysqli_affected_rows($conn);
}

?>
