<?php
require_once '../vendor/autoload.php';
require_once './DB/database.php';

session_start();
if (!isset($_GET['path'])) {
    (new HomeController())->indexGET();
    exit;
}

$url = explode('/', $_GET['path']);
$controllerName = $url[0];
$methodName = ($url[1] ?? '') . $_SERVER['REQUEST_METHOD'];

if ($controllerName === 'author') {
    (new AuthorsController())->author();
    exit();
}

if (!isset($controllerName) || !isset($methodName)) {
    include('errors/error404.php');
    die();
}
$controllerName = ucfirst($controllerName) . 'Controller';
if (!class_exists($controllerName)) {
    include('errors/error404.php');
    die();
}

$controller = new $controllerName();

if (!method_exists($controller, $methodName)) {
    include('errors/error404.php');
    die();
}
$controller->$methodName();