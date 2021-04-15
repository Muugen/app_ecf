<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1, initial-scale=1">
    <title>Admin Page</title>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/formLogin.css">
</head>
<body>
    <?php if(isset($_SESSION['Auth'])){ ?>
    <input type="checkbox" id="menu-toggle">

    <div class="sidebar">

        <div class="brand">
            <span class="las la-cube"></span>
            <h2>Le Cube</h2>
        </div>

        <div class="sidemenu">
            <div class="side-user">
                <div class="user">
                    <small><?php if(isset($_SESSION['Auth']))
                            echo $_SESSION['Auth']->prenom;
                            echo ' ';
                            echo $_SESSION['Auth']->nom;?>
                    </small>
                </div>
                <div>
                    <a href="index.php?action=logout"><i class="las la-sign-out-alt"></i></a>
                </div>
            </div>

            <ul>
                <li>
                    <a href="<?php ?>">
                        <span class="las la-home"></span>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?action=list_a">
                        <span class="las la-newspaper"></span>
                        <span>Articles</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?action=list_cat">
                        <span class="las la-archive"></span>
                        <span>Categorie</span>
                    </a>
                </li>
                <?php if($_SESSION['Auth']->id_g  != 3){ ?>
                <li>
                    <a href="index.php?action=list_g">
                        <span class="las la-id-card"></span>
                        <span>Grade utilisateur</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?action=list_u">
                        <span class="las la-newspaper"></span>
                        <span>Liste des utilisateur</span>
                    </a>
                </li>
                <?php if($_SESSION['Auth']->id_g  == 1){ ?>
                <li>
                    <a href="index.php?action=register">
                        <span class="las la-user-plus"></span>
                        <span>Inscription</span>
                    </a>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <?php }} ?>
    

    <div class="main-content">
        <?php if(isset($_SESSION['Auth'])){ ?>
        <header>
            <label for="menu-toggle" class="menu-toggler">
                <span class="las la-bars"></span>
            </label>
            <div class="head-icons">
                <a href=""><span class="las la-comment"></span></a>
            </div>
        </header>
        <?php } ?>
        <main>
            <?= $contenu; ?>
        </main>
    </div>

    <label class="close-mobile-menu" for="menu-toggle"></label>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <script src="/assets/js/main.js"></script>
</body>
</html>