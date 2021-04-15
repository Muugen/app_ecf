<?php

class Articles{
    
    private $id_a;
    private $titre;
    private $auteur;
    private $image;
    private $date;
    private $description;
    private $categorie;

    public function __construct()
    {
        $this->categorie = new Categorie();
    }
    

    /**
     * Get the value of id_a
     */ 
    public function getId_a()
    {
        return $this->id_a;
    }

    /**
     * Set the value of id_a
     *
     * @return  self
     */ 
    public function setId_a($id_a)
    {
        $this->id_a = $id_a;

        return $this;
    }

    /**
     * Get the value of titre
     */ 
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Set the value of titre
     *
     * @return  self
     */ 
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get the value of auteur
     */ 
    public function getAuteur()
    {
        return $this->auteur;
    }

    /**
     * Set the value of auteur
     *
     * @return  self
     */ 
    public function setAuteur($auteur)
    {
        $this->auteur = $auteur;

        return $this;
    }

    /**
     * Get the value of image
     */ 
    public function getImage()
    {
        return $this->image;
    }

    /**
     * Set the value of image
     *
     * @return  self
     */ 
    public function setImage($image)
    {
        $this->image = $image;

        return $this;
    }

    /**
     * Get the value of date
     */ 
    public function getDate()
    {
        return $this->date;
    }

    /**
     * Set the value of date
     *
     * @return  self
     */ 
    public function setDate($date)
    {
        $this->date = $date;

        return $this;
    }

    /**
     * Get the value of description
     */ 
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set the value of description
     *
     * @return  self
     */ 
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get the value of categorie
     */ 
    public function getCategorie()
    {
        return $this->categorie;
    }

    /**
     * Set the value of categorie
     *
     * @return  self
     */ 
    public function setCategorie($categorie)
    {
        $this->categorie = $categorie;

        return $this;
    }
}