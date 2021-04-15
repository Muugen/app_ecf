<?php ob_start();?>

 <form class="form-basic" method="post" action="<?php $_SERVER['PHP_SELF'];?>">

            <div class="form-title-row">
                <h1>Ajout d'un utilisateur</h1>
            </div>

            <div class="form-row">
                <label>
                    <span>Nom</span>
                    <input type="text" id="nom" name="nom">
                </label>
            </div>

            <div class="form-row">
                <label>
                    <span>Prenom</span>
                    <input type="text" id="prenom" name="prenom">
                </label>
            </div>
            
            <div class="form-row">
                <label>
                    <span>Login</span>
                    <input type="text" id="login" name="login">
                </label>
            </div>

            <div class="form-row">
                <label>
                    <span>Email</span>
                    <input type="email" name="email">
                </label>
            </div>

            <div class="form-row">
                <label for="cat">
                    <span>Grade</span>
                    <select name="dropdown" id="grade" name="grade">
                        <?php foreach ($allGrades as $grade) {; ?>
                            <option value="<?=$grade->getId_g();?>"><?=$grade->getNom_g();?></option>
                        <?php }; ?>
                    </select>
                </label>
            </div>


            <div class="form-row">
                <button type="submit" name="soumis">Valider</button>
            </div>

        </form>
<?php 
    $contenu = ob_get_clean();
    require_once('./views/admin/templateAdmin.php');
?>