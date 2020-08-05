<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>booking</title>
  </head>
  <body>
    <?php
    $dbhost="localhost";
    $dbuser="root";
    $dbpass="";
    $dbname="ast20401";
    $connection=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
    $sql_string =
    "INSERT INTO `bookings` (`Booking_ID`, `First_Name`, `Last_Name`, `Email`, `Mobile`, `Session_ID`)
    VALUES ('', '" . $_POST["first_name"] .
    "', '" . $_POST["last_name"] .
    "', '" . $_POST["email"] .
    "', '" . $_POST["mobile"] .
    "', '" . $_POST["session_id"] .
    "');";
    $sql_query = mysqli_query($connection,$sql_string);
    $sql_string ="
    UPDATE sessions
    SET Available_Tickets = Available_Tickets - 1
    WHERE Session_ID = ". $_POST["session_id"];
    $sql_query = mysqli_query($connection,$sql_string);
    echo "Your booking has made!";
    ?>
    <hr>
    <a href="/CodeIgniter/index.php/SunnySports">Back to HomePage</a>
  </body>
</html>
