<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>search</title>
  </head>
  <body class="well">
    <?php
    $dbhost="localhost";
    $dbuser="root";
    $dbpass="12345";
    $dbname="ast20401";
    $connection = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname) or die($connection->error);
    $sql_string =
    "SELECT * FROM sessions NATURAL JOIN formats NATURAL JOIN venues NATURAL JOIN cities NATURAL JOIN sports
    NATURAL JOIN levels NATURAL JOIN sessions_organizers NATURAL JOIN organizers
    NATURAL JOIN sessions_trainers NATURAL JOIN trainers
    WHERE (Session_Title LIKE '%". $_POST["search"] .
    "%' OR trainer_name LIKE '%". $_POST["search"] .
    "%' OR organizer_name LIKE '%". $_POST["search"] .
    "%' OR long_description LIKE '%". $_POST["search"] .
    "%')
    ORDER BY Session_ID";
    $sql_query = mysqli_query($connection,$sql_string);
    echo "The following is your seaching result.<hr>";
    while ($row = mysqli_fetch_assoc($sql_query)) {
      $full = "full";
      if($row["Available_Tickets"] > 0){
        $full = $row["Available_Tickets"];
      }
      echo '<p class="well">'
      .'<a href="/CodeIgniter/index.php/SunnySports/session/'
			. $row["Session_ID"] . '/' . $row["Sport_ID"] .'">'
			.'<img src="http://localhost/CodeIgniter/image/' . $row["Session_Title"] . '.jpg" width="400" height="200"><br>'
      . $row["Session_Title"] . "</a>"
      . '<br>Level:' . $row["Level"]
      . '<br>Format:' . $row["Session_Format"]
      . '<br>Date:' . $row["Date"]
      . '<br>Time:' . $row["Time"]
      . '<br>Price:$'. $row["Price"]
      . '<br>Venue:' . $row["Venue_Name"]
      . '<br>City:' . $row["City_Name"]
      . '<br>Trainer:' . $row["Trainer_Name"]
      . '<br>Organizer:' . $row["Organizer_Name"]
      . '<br>Available Tickets:' . $full
      . '<br>' . $row["Short_Description"]
      . '<hr></p>' ;
    }
     ?>
<a href="/CodeIgniter/index.php/SunnySports">Back to HomePage</a>

  </body>
</html>
