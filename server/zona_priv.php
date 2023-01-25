<?php

if (!$_SESSION['sesion']){
    header("Location: ../login.php");
    exit();
}

