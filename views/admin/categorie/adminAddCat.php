<?php ob_start(); ?>

<div id="formCat" class="container">
    <h3>Stacked Form</h3>
    <form action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
        <label>Catégorie</label>
        <input type="text" class="categorie" name="categorie" placeholder="Entrez une catégorie...">
        <input type="submit" value="Submit" name="soumis">
    </form>
</div>

<?php
    $contenu = ob_get_clean();
    require_once('./views/admin/templateAdmin.php');
?>