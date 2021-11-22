<?php

use Twig\Loader\FilesystemLoader;

class MainController
{
    public function renderTwig($twigFileName, $params = [])
    {
        $loader = new FilesystemLoader('../src/view');
        $twig = new \Twig\Environment($loader);
        echo $twig->render($twigFileName, $params);
    }
}