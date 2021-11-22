<?php

use RedBeanPHP\R;

class HomeController extends MainController
{
    public function indexGET()
    {
        if (isset($_SESSION['token'])) {
            include './view/logout.twig';
        }
        $books = R::getAll("SELECT * FROM book  ");
        $convertedBooks = R::convertToBeans("book", $books);
        $this->renderTwig('homeIndex.twig', ['data' => $convertedBooks]);
    }
}