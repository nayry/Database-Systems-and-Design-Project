<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SunnySports</title>
</head>

<body>
<?php
foreach ($query_session->result() as $row)
			{
				$full = "full";
				if($row->Available_Tickets > 0){
					$full = $row->Available_Tickets;
				}
				echo '<img src="http://localhost/CodeIgniter/image/' . $row->Session_Title . '.jpg" width="400" height="200"><br>';
      echo   $row->Session_Title
			. '<br>Level:' . $row->Level
			. '<br>Format:' . $row->Session_Format
			. '<br>Date:' . $row->Date
			. '<br>Time:' . $row->Time
			. '<br>Price:$'. $row->Price
      . '<br>Venue:' . $row->Venue_Name
			. '<br>City:' . $row->City_Name
			. '<br>Trainer:' . $row->Trainer_Name
			. '<br>Organizer:' . $row->Organizer_Name
			. '<br>Available Tickets:' . $full
			. '<br>' . $row->Long_Description . '<br>';
			if($row->Available_Tickets > 0){
				echo '
				<form class="" action="http://localhost/CodeIgniter/index.php/SunnySports/bookPage" method="post">
				<input type="hidden" name="session_id" size="1dp" value="' . $row->Session_ID
				.'">
				<input type="submit" value="book">
				</form>';
			}
			else{
				echo "Sorry, this session is full.";
			}

      }
?>
<hr>
<?php

			echo "<h3>Relevant sessions:</h3>";
			foreach ($query_sessions->result() as $row)
						{
							$full = "full";
							if($row->Available_Tickets > 0){
								$full = $row->Available_Tickets;
							}

			      echo
						'<a href="/CodeIgniter/index.php/SunnySports/session/'
						. $row->Session_ID . '/' . $row->Sport_ID .'">'
						. '<img src="http://localhost/CodeIgniter/image/' . $row->Session_Title . '.jpg" width="400" height="200"><br>'
			      . $row->Session_Title . "</a>"
						. '<br>Level:' . $row->Level
						. '<br>Format:' . $row->Session_Format
						. '<br>Date:' . $row->Date
						. '<br>Time:' . $row->Time
						. '<br>Price:$'. $row->Price
			      . '<br>Venue:' . $row->Venue_Name
						. '<br>City:' . $row->City_Name
						. '<br>Trainer:' . $row->Trainer_Name
						. '<br>Organizer:' . $row->Organizer_Name
						. '<br>Available Tickets:' . $full
						. '<hr>' ;
			      }
?>

<a href="/CodeIgniter/index.php/SunnySports">Back to HomePage</a>
</body>
</html>
