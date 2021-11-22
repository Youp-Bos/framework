<?php

use RedBeanPHP\R;

class AuthorsController extends MainController
{
    public function author()
    {
        $allAuthor = R::getAll('SELECT * FROM author ');
        var_dump($allAuthor);
    }
}