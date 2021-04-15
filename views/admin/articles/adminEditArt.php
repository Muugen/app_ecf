<?php ob_start();?>

 
<?php 
    $contenu = ob_get_clean();
    require_once('./views/admin/templateAdmin.php');
?>