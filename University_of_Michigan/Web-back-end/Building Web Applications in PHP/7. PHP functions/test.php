
<!DOCTYPE html>
<head><title>Pavel Ilin MD5 Cracker</title></head>
<body>
<h1>MD5 cracker</h1>
<p>This application takes an MD5 hash
of a two-character lower case string and
attempts to hash all two-character combinations
to determine the original two characters.</p>
<pre>
Debug Output:
<?php
// If there is no parameter, this code is all skipped
if (isset($_GET['md5']) ) {
    $time_pre = microtime(true);
    $md5 = $_GET['md5'];
    $txt = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    $attempts = 15;
    $checks = 0;
    $checked  = "Not found";
    $break_check = "false";



    // Outer loop go go through the alphabet for the
    // first position in our "possible" pre-hash
    // text
    function test ($a, $b){
              $c = $a - $b;
              return $c;
}
    for($a=0; $a<strlen($txt); $a++ ) {
        $ch1 = $txt[$a];   // The first of two characters
        if ($checks > 0 && $break_check == "true"){print "\n$check $concat\n";}
        //breaker("true");
        if ($break_check == "true"){break;}
        // Our inner loop Not the use of new variables
        // $j and $ch2
        for($b=0; $b<strlen($txt); $b++ ) {
            $ch2 = $txt[$b];  // Our second character
            if ($break_check == "true"){break;}
            for($c=0; $c<strlen($txt); $c++ ) {
                $ch3 = $txt[$c];  // Our second character
                if ($break_check == "true"){break;}
                for($d=0; $d<strlen($txt); $d++ ) {
                    $ch4 = $txt[$d];  // Our second character

                    $try = $ch1.$ch2.$ch3.$ch4;
                    $checks = $checks + 1;
                    // Run the hash and then check to see if we match
                    $check = hash('md5', $try);
                    if ( $check == $md5 ) {
                        $checked = $try;
                        $break_check = "true";
                        break;   // Exit the inner loop
                    }

                    // Debug output until $show hits 0
                    if ( $attempts > 0 ) {
                        print "$check $try\n";
                        $attempts = $attempts + 1;

                      $time_current = microtime(true);
                      //$time_elapsed = $time_current - $time_start;
                      $time_elapsed = test($time_current, $time_pre);
                      $time_rounded = round($time_elapsed,1);
                      $time_calc = $time_elapsed - $time_rounded;
                      if ($time_calc > 0.009999 && $time_calc < 0.010001){
                         print "$check $concat - total checks: $total_checks - total rounded time: $time_rounded - elapsed time: $time_elapsed - calculated time: $time_calc \n";
                    }
                }
            }
          }
        }
      }
            // Concatenate the two characters together to
            // form the "possible" pre-hash text




    $time_post = microtime(true);
    $time = $time_post-$time_pre;
    print "Elapsed time: $time\n";
    print "Attempts: $checks \n";
}
?>
</pre>
<!-- Use the very short syntax and call htmlentities() -->
<p>PIN: <?= htmlentities($checked); ?></p>
<form>
<input type="text" name="md5" size="60" />
<input type="submit" value="Crack MD5"/>
</form>
<ul>
<li><a href="index.php">Reset</a></li>
<li><a href="md5.php">MD5 Encoder</a></li>
<li><a href="makecode.php">MD5 Code Maker</a></li>
<li><a
href="https://github.com/csev/wa4e/tree/master/code/crack"
target="_blank">Source code for this application</a></li>
</ul>
</body>
</html>
