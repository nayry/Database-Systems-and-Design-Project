<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>booking</title>
  </head>
  <body>
    <?php
    echo '
    <form action="book" method="post" align="center" >
    <p>  Your first name: <input type="text" name="first_name" value=""></p>
    <p>  Your last name: <input type="text" name="last_name" value=""></p>
    <p>  Your email address: <input type="text" name="email" value=""></p>
    <p>  Your phone number: <input type="text" name="mobile" value=""></p>
      <input type="hidden" name="session_id" size="1dp" value="' . $_POST["session_id"]
      .'">
      <input type="submit" value="book">
    </form>';
     ?>
<a href="/CodeIgniter/index.php/SunnySports">Back to HomePage</a>

  </body>
</html>
