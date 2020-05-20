<?php
##
$za = array();
$za ["name"] = "Chuck";
$za ["course"] = "WA4E";

if (array_key_exists('course', $za)) {
  echo ("Course exists\n");
} else {
  echo ("Course does not exists\n");
}

## Null coalesce

$za = array();
$za ["name"] = "Chack";
$za ["course"] = "WA4E";

$name = $za['name'] ?? 'not found';
$addr = $za['addr'] ?? 'not found';

echo("Name=$name\n");
echo("Addr=$addr\n");

## Count function

$za = array();
$za["name"] = "Pavel";
$za["course"] = "Transhumanism";
print "Count: " . count($za) . "\n";
if (is_array($za)) {
  echo '$za is an array' . "\n";
} else {
  echo '$za is not an array' . "\n";
}

## Sorting

$za = array();
$za["name"] = "Pavel";
$za["course"] = "Transhumanism";
$za["topic"] = "Community building";
print_r($za);
ksort($za);
print_r($za);
asort($za);
print_r($za);
sort($za);
print_r($za);

## Exploding Arrays

$inp = "This is a sentence with seven words";
$temp = explode(' ', $inp);
print_r($temp);
?>
