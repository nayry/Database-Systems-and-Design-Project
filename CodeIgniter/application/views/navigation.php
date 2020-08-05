<a href="/CodeIgniter/index.php/news/">Home</a> |
<?php
foreach ($query_categories->result() as $row)
			{
      echo  '<a href="' . "/CodeIgniter/index.php/news/listing/"
      			. $row->id
      			. '">'
      			. $row->category
      			.'</a>'
      			. " | ";
      }
?>
<hr />
