## text
<input type="text" name="account" id="someid"> ## name here is a key value which we going to look in arrays at server database
## password
<input type="password" name="pw" id="someid">
## radio button
<input type="radio" name="when" value="am">
<input type="radio" name="when" value="pm" checked>
$_POST:
<?php Array ([account] => Beth, [pw] => 123, [nick] => BK, [when] => pm)?>

## check box
<input type="checkbox" name="class1" value="si502" checked>
<input type="checkbox" name="class2" value="si505">
<input type="checkbox" name="class3">
$_POST:
<?php Array ([class1] => si502, [class2] => si505, [class3] => on)?>

## select/drop-down
<select name"soda" id="inp06">
  <option value="0">-- Please select --</option>
  <option value="1">Coke</option>
  <option value="2">Pepsi</option>
  <option value="3">Water</option>
  <option value="4">Lemonaid</option>
  <option value="5">Mango juice</option>
</select>

$_POST:
<?php Array ([class] => si502, [soda] => 0, [snack] => peanuts)?>

## textarea
<textarea rows="10" cols="40" name="about">
  I love rock&roll
</textarea>
$_POST:
<?php Array ([about] => I love rock&roll, [dopost] => Submit)?>

## Multiple checkbox
<select multiple="multiple" name="code[]">
  <option value="python"></option>
  <option value="php"></option>
  <option value="css"></option>
  <option value="html"></option>
</select>
$_POST:
<?php Array ([code] => Array([0] => css, [1] => html, [2] => php, [3] => python), [dopost] => Submit)?>

## Submit button
<input type="submit" name="dopost" value="Submit"/>
<input type="button" onclick="location.href='http://ww.wa4e.com/'; return false;" value="Escape">
$_POST:
<?php Array ([dopost] => Submit)?>
