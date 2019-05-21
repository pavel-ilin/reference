<?php
  ## Normal scope (isolated)
  function tryzap() {
    $var = 100;
  }
  $var = 10;
  tryzap();
  echo "TryZap = $val\n";

  ## Global Scope (shared)

  function dozap() {
    global $val;
    $val = 100;
  }

  $val = 10;
  dozap();
  echo "DoZap = $val\n";

  ## Coping with Missing bits

  if (function_exists("array_combine")) {
    echo "Function exists";
  } else {
    echo "Function does not exist";
  }
  ## System configuration function

  phpinfo();


?>
