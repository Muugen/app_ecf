<?php

class AdminArticleModel extends Driver{

    public function getArticles($search = null){

        if(!empty($search)){
            $sql = "SELECT * 
                    FROM articles a
                    INNER JOIN categorie c
                    ON a.id_cat = c.id_cat
                    WHERE titre LIKE :titre OR auteur LIKE :auteur OR nom_cat LIKE :nom_cat
                    ORDER BY id_a DESC";
            $searchParams = ["titre"=>"$search%", "auteur"=>"$search%", "nom_cat"=>"$search%"];
            $result = $this->getRequest($sql, $searchParams);

        }else{
            $sql = "SELECT * 
                    FROM articles a
                    INNER JOIN categorie c
                    ON a.id_cat = c.id_cat
                    ORDER BY id_a DESC";
            $result = $this->getRequest($sql);
        }
       
        $articles = $result->fetchAll(PDO::FETCH_OBJ);

        $datas = [];

        foreach ($articles as $article) {

            $a = new Articles();
            $a->setId_a($article->id_a);
            $a->setTitre($article->titre);
            $a->setAuteur($article->auteur);
            $a->setImage($article->image);
            $a->setDate($article->date);
            $a->setDescription($article->description);
            $a->getCategorie()->setId_cat($article->id_cat);
            $a->getCategorie()->setNom_cat($article->nom_cat);
            array_push($datas, $a);

        }
        if($result->rowCount() > 0){
            return $datas;
        }else{
            return "No record ...";
        }
    }

    public function insertArticle(Articles $article){

        $sql = "INSERT INTO articles(titre, auteur, date, image, description, id_cat)
                VALUES(:titre, :auteur, :date, :image, :descr, :id_cat)";
        
        $tabParams = ["titre"=>$article->getTitre(),"auteur"=>$article->getAuteur(), "date"=>$article->getDate(), "image"=>$article->getImage(), "descr"=>$article->getDescription(), "id_cat"=>$article->getCategorie()->getId_cat()]; 

        $result= $this->getRequest($sql, $tabParams);
        
        return $result;
    }

    public function deleteArticle(Articles $article){

        $sql = "DELETE FROM articles WHERE id_a = :id";
        $result = $this->getRequest($sql, ['id'=>$article->getId_a()]);

        return $result->rowCount();
    }

    public function articleItem(Articles $vParam){

        $sql = "SELECT * FROM articles WHERE id_a = :id";
        $result = $this->getRequest($sql, ['id'=>$vParam->getId_a()]);
        
        if($result->rowCount() > 0){

            $articleRow = $result->fetch(PDO::FETCH_OBJ);
            $editArticle = new Articles();
            $editArticle->setId_a($articleRow->id_a);
            $editArticle->setTitre($articleRow->titre);
            $editArticle->setAuteur($articleRow->auteur);
            $editArticle->setDate($articleRow->date);
            $editArticle->setImage($articleRow->image);
            $editArticle->setDescription($articleRow->description);
            $editArticle->getCategorie()->setId_cat($articleRow->id_cat);

            return $editArticle;
        }

    }

    public function updateArticle(Articles $updateA){
        if($updateA->getImage() === ""){
            $sql = "UPDATE article
                SET titre = :titre, auteur = :auteur, date = :date, description = :description, id_cat = :id_cat
                WHERE id_a = :id_a";
                
          $tabParams = ["titre"=>$updateA->getTitre(),"auteur"=>$updateA->getAuteur(), "date"=>$updateA->getDate(), "description"=>$updateA->getDescription(), "id_cat"=>$updateA->getCategorie()->getId_cat(), "id_a"=>$updateA->getId_a()];

        }else{

            $sql = "UPDATE article
                    SET titre = :titre, auteur = :auteur, date = :date,  image = :image, description = :description, id_cat = :id_cat
                    WHERE id_a = :id_a";
                    
              $tabParams = ["titre"=>$updateA->getTitre(),"auteur"=>$updateA->getAuteur(), "date"=>$updateA->getDate(),  "image"=>$updateA->getImage(), "description"=>$updateA->getDescription(), "id_cat"=>$updateA->getCategorie()->getId_cat(), "id_a"=>$updateA->getId_a()];
        }

          $result = $this->getRequest($sql, $tabParams);

         return $result->rowCount();
    }
}