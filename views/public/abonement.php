<?php ob_start();?>

<div class="abo">
                    <div class="cardAbo">
                        <img src="./assets/images/Cube.png" alt="Logo">
                        <div class="containerAbo">
                          <h4><b>Abonnement pour leCube</b></h4> 
                          <p>9,99€</p> 
                          <button type="submit">S'abonner</button>
                        </div>
                      </div>
                </div>

<?php 
    $contenu = ob_get_clean();
    require_once('./views/public/templatePublic.php');
?>