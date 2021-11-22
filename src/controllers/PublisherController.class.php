<?php

use RedBeanPHP\R;

require_once './services/UserService.class.php';
include './view/logout.twig';

class PublisherController extends MainController
{
    public function indexGET()
    {
        if (isset($_SESSION['token'])) {
            include './view/logout.twig';
        }
        (new Userservice())->validateLoggedIn();
        $publisher = R::getAll("SELECT * FROM publisher");
        $convertedPublisher = R::convertToBeans("publisher", $publisher);
        $this->renderTwig('publisherIndex.twig', ['data' => $convertedPublisher]);
    }

    public function addGET()
    {
        $this->renderTwig('publisherAdd.twig');
    }

    public function addPOST()
    {
        $publisher = R::dispense('publisher');
        $publisher->naam = $_POST['publisher'];
        R::store($publisher);
        header('Location:/publisher/index');
    }
}


