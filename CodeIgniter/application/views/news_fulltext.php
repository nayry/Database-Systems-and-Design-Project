<?php
foreach ($query_fulltext->result() as $row)
			{
      echo "<h2>" . $row->heading . "</h2>";
      echo  "<p>"
      		. $row->fulltext
      		. "</p>";
      }
?>
