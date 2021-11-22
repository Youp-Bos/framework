<?php

use RedBeanPHP\R;

require_once './services/UserService.class.php';

class UserController extends MainController
{
    public function loginGET()
    {
        $this->renderTwig('userIndex.twig');
    }

    public function loginPOST()
    {
        if (empty($_POST['username'])) {
            echo "geef een gebruikersnaam <br />";
        }
        if (empty($_POST['password'])) {
            echo "geef een wachtwoord <br />";
        }
        $data = R::getALL("SELECT * FROM user WHERE username ='" . $_POST['username'] . "' AND password ='" . $_POST['password'] . "'");
        if (count($data) > 0) {
            $token = bin2hex(random_bytes(50));
            $_SESSION['token'] = $token;
            $_SESSION['username'] = $_POST['username'];
            $session = R::dispense('sessions');
            $session->username = $_POST['username'];
            $session->token = $token;
            R::store($session);
            header('location:/');
        } else {
            echo 'combinatie van username en password klopt niet!';
        }
    }

    public function logedoutPOST()
    {
        session_destroy();
        R::getAll("TRUNCATE TABLE sessions ");
        header('location:/');
    }
}
