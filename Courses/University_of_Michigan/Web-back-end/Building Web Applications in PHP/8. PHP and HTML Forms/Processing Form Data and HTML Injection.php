<?php
  $oldguess = isset($_POST['guess']) ? $_POST['guess'] : '';
?>

<p> Guessing game...</p>
<form method="post">
  <p><lable for="guess">Input Guess</lable>
  <input type="text" name="guess" id="guess" size="40" value="<?= $oldguess ?>"/></p>
  <input type="submit"/>
</form>

## Ho to cover potential vulnerability = htmlentities

<?php
  $oldguess = isset($_POST['guess']) ? $_POST['guess'] : '';
?>

<p> Guessing game...</p>
<form method="post">
  <p><lable for="guess">Input Guess</lable>
  <input type="text" name="guess" id="guess" size="40" value="<?= htmlentities($oldguess) ?>"/></p>
  <input type="submit"/>
</form>
