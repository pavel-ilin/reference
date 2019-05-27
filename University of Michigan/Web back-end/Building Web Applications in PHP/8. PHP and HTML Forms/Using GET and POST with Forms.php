<p>Guessing game...</p>
<form method="post">
  <p><label for="guess">Input Guess</lable>
  <input type="text" name="guess" size="40" id="guess" /></p>
  <input type="submit"/>
</form>

<pre>
  $_POST:
  <?php
  print_r($_POST)
  ?>
  $_GET:
  <?php
  print_r($_GET)
  ?>
</pre>

## GET - parameters are placed on the URL which is retrieved
## POST - The URL is retrieved and parameters are appended to the request in the HTTP connection

## POST is used when data is being created or modified
## GET is used when your are reading or parsing things
