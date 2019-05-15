<?php
  ## Some build-in functions

  echo strrev(" .dlrow olleH");
  echo str_repeat("Hip ", 2);
  echo strtoupper("hooray!");
  echo strlen("intro");
  echo "\n";

  ## Defining your own finction
  function greet() {
    print "Hello\n";
  }
  greet();

  ## Return values

  function greeting(){
    return "Hello";
  }

  print greeting() . " Pavel\n";

  ## Arguments

  function howdy($lang) {
    if ($lang == 'es') return "Hola";
    if ($lang == 'fr') return "Bonjour";
    return "Hello";
  }
  print howdy('es') . " Pavel\n";
  print howdy('fr') . " Maria\n";

  ## Optional Arguments

  function howdy($lang='es') {
    if ($lang == 'es') return "Hola";
    if ($lang == 'fr') return "Bonjour";
    return "Hello";
  }
  print howdy() . " Pavel\n";
  print howdy('fr') . " Maria\n";

  ## Call by Value

  function double($alias) {
    $alias = $alias * 2;
    return $alias;
  }
  $val = 10;
  $dval = double($val);
  echo "Value = $val Doubled = $dval\n";

  ## Call by reference

  function triple(&$realthing) {
    $realthing = $realthing * 3;
  }
  $val = 10;
  triple($val);
  echo "Triple = $val\n";
?>
