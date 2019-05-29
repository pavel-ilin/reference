<?php
## Incoming data validation

strlen($var) > 0 #non-empty
is_numeric($var) ## a number
strpos($var, '@') > 0 ## an email address
filter_var($var, FILTER_VALIDATE_EMAIL) !== false ## another way to check if it is email
 ?>
