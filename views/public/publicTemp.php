<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Le Cube</title>
    <link rel="stylesheet" href="./assets/css/home.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Raleway:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>

<body>
        <header>
            <div class="inner_header">
                <div class="logo_container">
                    <h1><i class="las la-cube"></i> LE<span>CUBE</span></h1>
                </div>
                <ul class="navigation">
                    <a href=""><li>Accueil</li></a>
                    <a href=""><li>Abonnement</li></a>
                    <a href=""><li>contact</li></a>
                </ul>
            </div>
        </header>

        <main>
            
            <?=$contenu;?>

        </main>

        <footer class="footer">
            <div class="inner_footer">
                <span>Copyright © 2021 Le Cube. Tous droits réservés.</span>
            </div>
        </footer>
</body>

</html>