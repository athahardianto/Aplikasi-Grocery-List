<?php
session_start();
if( isset($_SESSION["login"]) ){
    header("location: index.php");
}
require 'functions.php';

if( isset($_POST["login"]) ){

    $username = $_POST["username"];
    $password = $_POST["password"];

    $result = mysqli_query($conn, "SELECT * FROM akun WHERE username = '$username' " );
    //cek username
    if( mysqli_num_rows($result)===1 ){
        //cek password
        $row = mysqli_fetch_assoc($result);
        if( password_verify($password, $row["password"]) ){
            //set session
            $_SESSION["login"]=true;
            $_SESSION["id_akun"] = $row["id_akun"];  

            header("location: index.php");
            exit;
        }
    }

    $error = true;
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <style>
        label{
            display:block;
        }
    </style>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <section class="header-log">
         
        <br><br>
        <div class="header">
            <h1>Login</h1>
        </div>
        <br><br>

    </section>
   
    
    <?php if( isset($error)): ?>
        <p style="color:red; font-style:italic ">username atau password salah !</p>
    <?php endif; ?>

    <section class="body-log">

        <form action="" method="post">

            <div class="username">
                <br>
                <label for="username">Username:</label>
                <input type="text" name="username" id="username">
            </div>

            <div class="password">
                <label for="password">Password:</label>
                <input type="password" name="password" id="password">
            </div>

            <div class="submit">
                <button type="submit" name="login" id="login">Login</button>
            </div>

            <div class="newacc">
                <br>
                <p>Belum punya akun? <a href="registrasi.php">Buat akun baru</a></p>
            </div>

        </form>

    </section>
</body>
</html>