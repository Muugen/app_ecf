<?php ob_start(); ?>

            <div class="table-title">
                <h3>Liste des utilisateurs</h3>
            </div>
            <table class="table-fill">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nom</th>
                        <th class="text-center">Prenom</th>
                        <th class="text-center">login</th>
                        <th class="text-center">email</th>
                        <th class="text-center">Grade</th>
                        <?php if($_SESSION['Auth']->id_g == 1){ ?>
                        <th class="text-center">Actions</th>
                        <?php } ?>
                    </tr>
                </thead>
                
                <tbody class="table-hover">
                    <?php foreach ($allUsers as $user) { ?>
                    <tr>
                        <td><?=$user->getId();?></td>
                        <td><?=$user->getNom();?></td>
                        <td><?=$user->getPrenom();?></td>
                        <td><?=$user->getLogin();?></td>
                        <td><?=$user->getEmail();?></td>
                        <td><?=$user->getGrade()->getNom_g();?></td>

                        <?php if($_SESSION['Auth']->id_g == 1){ ?>
                        <td class="text-center">
                        <?php
                            echo($user->getStatut())
                            ? "<a href='index.php?action=list_u&id=".$user->getId()."&statut=".$user->getStatut()."'  onclick='return confirm(`Etes-vous sûr de vouloir désactiver...`)' class='btn btn-success'><i class='las la-unlock'> Désactiver</i></a>"
                            : "<a href='index.php?action=list_u&id=".$user->getId()."&statut=".$user->getStatut()."' onclick='return confirm(`Etes-vous sûr de vouloir activer...`)' class='btn btn-danger'><i class='las la-lock'> Activer</i></a>"
                        ?>
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
