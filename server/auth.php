<?php

include_once $_SERVER["DOCUMENT_ROOT"]."/modelos/gestionbd.php";

if(!empty($_POST['usuario']) && !empty($_POST['contrasenia'])){

    $nombreusuario = strip_tags($_POST['usuario']);
    $contrasena = strip_tags($_POST['contrasenia']);

    $objeto = new conexion();

    if($objeto->consultar("select * from usuarios where nombreUsuario = '$nombreusuario' and contrasena = '$contrasena';")){

    }
}

?>