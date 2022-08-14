<?php

    include "db.php";
    
    if($_SERVER["REQUEST_METHOD"]=="POST" && isset($_POST["submit"])){

       

        $name=htmlspecialchars($_POST["task"]) ;
        
        $sql="INSERT INTO todo (name) VALUES ('$name')";
        $val=$db->query($sql);

        if($val){
            header("location: index.php");
        }
        
    }

    ?>