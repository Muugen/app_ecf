<?php

class AdminDashController{

    public function dashHome(){
        AuthController::isLogged();
        header('location:/views/admin/adminDashboard.php');
    }

}