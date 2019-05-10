<?php
## Integer indices

$staff = array("Hi", "There");
echo $staff[1], "\n";

## Key value

$staff = array("name" => "Pavel", "status" => "alive");
echo $staff["status"], "\n";

## Dumping an array

$staff = array("name" => "Pavel", "status" => "alive");
echo("<pre>\n");
print_r($staff);
echo("\n</pre>\n");

## var_dump

$staff = array("name" => "Pavel", "status" => "alive");
var_dump($staff);

## var_dump and false

$thing = FALSE;
print_r($thing); ## prints nothing in case of the FALSE
var_dump($thing);

## Building up Array

$var = array();
$var[] = "Hello";
$var[] = "World";
print_r ($var);

$var = array();
$var["name"] = "Pavel";
$var["status"] = "Alive";
print_r ($var);

## looping through arrays

$staff = array("name" => "Pavel", "status" => "alive");
foreach($staff as $k => $v) {
    echo "Key=", $k," Val=", $v, "\n";
}

## loop through linear array

$staff = array("hello", "world");
foreach($staff as $k => $v) {
    echo "Key=", $k," Val=", $v, "\n";
}

## count loop

$staff = array("hello", "world");
for($i = 0; $i < count($staff); $i++) {
    echo "I=", $i, " Val=", $staff[$i], "\n";
}

## Nested arrays

$arrays = array(
    'paper' => array("paper1" => "1", "paper2" => "2"),
    'pen' => array("pen1" => "1", "pen2" => "2"),
    'mix' => array("tape" => "1", "glue" => "2")
);
echo $arrays['mix']['glue'];


?>

