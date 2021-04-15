<?php ob_start(); ?>

<div class="table-title">
    <h3>Categorie</h3>
</div>
<table class="table-fill">
    <thead>
        <tr>
            <th class="text-center">ID</th>
            <th class="text-center">Nom</th>
            <th class="text-center">Edit</th>
            <th class="text-center">Supprimer</th>
        </tr>
    </thead>
    
    <tbody class="table-hover">
    <?php foreach ($allCat as  $cat) { ?>
        <tr>
            <td class="text-center"><?=$cat->getId_cat();?></td>
            <td class="text-center"><?=$cat->getNom_cat();?></td>
            <?php if($_SESSION['Auth']->id_g != 3 ){ ?>
            <td class="text-center">
                <a href="index.php?action=edit_cat&id=<?=$cat->getId_cat();?>">
                    <i class="las la-edit"></i>
                </a>
            </td>
            <td class="text-center">
                <a href="index.php?action=delete_cat&id=<?=$cat->getId_cat();?>" onclick="return confirm('Etes vous sûr de vouloir supprimer cette categorie')">
                    <i class="las la-trash-alt"></i>
                </a>
            </td>
            <?php } ?>
        </tr>
    <?php } ?>
    </tbody>
</table>


<?php 
    $contenu = ob_get_clean();
    require_once('./views/admin/templateAdmin.php');
?>
