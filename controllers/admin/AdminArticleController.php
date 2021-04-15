<?php

class AdminArticleController{

    private $adart;

    public function __construct()
    {
        $this->adart = new AdminArticleModel();
        $this->adcat = new AdminCategorieModel();
    }

    public function listArticles(){
        AuthController::isLogged();
        if(isset($_POST['soumis']) && !empty($_POST['search'])){
            $search = trim(htmlspecialchars(addslashes($_POST['search'])));
            $arts = $this->adart->getArticles($search);
            require_once('./views/admin/articles/adminArticlesItems.php');
  
        }else{
            $arts = $this->adart->getArticles();
            require_once('./views/admin/articles/adminArticlesItems.php');
        }
        
    }

    public function addArticles(){
        AuthController::isLogged();

        if(isset($_POST['soumis']) && !empty($_POST['titre']) && !empty($_POST['auteur'])){
            $titre = trim(htmlentities(addslashes($_POST['titre'])));
            $auteur = trim(htmlentities(addslashes($_POST['modele'])));
            $date = trim(htmlentities(addslashes($_POST['date'])));
            $id_cat = trim(htmlentities(addslashes($_POST['cat'])));
            $description = trim(htmlentities(addslashes($_POST['desc'])));
            $image = $_FILES['image']['name'];

            $newA = new Articles();
            $newA->setTitre($titre);
            $newA->setAuteur($auteur);
            $newA->setDate($date);
            $newA->getCategorie()->setId_cat($id_cat);
            $newA->setDescription($description);
            $newA->setImage($image);

            $destination = './assets/images/';
            move_uploaded_file($_FILES['image']['tmp_name'],$destination.$image);
            $ok = $this->adart->insertArticle($newA); 
            if($ok){
                header('location:index.php?action=list_a');
            }
        }
       $tabCat = $this->adcat->getCategories();
        require_once('./views/admin/articles/adminAddArt.php');
    }

    public function removeArticle(){
        AuthController::isLogged();
        AuthController::accessUser();
       if(isset($_GET['id']) && filter_var($_GET['id'], FILTER_VALIDATE_INT)){
           $id = $_GET['id'];
           $delA = new Articles();
           $delA->setId_a($id);
           $nb = $this->adart->deleteArticle($delA);

           if($nb > 0){
               header('location:index.php?action=list_a');
           }
           
       } 
    }

    public function editArticle(){
        
        AuthController::isLogged();
        if(isset($_GET['id']) && filter_var($_GET['id'], FILTER_VALIDATE_INT)){
            $id = $_GET['id'];
            $editA = new Articles();
            $editA->setId_a($id);
            $editArt = $this->adart->articleItem($editA);
            
           $tabCat = $this->adcat->getCategories();
           
           if(isset($_POST['soumis']) && !empty($_POST['marque'])){
               
               $titre = trim(htmlentities(addslashes($_POST['titre'])));
               $auteur = trim(htmlentities(addslashes($_POST['auteur'])));
               $date = trim(htmlentities(addslashes($_POST['date'])));
               $id_cat = trim(htmlentities(addslashes($_POST['cat'])));
               $description = trim(htmlentities(addslashes($_POST['desc'])));
               $image = $_FILES['image']['name'];
               
               $editArt->setTitre($titre);
               $editArt->setAuteur($auteur);
               $editArt->setDate($date);
               $editArt->getCategorie()->setId_cat($id_cat);
               $editArt->setDescription($description);
               $editArt->setImage($image);
               
               $destination = './assets/images/';
               move_uploaded_file($_FILES['image']['tmp_name'],$destination.$image);
               $ok = $this->adart->updateArticle($editArt); 
               //if($ok > 0){
                   header('location:index.php?action=list_a');
                //}
            }
            require_once('./views/admin/articles/adminEditArt.php');
        }
    }
}