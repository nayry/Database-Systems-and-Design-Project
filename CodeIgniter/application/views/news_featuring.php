<h2><?php echo $pageHeading; ?></h2>
<?php
foreach ($query_featuring->result() as $row)
			{
      echo  "<p>"
      			. '<a href="' . "/CodeIgniter/index.php/news/fulltext/"
      			. $row->id
      			. '" />'
      			. $row->heading
      			. "</a></p>";
      }
?>
