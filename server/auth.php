<?php

include_once $_SERVER["DOCUMENT_ROOT"]."/modelos/gestionbd.php";

if(!empty($_POST['usuario']) && !empty($_POST['contrasenia'])){

    $nombreusuario = strip_tags($_POST['usuario']);
    $contrasena = strip_tags($_POST['contrasenia']);

    $objeto = new conexion();

    $resultado = $objeto->consultar("select * from usuarios where nombreUsuario = '$nombreusuario' and contrasena = '$contrasena';");

    if(mysqli_num_rows($resultado)!=0){
        $datos = mysqli_fetch_array($resultado);
        $_SESSION['sesion']= $datos;
        header('Location: ../index.php');
    }else {
        $mensaje = "¡Usuario y/o contraseña incorrectos!";
        header('Location: ../login.php?error='.urlencode($mensaje));
    }
}

?>