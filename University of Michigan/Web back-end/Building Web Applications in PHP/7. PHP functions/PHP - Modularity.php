<?php
  ## Including files in PHP

  include "header.php"; ##put the file in here

  include_once "header.php"; ## pull the file in here unless it has already been pulled in before

  require "header.php"; ## pull in the file here and die if it is mixxing

  require_once "header.php"; ## Same logic as with include

  require_once("header.php"); ## Function

  ## Example
  <?php
  require "top.php";
  require "nav.php";
  ?>
  <div id="container">
  <h1>Web Applications for everybody</h1>
  .
  .
  .
  </div>
  <?php
  require "foot.php";
  ?>

?>
