<!DOCTYPE html>
<html lang="en">
    <?php
        include "db.php";

        $page=(isset($_GET["page"])? (int) $_GET["page"]: 1);
        $perPage= 10;
        $start=($page-1)*$perPage ;

        $total="select * from todo";
        $total_rows=$db->query($total)->num_rows;
        $total_pages=ceil($total_rows/$perPage);
        
        $sql="select * from todo LIMIT ".$start.", ".$perPage." ";        
        $rows=$db->query($sql);

        
    ?>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

    <title>CRUD APP</title>

    <style>

        body{
            font-family: Cambria, Georgia;
        }

    </style>

</head>
<body>
    <div class="container">
        <div class="rows" style="margin-top: 50px;">
            <center>
                <h1>TODO List</h1>
            </center>
            <div class="col-md-10 col-md-offset-1">

            <!-- Trigger the modal with a button -->
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">Add Items</button>
            <button type="button" class="btn btn-default pull-right" onclick="window.print()">Print</button> <hr style="border-color:white;"><br> 

            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title"><b>Add Task</b></h4>
                </div>
                <div class="modal-body">
                    <form method="post" action="add.php">
                        <div class="form-group">
                            <label>Task Name:</label>
                            <input type="text" name="task" class="form-control" required>                            
                        </div>
                    <input type="submit" value="Add Task" name="submit" class="btn btn-success">

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
                </div>

            </div>
            </div>
            <table class="table table-hover">
            <thead>
                <tr>
                <th scope="col">No.</th>
                <th scope="col">Task</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <?php
                    while($row=$rows->fetch_assoc()): ?>
                <th scope="row"><?php echo $row["id"];?></th>
                <td class="col-md-10"><?php echo $row["name"];?></td>
                <td><a href="edit.php?id=<?php echo $row["id"];?>" class="btn btn-success">Edit</a></td>
                <td><a href="delete.php?id=<?php echo $row["id"];?>" class="btn btn-danger">Delete</a></td>
                </tr>  
                <?php endwhile;?>
            </tbody>
            </table>
            <center> 
            <ul class="pagination">
            <?php for($i=1; $i<=$total_pages;$i++):?>   
            <li><a href="?page=<?php echo $i;?>"><?php echo $i;?></a></li>
            <?php endfor; ?>   
            </ul>

            </center>

            </div>
        </div>
    </div>
</body>
</html>