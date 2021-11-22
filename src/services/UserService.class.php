<?php

use RedBeanPHP\R;

class UserService extends MainController
{
    public function validateLoggedIn()
    {
        $sessions = R::getAll("SELECT * FROM sessions WHERE token = :token AND username = :username", [':token' => $_SESSION['token'], ':username' => $_SESSION['username']]);
        if (isset($_SESSION['token']) && $_SESSION['token'] === $sessions[0]['token']) {
            return;
        } else {
            header('location:/user/login');
            exit();
        }
    }
}