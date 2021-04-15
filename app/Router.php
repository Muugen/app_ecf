<?php

// header('location:/views/admin/adminDashboard.php');

require_once('./app/autoload.php');

class Router{

    private $ctrca;
    private $ctrv;
    private $ctru;
    private $ctrg;
    // private $ctrpub;

    public function __construct()
    {
        $this->ctrca = new AdminCategorieController();
        $this->ctrv = new AdminArticleController();
        $this->ctru = new AdminUtilisateurController();
        $this->ctrg = new AdminGradeController();
        // $this->ctrpub = new PublicController();
    }

    public function getPath(){
        
        try {
            if(isset($_GET['action'])){

                switch($_GET['action']){
                    case 'list_cat':
                        $this->ctrca->listCategories();
                        break;
                    case 'delete_cat':
                        $this->ctrca->removeCat();
                        break;
                    case 'edit_cat':
                        $this->ctrca->editCat();
                        break;
                    case 'add_cat':
                        $this->ctrca->addCat();
                        break;
                    case 'list_a':
                        $this->ctrv->listArticles();
                        break;
                    case 'add_a':
                        $this->ctrv->addArticles();
                        break;
                    case 'delete_a':
                        $this->ctrv->removeArticle();
                        break;
                    case 'edit_a':
                        $this->ctrv->editArticle();
                    case 'list_u':
                        $this->ctru->listUsers();
                        break;
                    case 'login':
                        $this->ctru->login();
                        break;
                    case 'logout':
                        AuthController::logout();
                        break;
                    case 'register':
                        $this->ctru->addUser();
                        break;
                    case 'list_g':
                        $this->ctrg ->listGrades();
                        break; 
                    // case 'checkout':
                    //     $this->ctrpub ->recap();
                    //     break; 
                    // case 'order' :
                    //     $this->ctrpub ->order();
                    //     break;
                    // case 'pay': 
                    //     $this->ctrpub->payment();
                    //     break;
                    // case 'success': 
                    //     $this->ctrpub->confirmation();
                    //     break;
                    // case 'cancel': 
                    //     $this->ctrpub->annuler();
                    //    break;
                    default:
                        throw new Exception('Action non définie');
                } 
            }else{
                // $this->ctrpub->getPubVoitures();
            }
        } catch (Exception $e) {
            $this->page404($e->getMessage());
        }
    }

    private function page404($errorMsg){
        require_once('./views/notFound.php');
    }
}