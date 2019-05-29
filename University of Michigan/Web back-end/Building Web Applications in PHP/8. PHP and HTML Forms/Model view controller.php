<?php
## Model of data flow
## User input - manipulation data - updates - present results
## logic on top of the file (no html here)
## collecting the input and presentation of the results in html part of the file (no database here)
?>


<?php
   $oldguess = '';
   $message = false;
   if (isset($_GET['guess'])) {
     olfguess = $_POST['guess'] + 0;
     if ($oldguess == 42) {
       $message = "That's right!"
     } else if ($oldguess > 42) {
       $message = "Too low";
     } else if ($oldguess < 42) {
       $message = "Too hight";
     }
 }
?>

 <html>
 <head>
 <title>Guessing Game by Pavel Ilin</title>
 </head>
 <body>
 <h1>Welcome to my guessing game</h1>
 <?php
   if ($message !== false) {
     echo("<p>$message</p>\n");
   }
 ?>
 <form method="post">
   <p><lable for="guess">Input Guess</lable>
     <input type="text" name="guess" id="guess" size="40" value="<?= htmlentities($oldguess)?>"/>
   </p>
 </form>
 </body>
 </html>
