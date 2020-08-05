<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title><?php echo $pageTitle; ?></title>
</head>

<body>
<h2><?php echo $pageHeading; ?></h2>
<?php
foreach ($query_categories->result() as $row)
			{
      echo  "<p>"
      			. '<a href="' . "/CodeIgniter/index.php/news/listing/"
      			. $row->id
      			. '" />'
      			. $row->category
      			. "</p>";
      }
?>
</body>
</html>
