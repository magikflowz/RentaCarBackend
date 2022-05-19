<?php

//This file is used to establish connection with the database.

$dbhost = "localhost";
$dbuser= "root"; //Username of your database
$dbpass = "";   //Password of your database
$dbname = "cars_db"; //name of your database

$conn = mysqli_connect($dbhost, $dbuser,$dbpass,$dbname);



//Display the error in case of a error

if (mysqli_connect_errno()) {


     die("database connection failed :" . mysqli_connect_error() ."(" . mysqli_connect_errno() . ")" );


    }


?>

