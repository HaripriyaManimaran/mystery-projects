<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

    <style>
        form{
            width: 500px;
            height: 180px;
            margin: 0em 30em;
            padding: 2em;
            border: 0.5px solid rgba(255,255,255,0.5);
            border-radius: 10px;
            box-shadow: 1px 1px 5px 5px rgba(209,211,224,0.5);
            line-height: 2em;

        }

        h3{
            margin: 2em 20em 0em 17em;
            padding: 2em;
            font-weight: bold;
            font-family: Georgia;
        }
    </style>
</head>

<?php
include "db.php";


$id= (int) $_GET["id"];
$sql="select * from todo where id='$id'";
$rows=$db->query($sql);
$row=$rows->fetch_assoc();

if(isset($_POST["submit"])){

    $task=$_POST["task"];
    $sql="UPDATE todo set name='$task' WHERE id='$id'";
    $db->query($sql);
    header("location:index.php");

}

?>
<body>

<center><h3>Update Todo List</h3> </center>


<form method="post">


<div class="form-group">
    <label>Task Name:</label>
    <input type="text" name="task" class="form-control" required>                            
</div>

<input type="submit" value="Update Task" name="submit" class="btn btn-success"> &nbsp;
<a href="index.php"class="btn btn-warning">Back </a>



</form>


</body>
</html>






