<?php ob_start(); ?>

            <div>
                <form action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
                <div class="search">
                    <button id="btnSearch" type="submit" name="soumis">
                        <span class="las la-search"></span>
                    </button>
                    <input type="search" name="search" id="search" placeholder="Recherche...">
                </div>
                </form>
            </div>
            <div class="table-title">
                <h3>Articles</h3>
            </div>
            <table class="table-fill">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Titre</th>
                        <th class="text-center">Image</th>
                        <th class="text-center">Auteur</th>
                        <th class="text-center">Date</th>
                        <th class="text-center">Description</th>
                        <th class="text-center">Categorie</th>
                        <th class="text-center">Edition</th>
                        <?php if($_SESSION['Auth']->id_g != 3 ){ ?>
                        <th class="text-center">Supprimer</th>
                        <?php } ?>
                    </tr>
                </thead>
                
                <tbody class="table-hover">

                    <tr>
                        <?php if(is_array($arts)){ foreach ($arts as $art) { ?>
                        <td class="text-center"><?=$art->getId_a();?></td>
                        <td class="text-center"><?=$art->getTitre();?></td>
                        <td class="text-center" id="imgArt"><img src="./assets/images/imgArt/<?=$art->getImage();?>" alt=""></td>
                        <td class="text-center"><?=$art->getAuteur();?></td>
                        <td class="text-center"><?=$art->getDate();?></td>
                        <td class="text-center" id="desc">
                            <div class="ellipsis">
                            <?=$art->getDescription();?>
                            </div>
                        </td>
                        <td class="text-center"><?=$art->getCategorie()->getNom_cat();?></td>
                        <td class="text-center">
                            <a href="index.php?action=edit_a&id=<?=$art->getId_a();?>"><i class="las la-edit"></i></a>
                        </td>
                        <?php if($_SESSION['Auth']->id_g != 3 ){ ?>
                        <td class="text-center">
                            <a href="index.php?action=delete_a&id=<?=$art->getId_a();?>" onclick="return confirm('Etes vous sûr de vouloir supprimer l\'article')"><i class="las la-trash-alt"></i></a>
                        </td>
                        <?php } ?>
                    </tr>
                    <?php }}else{ echo"<tr><td colspan='10' class='text-center danger'>".$arts."</td></tr>";} ?>
                </tbody>
            </table>

<?php 
    $contenu = ob_get_clean();
    require_once('./views/admin/templateAdmin.php');
?>
