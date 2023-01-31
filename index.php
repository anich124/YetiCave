<?php


require_once('data.php');
require_once('functions.php');
require_once('helpers.php');



$link = mysqli_connect("localhost", "root", "root", "yeticave");
mysqli_set_charset($link, "utf8");
if ($link == false) {
   print("Ошибка подключения: " . mysqli_connect_error());
}
else {
   $sql_categories = "SELECT character_code, name_categories FROM categories";
   $result = mysqli_query($link, $sql_categories);
   if($result) {
      $categories = mysql_fetch_all($result, MYSQLI_ASSOC);
   } else {
      $error = mysqli_error($link);
   }
    
}


$page_content = include_template("main.php", [
    "categories" => $categories,
    "goods" => $goods
]);
    
$layout_content = include_template("layout.php", [
    "content" => $page_content,
    "categories" => $categories,
    "title" => "Главная"
]);

print($layout_content);

