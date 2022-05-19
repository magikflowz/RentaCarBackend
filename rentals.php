<?php

    include 'connection.php';

    $sql = "select brand, model, customer_name, location, pickup_date from pickups
    join cars on pickups.car_id = cars.car_id
    join customers on pickups.customer_id = customers.customer_id";


    $result = $conn->query($sql);

    if(!$result){
        echo $conn->error;
    }
    

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rentals Page</title>
</head>
<body>

    <a href="home.php">Home Page</a>

<h1>Rentals TABLE</h1>

<?php


                //display all the data form the Pickups table
               if(mysqli_num_rows($result) > 0){

                   
                    while($row = mysqli_fetch_assoc($result))
                    {
                   
                        echo  "<strong>".$row['brand'] ." ".$row['model']."</strong>". "<br>";
                        echo "Picked up by ".$row['customer_name']."<br>". " From ". $row['location'];
                        echo " on ". $row['pickup_date'];

                        echo "<br>";
                        echo "<br>";
                                     
                                       
                   
                    }
                    

                }else{
                    echo "No Record Found.";
                }


    ?>


    
</body>
</html>