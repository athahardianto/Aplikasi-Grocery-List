<?php

require 'functions.php';

if( isset($_POST["register"]) ){
    if(registrasi($_POST) > 0 ){
        echo"<script>
            alert('user baru berhasil ditambahkan!');
            document.location.href='login.php'
        </script>";
    }else{
        echo mysqli_error($conn);
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>regis</title>
    <style>
        label{
            display:block;
        }
    </style>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="header-regis">
        <br>
        <br>
        <h1>Akun Baru</h1>
        <br>
        <br>
    </div>

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

        <div class="password2">
            <label for="password2">Konfirmasi Password:</label>
            <input type="password" name="password2" id="password2">
        </div>

        <div class="register">
            <button type="submit" name="register" id="register">Register</button>
        </div>

        <div class="logakn">
            <br>
            <p>Sudah punya akun? <a href="login.php">Login</a></p>
        </div>

    </form>

</body>
</html>