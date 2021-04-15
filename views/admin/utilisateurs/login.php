<?php ob_start(); ?>

 <form class="form-basic" method="post" action="<?php $_SERVER['PHP_SELF'];?>">

        <div class="form-title-row">
            <span class="las la-cube"></span>
            <h1>Le Cube</h1>
        </div>

        <?php if(isset($error)){ ?>
            <div class="alert"><?=$error;?></div>
        <?php } ?>

        <div class="form-row">
            <label>
                <span>Login</span>
                <input type="text" id="loginEmail" name="loginEmail">
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Mot de passe</span>
                <input type="password" id="pass" name="pass">
            </label>
        </div>

        <div class="form-row">
            <button type="submit" name="soumis">Connexion</button>
        </div>

    </form>

<?php 
    $contenu = ob_get_clean();
    require_once('./views/admin/templateAdmin.php');
?>