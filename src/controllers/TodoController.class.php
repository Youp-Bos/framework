<?php

use RedBeanPHP\R;

require_once './services/UserService.class.php';

class TodoController extends MainController
{

    public function indexGET()
    {
        if (isset($_SESSION['token'])) {
            include './view/logout.twig';
        }
        $AllToDo = R::getAll('SELECT * FROM todo ORDER BY weight DESC');
        $convertedToDo = R::convertToBeans("todo", $AllToDo);
        $this->renderTwig('todoIndex.twig', ['data' => $convertedToDo]);
    }

    public function indexPOST()
    {

        if (isset($_POST['change'])) {
            $Getcontent = R::getCell('SELECT innertext FROM todo WHERE id =' . $_POST["id"]);
            $hiddencontent = R::getCell('SELECT id FROM todo WHERE id =' . $_POST["id"]);
            $this->renderTwig('todoChange.twig', ['data' => $Getcontent, 'id' => $hiddencontent]);
            exit;
        }

        if (isset($_POST['changed'])) {
            $hiddencontent = R::getCell('SELECT id FROM todo WHERE id =' . $_POST["id"]);

            $changeContent = R::dispense('todo');
            $changeContent->id = $hiddencontent;
            $changeContent->innertext = $_POST['inputfield'];
            R::store($changeContent);
            header('Location:/todo/index');
        }

        if (isset($_POST['up'])) {
            $Getweight = R::getCell('SELECT weight FROM todo WHERE id =' . $_POST["id"]);
            $add = $Getweight + 1;

            $updateWeight = R::dispense('todo');
            $updateWeight->id = $_POST['id'];
            $updateWeight->weight = $add;

            R::store($updateWeight);
            header('Location:/todo/index');
        };

        if (isset($_POST['down'])) {
            $Getweight = R::getCell('SELECT weight FROM todo WHERE id =' . $_POST["id"]);
            $add = $Getweight - 1;

            $updateWeight = R::dispense('todo');
            $updateWeight->id = $_POST['id'];
            $updateWeight->weight = $add;

            R::store($updateWeight);
            header('Location:/todo/index');
        }

        $title = R::dispense('todo');
        $title->title = $_POST['titleToDo'];
        $title->innertext = $_POST['innerTextToDo'];

        R::store($title);
        header('Location:/todo/index');
    }
}