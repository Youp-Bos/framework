<?php

use RedBeanPHP\R;

require_once './services/UserService.class.php';

class BookController extends MainController
{
    public function indexGET()
    {
        if (isset($_SESSION['token'])) {
            include './view/logout.twig';
        }
        (new Userservice())->validateLoggedIn();
        $books = R::getAll("SELECT * FROM book");
        $convertedBooks = R::convertToBeans("book", $books);
        $this->renderTwig('bookIndex.twig', ['data' => $convertedBooks]);
    }
}