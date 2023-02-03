<?php


require_once('data.php');
require_once('functions.php');
require_once('helpers.php');
require_once('init.php');
require_once('models.php');


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

$sql_lots = get_query_list_lots();

$res_lots = mysqli_query($link, $sql_lots);

if($res_lots) {
   $goods = misqli_fetch_all($res_lots, MYSQLI_ASSOC);
} else {
   $error = mysqli_error($link);
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

