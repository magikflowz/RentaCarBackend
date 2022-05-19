<?php
    include 'connection.php'; //Load the database connection file


    //Queries to get the data from tables

    $result_cars = $conn->query("select * from cars");
    $result_customers = $conn->query("select * from customers");
    $result_inv = $conn->query("select * from inventory");
    $result_pickups = $conn->query("select * from pickups");
    $result_feedback = $conn->query("select * from Feedback");
    $result_payment = $conn->query("select * from payment");

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
</head>
<body>

    <a href="rentals.php">Rentals Page</a>

    <h1>CARS TABLE</h1>
<?php


                //display all the data form the Cars table
               if(mysqli_num_rows($result_cars) > 0){

                    echo "<table border='1'>
                    <tr>
                    <th>Car ID</th>
                    <th>Model</th>
                    <th>Manufacturer</th>
                    <th>Brand</th>
                    <th>Year</th>
                    <th>Color</th>
                    
                    </tr>";

                    while($row = mysqli_fetch_assoc($result_cars))
                    {
                    echo "<tr>";
                    echo "<td>" . $row['car_id'] ."</td>";
                    echo "<td>" . $row['model'] . "</td>";
                    echo "<td>" . $row['manufacturer'] . "</td>";
                    echo "<td>" . $row['brand'] . "</td>";
                    echo "<td>" . $row['year'] . "</td>";
                    echo "<td>" . $row['color'] . "</td>";
                    
                    echo "</tr>";
                    }
                    echo "</table>";

                }else{
                    echo "No Record Found.";
                }


    ?>

<h1>CUSTOMERS TABLE</h1>

<?php


                //display all the data form the Customers table
               if(mysqli_num_rows($result_customers) > 0){

                    echo "<table border='1'>
                    <tr>
                    <th>Customer ID</th>
                    <th>Customer Name</th>
                    <th>Phone Number</th>
                    <th>FeedBack ID</th>
                    
                    
                    </tr>";

                    while($row = mysqli_fetch_assoc($result_customers))
                    {
                    echo "<tr>";
                    echo "<td>" . $row['customer_id'] ."</td>";
                    echo "<td>" . $row['customer_name'] . "</td>";
                    echo "<td>" . $row['phone_num'] . "</td>";
                    echo "<td>" . $row['feedback_id'] . "</td>";
                                       
                    echo "</tr>";
                    }
                    echo "</table>";

                }else{
                    echo "No Record Found.";
                }


    ?>

<h1>Pickups TABLE</h1>

<?php


                //display all the data form the Pickups table
               if(mysqli_num_rows($result_pickups) > 0){

                    echo "<table border='1'>
                    <tr>
                    <th>Pickup ID</th>
                    <th>Customer ID</th>
                    <th>Inventory ID</th>
                    <th>Pickup Date</th>
                    <th>Duration time</th>
                    <th>Location</th>
                    
                    
                    </tr>";

                    while($row = mysqli_fetch_assoc($result_pickups))
                    {
                    echo "<tr>";
                    echo "<td>" . $row['pickup_id'] ."</td>";
                    echo "<td>" . $row['customer_id'] . "</td>";
                    echo "<td>" . $row['inv_id'] . "</td>";
                    echo "<td>" . $row['pickup_date'] . "</td>";    
                    echo "<td>" . $row['duration_time_hour']." hrs". "</td>";
                    echo "<td>" . $row['location'] . "</td>";
                                       
                    echo "</tr>";
                    }
                    echo "</table>";

                }else{
                    echo "No Record Found.";
                }


    ?>
<h1>Inventory TABLE</h1>

<?php


                //display all the data form the Inventory table
               if(mysqli_num_rows($result_inv) > 0){

                    echo "<table border='1'>
                    <tr>
                    <th>Inventory ID</th>
                    <th>Car Type</th>
                    <th>Car ID</th>
                   
                    </tr>";

                    while($row = mysqli_fetch_assoc($result_inv))
                    {
                    echo "<tr>";
                    echo "<td>" . $row['inv_id'] ."</td>";
                    echo "<td>" . $row['car_type'] . "</td>";
                    echo "<td>" . $row['car_id'] . "</td>";
                   
                                       
                    echo "</tr>";
                    }
                    echo "</table>";

                }else{
                    echo "No Record Found.";
                }


    ?>
<h1>Feedback TABLE</h1>

<?php


                //display all the data form the Feedback table
               if(mysqli_num_rows($result_feedback) > 0){

                    echo "<table border='1'>
                    <tr>
                    <th>Feedback ID</th>
                    <th>Description</th>
                   
                   
                    </tr>";

                    while($row = mysqli_fetch_assoc($result_feedback))
                    {
                    echo "<tr>";
                    echo "<td>" . $row['feedback_id'] ."</td>";
                    echo "<td>" . $row['description'] . "</td>";
                    
                   
                                       
                    echo "</tr>";
                    }
                    echo "</table>";

                }else{
                    echo "No Record Found.";
                }


    ?>
<h1>Payment TABLE</h1>

<?php


                //display all the data form the Payment table
               if(mysqli_num_rows($result_payment) > 0){

                    echo "<table border='1'>
                    <tr>
                    <th>Payment ID</th>
                    <th>Card Name</th>
                    <th>Card Number</th>
                    <th>Expiry Date</th>
                   
                   
                    </tr>";

                    while($row = mysqli_fetch_assoc($result_payment))
                    {
                    echo "<tr>";
                    echo "<td>" . $row['payment_id'] ."</td>";
                    echo "<td>" . $row['card_name'] . "</td>";
                    echo "<td>" . $row['card_num'] . "</td>";
                    echo "<td>" . $row['expiry'] . "</td>";
                    
                   
                                       
                    echo "</tr>";
                    }
                    echo "</table>";

                }else{
                    echo "No Record Found.";
                }


    ?>



    
</body>
</html>


