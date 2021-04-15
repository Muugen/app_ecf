<?php ob_start(); ?>
  
<div class="table-title">
    <h3>Grades Utilisateurs</h3>
</div>
<table class="table-fill">
    <thead>
        <tr>
            <th class="text-center">ID</th>
            <th class="text-center">Nom</th>
        </tr>
    </thead>
    
    <tbody class="table-hover">
    <?php foreach ($allGrades as  $grade) { ?>
        <tr>
            <td class="text-center"><?=$grade->getId_g()?></td>
            <td class="text-center"><?=$grade->getNom_g()?></td>
        </tr>
    <?php } ?>
    </tbody>
</table>


<?php 
    $contenu = ob_get_clean();
    require_once('./views/admin/templateAdmin.php');
?>
