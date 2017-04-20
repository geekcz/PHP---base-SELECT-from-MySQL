<?php    
    #includuju - připojím k souboru index.php soubor connect.php, ve kterém je připojení k databázi
    include 'connect.php';

   $sql = "DELETE FROM hry WHERE id={$_GET["id"]} LIMIT 1";
    if(mysqli_query($pripojeni_k_databazi, $sql)){
        echo "ok";
    } else {
        echo "no";
    }
?>