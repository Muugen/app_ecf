<?php ob_start();?>

<section class = "main-container">
                <h2>Derniere News</h2>
                
                <article>
                    <h4>20/01/2021</h4>
                    <div>
                        <h2>Here's how to track your stimulus check with the IRS Get My Payment Portal</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "#">Read More <span>>></span></a>
                    </div>
                    <img src = "./assets/images/imgArt/kawhi-leonard.jpg">
                </article>

            </section>

<?php 
    $contenu = ob_get_clean();
    require_once('./views/public/templatePublic.php');
?>