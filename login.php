<?php
session_start();

if (isset($_SESSION['login'])) {
    header("Location: index.php");
    exit;
}


require 'functions.php';

$no = 1;
$handphone = query("SELECT * FROM technology");

if (isset($_POST['login'])) {

    $login = login($_POST);
}

// tombol cari ditekan
if (isset($_POST['cari'])) {
    $handphone = cari($_POST['keywoard']);
}
?>




<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


    <!-- link google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;800&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <!-- boxicon link -->
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="style.css">

    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark shadow-sm fixed-top" style="background-color:#2a2a2a">
        <div class="container-fluid">
            <h3 class="navbar-brand">Technology Handphone</h3>
            <li class="nav-item navbar-nav me-auto mb-2 mb-lg-0">
                <a class="nav-link active text-white" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item dropdown navbar-nav me-auto mb-2 mb-lg-0">
                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Handphone Series
                </a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="none.php">None</a></li>
                    <li><a class="dropdown-item" href="pm.php">Pro Max</a></li>
                </ul>
            </li>
            <div class="collapse navbar-collapse" id="navbarSupportedContent"></div>
            <form action="" method="POST" class="d-flex">
                <input type="text" name="keywoard" placeholder="Masukkan Pencarian..." autocomplete="off" class="keyword form-control me-2">
                <button type="submit" name="cari" class="btn btn-dark" class="tombol-cari-user" style="border: 1px solid white;"><i class='bx bx-search'></i></button>
            </form>

        </div>
        </div>
    </nav>

    <h3 class="text-center mb-4 fw-bold" style="padding-top:100px;">Product</h3>
    <div class="container ">

        <div class="row">
            <?php foreach ($handphone as $hp) : ?>
                <div class="col-lg-4 col-md-6 my-2  d-flex justify-content-around ">
                    <div class="card" style="width: 18rem;">
                        <img src="img/<?= $hp["gambar_produk"]; ?>" class="card-img-top" alt="...">
                        <div class=" card-body text-center">
                            <h5 class="card-title"><?= $hp["nama_produk"]; ?></h5>
                            <p><?= $hp["harga_beli"]; ?></p>
                            <a href="detail.php?id=<?= $hp["id"]; ?>" class="btn btn-dark mb-3">View Detail</a> <br>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        
    </div>
                

    <div style="background-color:#2a2a2a;">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#fff" fill-opacity="1" d="M0,192L17.1,181.3C34.3,171,69,149,103,149.3C137.1,149,171,171,206,192C240,213,274,235,309,240C342.9,245,377,235,411,202.7C445.7,171,480,117,514,101.3C548.6,85,583,107,617,117.3C651.4,128,686,128,720,122.7C754.3,117,789,107,823,138.7C857.1,171,891,245,926,250.7C960,256,994,192,1029,186.7C1062.9,181,1097,235,1131,234.7C1165.7,235,1200,181,1234,181.3C1268.6,181,1303,235,1337,266.7C1371.4,299,1406,309,1423,314.7L1440,320L1440,0L1422.9,0C1405.7,0,1371,0,1337,0C1302.9,0,1269,0,1234,0C1200,0,1166,0,1131,0C1097.1,0,1063,0,1029,0C994.3,0,960,0,926,0C891.4,0,857,0,823,0C788.6,0,754,0,720,0C685.7,0,651,0,617,0C582.9,0,549,0,514,0C480,0,446,0,411,0C377.1,0,343,0,309,0C274.3,0,240,0,206,0C171.4,0,137,0,103,0C68.6,0,34,0,17,0L0,0Z"></path></svg>
        <div class="row justify-content-center mt-5" style="padding-top:80px; padding-bottom:80px;">

            <div class="card" style="width: 23rem;">
                <div class="box">
                    <div class="icon text-center pt-3">
                        <i class="bx bxs-user-circle fs-1 text-center"></i>
                    </div>
                    <div class="card-body ">
                        <h4 class="card-title text-center">Login</h4>                     
                        <form method="POST" action="">
                            <div class="mb-3">
                                <label for="username" class="form-label">Username</label>
                                <input type="type" class="form-control" id="username" name="username" placeholder="username" id="username" required>
                                <div id="emailHelp" class="form-text"></div>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="password" id="password" required>
                            </div>
                            <?php if (isset($login['error'])) : ?>
                            <p style="color: red;"><?= $login['pesan']; ?></p>
                        <?php endif; ?>
                            <button type="submit" class="btn btn-dark" name="login">Sign In</button>

                            <button type="button" class="btn btn-dark" name="register">
                                <a href="register.php" class=" text-decoration-none text-white">Sign Up</a>
                            </button>
                        </form>

                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

                        <script src="js/script.user.js"></script>

</body>

</html>