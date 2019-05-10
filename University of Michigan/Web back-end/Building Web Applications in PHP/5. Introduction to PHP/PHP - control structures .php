<?php

## if statement

    $ans = 42;
    if ($ans == 42) {
        print "Correct";
    }
    else {
        print "Wrong";
    }


## multiple conditional statement
    $x = 7;
    if ($x < 2) {
        print "Small\n";
    }
    elseif ($x < 10) {
        print "Medium \n";
    }
    else {
        print "Large\n";
    }
    print "All done \n";

## while loop

    $fuel = 10;
    while ($fuel > 1) {
        print "Vroom vroom \n";
        $fuel = $fuel - 1;
    }
## do + while loop

    $count = 1;
    do {
        echo "$count times 5 is" . $count * 5;
        echo "\n";
    }
    while (++ $count <=5);

## for loop

    for ($count=1; $count <=6; $count++) {
        echo "$count times 6 is " . $count * 6;
        echo "\n";
}

## break out of the loop

    for ($count=1; $count <=600; $count++) {
        if ($count == 5) break;
        echo "Count: $count\n";
    }

## continue loop

    for ($count=1; $count <=10; $count++) {
        if ($count % 2) continue;
        echo "Count: $count\n";
    }
?>

