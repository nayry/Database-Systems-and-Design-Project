<hr>
<?php
foreach ($query_listing->result() as $row)
			{
				$full = "full";
				if($row->Available_Tickets > 0){
					$full = $row->Available_Tickets;
				}
				?>
				<?php

      echo
			'<p class="well">'
			.'<a href="/CodeIgniter/index.php/SunnySports/session/'
			. $row->Session_ID . '/' . $row->Sport_ID .'">'
			.'<img src="http://localhost/CodeIgniter/image/' . $row->Session_Title . '.jpg" width="400" height="200"><br>'
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
			. '<br>' . $row->Short_Description .'<hr>'
			.	'</p>';
      }
?>

<a href="/CodeIgniter/index.php/SunnySports">Back to HomePage</a>
</body>
</html>
