<?php ob_start();?>

<div id="formCat" class="container">
    <form action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
        <label for="">Identifiant</label>
        <input type="text" class="form-control"  value="<?=$cat->getId_cat();?>" readonly>
        <label>Catégorie</label>
        <input type="text" id="categorie" name="categorie" value="<?=$cat->getNom_cat();?>" placeholder="Entrez une catégorie...">
        <input type="submit" value="Modifier" name="soumis">
    </form>
</div>

<?php 
    $contenu = ob_get_clean();
    require_once('./views/admin/templateAdmin.php');
?>